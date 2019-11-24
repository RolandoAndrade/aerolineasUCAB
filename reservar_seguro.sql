CREATE OR REPLACE PACKAGE RESERVACION_SEGURO IS
    PROCEDURE reservar_seguro(reservaid INTEGER);
    PROCEDURE subir_precio(seguroid INTEGER, monto UNIDAD);
    PROCEDURE agregar_servicios(seguroid INTEGER);
    FUNCTION aseguradora_al_azar RETURN INTEGER;
END;
/

CREATE OR REPLACE PACKAGE BODY RESERVACION_SEGURO IS

    
    FUNCTION aseguradora_al_azar RETURN INTEGER
    IS
    BEGIN
        dbms_output.put_line('*Asignando aseguradora');
        FOR I IN (SELECT * FROM ASEGURADORA ORDER BY dbms_random.value)
        LOOP
            RETURN I.id_aseguradora;
        END LOOP;
        RETURN -1;
    END;
    
    PROCEDURE subir_precio(seguroid INTEGER, monto UNIDAD)
    IS
    BEGIN
        UPDATE SEGURO S
        SET S.reserva_seguro.monto.valor = S.reserva_seguro.monto.valor + monto.valor
        WHERE S.id_seguro = seguroid;
    END;
    
    PROCEDURE agregar_servicios(seguroid INTEGER)
    IS
        iter NUMBER;
    BEGIN
        dbms_output.put_line('*Añadiendo paquete de servicios');
        iter := (dbms_random.value + 5)*2;
        FOR I IN (SELECT * FROM SERVICIO ORDER BY dbms_random.value)
        LOOP
            INSERT INTO SEGURO_SERVICIO VALUES(id_seguro_servicio.nextval,seguroid,I.id_servicio);
            subir_precio(seguroid,I.precio);
            iter:=iter-1;
            EXIT WHEN iter<0;
        END LOOP;
    END;
    
    PROCEDURE reservar_seguro(reservaid INTEGER)
    IS
        reserv RESERVA_VUELO%RowType;
        fechafin TIMESTAMP;
    BEGIN
        dbms_output.put_line('******************************');
        dbms_output.put_line('*      RESERVANDO SEGURO     *');
        dbms_output.put_line('******************************');
        SELECT * INTO reserv FROM RESERVA_VUELO WHERE id_reserva_vuelo = reservaid;
        SELECT fecha_salida INTO fechafin FROM VUELO WHERE id_vuelo = reserv.vuelo_id;
        INSERT INTO SEGURO VALUES(id_seguro.nextval,
            RESERVA(reserv.reserva_vuelo.fecha_inicio,fechafin,UNIDAD(0,'dolar','monetaria','usd'),'sin pagar'),
            aseguradora_al_azar,reservaid);
        agregar_servicios(id_seguro.currval);
    END;
END;