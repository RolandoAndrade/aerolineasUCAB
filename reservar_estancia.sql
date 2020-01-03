CREATE OR REPLACE PACKAGE RESERVACION_HOSPEDAJE IS
    PROCEDURE reservar_hospedaje;
    PROCEDURE seleccionar_fecha(fecha_inicio IN OUT TIMESTAMP, fecha_fin IN OUT TIMESTAMP);
    FUNCTION ubicacion_aleatoria RETURN LUGAR;
    FUNCTION reservar_hospedaje_desde(usuarioid INTEGER, reservaid INTEGER, ubicacion LUGAR) RETURN BOOLEAN;
    FUNCTION buscar_habitacion(fechai TIMESTAMP, fechaf TIMESTAMP, ubicacion LUGAR) RETURN HABITACION%RowType;
    FUNCTION buscar_apartamento(fechai TIMESTAMP, fechaf TIMESTAMP, ubicacion LUGAR) RETURN APARTAMENTO%RowType;
    PROCEDURE finalizar_reserva(reservaid INTEGER);
    PROCEDURE cancelar_reserva(reservaid INTEGER);
    PROCEDURE puntuar(reservaid INTEGER);
    PROCEDURE definir_huespedes(usuarioid INTEGER, reservaid INTEGER);
END;
/
CREATE OR REPLACE PACKAGE BODY RESERVACION_HOSPEDAJE IS

    PROCEDURE seleccionar_fecha(fecha_inicio IN OUT TIMESTAMP, fecha_fin IN OUT TIMESTAMP)
    IS
        axfecha TIMESTAMP;
    BEGIN
        dbms_output.put_line('*Fecha de inicio y fin de la reserva');
        fecha_inicio:=random_fecha(SYSTIMESTAMP-300,SYSTIMESTAMP+50);
        fecha_fin:=random_fecha(SYSTIMESTAMP-300,SYSTIMESTAMP+50);
        IF NOT RESERVA.validar_fecha(fecha_inicio,fecha_fin) THEN
            axfecha := fecha_inicio;
            fecha_inicio := fecha_fin;
            fecha_fin := axfecha;
        END IF;
    END;
    
    FUNCTION ubicacion_aleatoria RETURN LUGAR
    IS
    BEGIN
        dbms_output.put_line('*Eligiendo un sitio de recogida y devolución');
        IF aceptar_o_rechazar(0.5) THEN
            FOR I IN (SELECT * FROM HOTEL ORDER BY dbms_random.value)
            LOOP
                RETURN I.lugar_hotel;
            END LOOP;
        ELSE
            FOR I IN (SELECT * FROM APARTAMENTO ORDER BY dbms_random.value)
            LOOP
                RETURN I.lugar_apartamento;
            END LOOP;
        END IF;
    END;

    PROCEDURE finalizar_reserva(reservaid INTEGER)
    IS
        reserv RESERVA_ESTANCIA%RowType;
    BEGIN
        dbms_output.put_line('*Determinando estado de la reserva a la fecha actual');
        SELECT * INTO reserv FROM RESERVA_ESTANCIA WHERE id_reserva_estancia = reservaid; 
        IF reserv.reserva_estacia.fecha_fin < SYSTIMESTAMP THEN
            dbms_output.put_line('  i: La reserva ha terminado');
            UPDATE RESERVA_ESTANCIA R
            SET R.reserva_estacia.estado ='finalizada'
            WHERE R.id_reserva_estancia = reservaid;
            puntuar(reservaid);
        ELSE
            dbms_output.put_line('  i: La reserva no ha terminado');
        END IF;    
    END;
    
    PROCEDURE cancelar_reserva(reservaid INTEGER)
    IS
    BEGIN
        dbms_output.put_line('******Cancelando la reserva del hospedaje******');
        UPDATE RESERVA_ESTANCIA R
        SET R.reserva_estacia.estado ='cancelada'
        WHERE R.id_reserva_estancia = reservaid;
    END;
    
    PROCEDURE puntuar(reservaid INTEGER)
    IS
        puntua INTEGER;
    BEGIN
        puntua := dbms_random.value*9+1;
        UPDATE RESERVA_ESTANCIA
        SET puntuacion = puntua
        WHERE id_reserva_estancia = reservaid;
        dbms_output.put_line('  i: Se asignó una puntuación de '||puntua);
    END;
    
    PROCEDURE definir_huespedes(usuarioid INTEGER, reservaid INTEGER)
    IS
        adultos INTEGER;
        ninos INTEGER;
    BEGIN
        adultos := (dbms_random.value+1)*3;
        ninos := (dbms_random.value)*6;
        dbms_output.put_line('*Definiendo huéspedes');
        dbms_output.put_line('  q: ¿Cuántos adultos?');
        dbms_output.put_line('  r: '||adultos);
        dbms_output.put_line('  q: ¿Cuántos niños?');
        dbms_output.put_line('  r: '||ninos);
        INSERT INTO HUESPED VALUES (id_huesped.nextval, adultos, 'adultos',usuarioid,reservaid);
        IF ninos>0 THEN
            INSERT INTO HUESPED VALUES (id_huesped.nextval, ninos, 'niños',usuarioid,reservaid);
        END IF;    
    END;
    
    FUNCTION buscar_habitacion(fechai TIMESTAMP, fechaf TIMESTAMP, ubicacion LUGAR) RETURN HABITACION%RowType
    IS
    BEGIN
        dbms_output.put_line('  -Buscando habitaciones');
        FOR I IN (SELECT H.* FROM HABITACION H, HOTEL O
        WHERE H.hotel_id = O.id_hotel AND O.lugar_hotel.pais = ubicacion.pais AND 
        chocaConReservasHabitacion(fechai,fechaf,id_habitacion)=0)
        LOOP
            RETURN I;
        END LOOP;
        RETURN NULL;
    END;
    
    FUNCTION buscar_apartamento(fechai TIMESTAMP, fechaf TIMESTAMP, ubicacion LUGAR) RETURN APARTAMENTO%RowType
    IS
    BEGIN
        dbms_output.put_line('  -Buscando apartamentos');
        FOR I IN (SELECT A.* FROM APARTAMENTO A
        WHERE A.lugar_apartamento.pais = ubicacion.pais AND 
        chocaConReservasApartamento(fechai,fechaf,id_apartamento)=0)
        LOOP
            RETURN I;
        END LOOP;
        RETURN NULL;
    END;
    
    FUNCTION reservar_hospedaje_desde(usuarioid INTEGER, reservaid INTEGER, ubicacion LUGAR) RETURN BOOLEAN
    IS
        fecha_inicio TIMESTAMP;
        fecha_fin TIMESTAMP;
        reserv RESERVA;
        apart APARTAMENTO%RowType;
        habit HABITACION%RowType;
    BEGIN
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
        dbms_output.put_line('*Reservando estancia en '||ubicacion.pais);
        apart := buscar_apartamento(fecha_inicio,fecha_fin,ubicacion);
        habit := buscar_habitacion(fecha_inicio,fecha_fin,ubicacion);
        IF apart.id_apartamento IS NULL AND habit.id_habitacion IS NULL THEN
            dbms_output.put_line('  e: No hay estancia disponible para la fecha indicada');
            RETURN FALSE;
        END IF;
        IF apart.id_apartamento IS NOT NULL AND habit.id_habitacion IS NOT NULL THEN
            dbms_output.put_line('  q: ¿Desea un apartamento o un hotel?');
            IF aceptar_o_rechazar(0.5) THEN
                dbms_output.put_line('  r: Hotel');
                apart:=null;
            ELSE
                dbms_output.put_line('  r: Apartamento');
                habit:=null;
            END IF;
        END IF;
        IF apart.id_apartamento IS NOT NULL THEN

            dbms_output.put_line('  i: Se procede a reservar un apartamento');
            INSERT INTO RESERVA_ESTANCIA VALUES(id_reserva_estancia.nextval,
            RESERVA(fecha_inicio,fecha_fin,apart.precio,'sin pagar'),
            0,reservaid,apart.id_apartamento, null);
        ELSE
            dbms_output.put_line('  i: Se procede a reservar una habitación en un hotel');
            INSERT INTO RESERVA_ESTANCIA VALUES(id_reserva_estancia.nextval,
            RESERVA(fecha_inicio,fecha_fin,habit.precio,'sin pagar'),
            0,reservaid,null, habit.id_habitacion);
        END IF;
        definir_huespedes(usuarioid, id_reserva_estancia.currval);
        RETURN TRUE;
    END;
    
    PROCEDURE reservar_hospedaje
    IS
        usuarioid INTEGER;
        ubicacion LUGAR;
        reservaid INTEGER;
        monto UNIDAD;
    BEGIN
        dbms_output.put_line('******************************');
        dbms_output.put_line('*                            *');
        dbms_output.put_line('*   RESERVACION DE ESTANCIA  *');
        dbms_output.put_line('*                            *');
        dbms_output.put_line('******************************');
        FOR I IN 1..50
        LOOP
            usuarioid := getUsuarioAleatorio();
            dbms_output.put_line('----------EL USUARIO '||usuarioid||' DESEA RESERVAR UNA ESTANCIA----------');
            ubicacion := ubicacion_aleatoria;
            IF reservar_hospedaje_desde(usuarioid, null, ubicacion) THEN
                reservaid:=id_reserva_estancia.currval;
                PAGAR_RESERVA.pagar(usuarioid,reservaid,'estancia');
                dbms_output.put_line('q: ¿Desea cancelar la reserva?');
                IF aceptar_o_rechazar(0.05) THEN
                    dbms_output.put_line('r: Sí');
                    cancelar_reserva(reservaid);
                    SELECT R.reserva_estacia.monto INTO monto 
                    FROM RESERVA_ESTANCIA R 
                    WHERE R.id_reserva_estancia = reservaid;
                    devolverdinero(usuarioid,monto);
                ELSE
                    dbms_output.put_line('r: No');
                    finalizar_reserva(reservaid);
                END IF;
            END IF;
        END LOOP;
    END;
END;