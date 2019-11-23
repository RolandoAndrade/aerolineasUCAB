CREATE OR REPLACE PACKAGE RESERVACION_CARRO IS
    PROCEDURE reservar_carro;
    PROCEDURE seleccionar_fecha(fecha_inicio IN OUT TIMESTAMP, fecha_fin IN OUT TIMESTAMP);
    PROCEDURE recogida_devolucion(recogida IN OUT LUGAR, devolucion IN OUT LUGAR);
    FUNCTION reservar_carro_desde(usuarioid INTEGER, reservaid INTEGER, recogida LUGAR, devolucion LUGAR) RETURN BOOLEAN;
    PROCEDURE finalizar_reserva(reservaid INTEGER);
    PROCEDURE cancelar_reserva(reservaid INTEGER);
    PROCEDURE ajuste_recorrido(carroid INTEGER);
END;
/
CREATE OR REPLACE PACKAGE BODY RESERVACION_CARRO IS
    
    PROCEDURE ajuste_recorrido(carroid INTEGER)
    IS
    BEGIN
        dbms_output.put_line('*Ajustando recorrido del carro');
        UPDATE CARRO C
        SET C.recorrido.valor = C.recorrido.valor + dbms_random.value*1500
        WHERE C.id_carro = carroid;
    END;
    
    PROCEDURE seleccionar_fecha(fecha_inicio IN OUT TIMESTAMP, fecha_fin IN OUT TIMESTAMP)
    IS
        axfecha TIMESTAMP;
    BEGIN
        dbms_output.put_line('*Fecha de inicio y fin de la reserva');
        fecha_inicio:=random_fecha(SYSTIMESTAMP-300,SYSTIMESTAMP+300);
        fecha_fin:=random_fecha(SYSTIMESTAMP-300,SYSTIMESTAMP+300);
        IF NOT RESERVA.validar_fecha(fecha_inicio,fecha_fin) THEN
            axfecha := fecha_inicio;
            fecha_inicio := fecha_fin;
            fecha_fin := axfecha;
        END IF;
    END;

    PROCEDURE recogida_devolucion(recogida IN OUT LUGAR, devolucion IN OUT LUGAR)
    IS
    BEGIN
        dbms_output.put_line('*Eligiendo un sitio de recogida y devolución');
        FOR I IN (SELECT * FROM CARRO ORDER BY dbms_random.value)
        LOOP
            recogida := I.lugar_carro;
            EXIT;
        END LOOP;
        FOR I IN (SELECT * FROM CARRO C WHERE C.lugar_carro.ciudad = recogida.ciudad
        ORDER BY dbms_random.value)
        LOOP
            devolucion := I.lugar_carro;
            EXIT;
        END LOOP;
    END;

    FUNCTION reservar_carro_desde(usuarioid INTEGER, reservaid INTEGER, recogida LUGAR, devolucion LUGAR) RETURN BOOLEAN
    IS
        carroid INTEGER;
        fecha_inicio TIMESTAMP;
        fecha_fin TIMESTAMP;
        reserv RESERVA;
    BEGIN
        carroid := NULL;
        IF reservaid IS NULL THEN
            seleccionar_fecha(fecha_inicio,fecha_fin);
        ELSE
            SELECT R.reserva_vuelo INTO reserv FROM RESERVA_VUELO R WHERE id_reserva_vuelo = reservaid;
            fecha_inicio:= reserv.fecha_inicio;
            IF reserv.fecha_fin IS NULL THEN
                fecha_fin:= reserv.fecha_inicio+150;
            ELSE
                fecha_fin:= reserv.fecha_fin;
            END IF;
        END IF;
        dbms_output.put_line('*Reservando carro');
        FOR I IN (SELECT * FROM CARRO C WHERE C.lugar_carro.nombre = recogida.nombre 
        AND chocaconreservascarro(fecha_inicio,id_carro) = 0
        ORDER BY dbms_random.value)
        LOOP
            carroid := I.id_carro;
            INSERT INTO RESERVA_CARRO VALUES(id_reserva_carro.nextval,
            RESERVA(fecha_inicio,fecha_fin,I.precio,'sin pagar'),
            recogida, devolucion, carroid,usuarioid,reservaid);
            dbms_output.put_line('  i: Se logró reservar un carro con éxito desde '||fecha_inicio||' hasta '||fecha_fin);
            RETURN TRUE;
        END LOOP;
        dbms_output.put_line('  e: No hay carros disponibles para esta fecha');
        RETURN FALSE;
    END;
    
    PROCEDURE cancelar_reserva(reservaid INTEGER)
    IS
    BEGIN
        dbms_output.put_line('******Cancelando la reserva del carro******');
        UPDATE RESERVA_CARRO R
        SET R.reserva_carro.estado ='cancelada'
        WHERE R.id_reserva_carro = reservaid;
    END;
    
    PROCEDURE finalizar_reserva(reservaid INTEGER)
    IS
        reserv RESERVA_CARRO%RowType;
    BEGIN
        dbms_output.put_line('*Determinando estado de la reserva a la fecha actual');
        SELECT * INTO reserv FROM RESERVA_CARRO WHERE id_reserva_carro = reservaid; 
        IF reserv.reserva_carro.fecha_fin < SYSTIMESTAMP THEN
            dbms_output.put_line('  i: La reserva a terminado');
            UPDATE RESERVA_CARRO R
            SET R.reserva_carro.estado ='finalizada'
            WHERE R.id_reserva_carro = reservaid;
            ajuste_recorrido(reserv.carro_id);
        ELSE
            dbms_output.put_line('  i: La reserva no ha terminado');
        END IF;    
    END;

    PROCEDURE reservar_carro
    IS
        usuarioid INTEGER;
        recogida LUGAR;
        devolucion LUGAR;
        monto UNIDAD;
        reservaid INTEGER;
    BEGIN
        dbms_output.put_line('******************************');
        dbms_output.put_line('*                            *');
        dbms_output.put_line('*   RESERVACION DE CARROS    *');
        dbms_output.put_line('*                            *');
        dbms_output.put_line('******************************');
        FOR I IN 1..50
        LOOP
            usuarioid := getUsuarioAleatorio();
            dbms_output.put_line('----------EL USUARIO '||usuarioid||' DESEA RESERVAR UN CARRO----------');
            recogida_devolucion(recogida, devolucion);
            IF reservar_carro_desde(usuarioid, null, recogida,devolucion) THEN
                reservaid:=id_reserva_carro.currval;
                PAGAR_RESERVA.pagar(usuarioid,reservaid,'carro');
                
                dbms_output.put_line('q: ¿Desea cancelar la reserva?');
                IF aceptar_o_rechazar(0.05) THEN
                    dbms_output.put_line('r: Sí');
                    cancelar_reserva(reservaid);
                    SELECT R.reserva_carro.monto INTO monto 
                    FROM RESERVA_CARRO R 
                    WHERE R.id_reserva_carro = reservaid;
                    devolverdinero(usuarioid,monto);
                ELSE
                    dbms_output.put_line('r: No');
                    finalizar_reserva(reservaid);
                END IF;
            END IF;
        END LOOP;
    END;
END;
--EXEC RESERVACION_CARRO.reservar_carro;

--EXEC RESERVACION_CARRO.reservar_carro;




