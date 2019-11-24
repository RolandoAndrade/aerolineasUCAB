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
        fecha_inicio:=random_fecha(SYSTIMESTAMP-300,SYSTIMESTAMP+300);
        fecha_fin:=random_fecha(SYSTIMESTAMP-300,SYSTIMESTAMP+300);
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
    BEGIN
        NULL;
    END;
    
    PROCEDURE cancelar_reserva(reservaid INTEGER)
    IS
    BEGIN
        NULL;
    END;
    
    PROCEDURE puntuar(reservaid INTEGER)
    IS
    BEGIN
        NULL;
    END;
    
    PROCEDURE definir_huespedes(usuarioid INTEGER, reservaid INTEGER)
    IS
        adultos INTEGER;
        ninos INTEGER;
    BEGIN
        adultos := (dbms_random.value+1)*6;
        ninos := (dbms_random.value)*6;
        dbms_output.put_line('*Definiendo huéspedes');
        dbms_output.put_line('  q: ¿Cuántos adultos?');
        dbms_output.put_line('  r: '||adultos);
        dbms_output.put_line('  q: ¿Cuántos niños?');
        dbms_output.put_line('  r: '||ninos);
        INSERT INTO HUESPED VALUES
    END;
    
    FUNCTION buscar_habitacion(fechai TIMESTAMP, fechaf TIMESTAMP, ubicacion LUGAR) RETURN HABITACION%RowType
    IS
    BEGIN
        dbms_output.put_line('  -Buscando habitaciones');
        FOR I IN (SELECT H.* FROM HABITACION H, RESERVA_ESTANCIA R, HOTEL O
        WHERE R.habitacion_id = H.id_habitacion AND 
        H.hotel_id = O.id_hotel AND O.lugar_hotel.pais = ubicacion.pais AND 
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
        FOR I IN (SELECT A.* FROM APARTAMENTO A, RESERVA_ESTANCIA R
        WHERE R.apartamento_id = A.id_apartamento AND 
        A.lugar_apartamento.pais = ubicacion.pais AND 
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
        IF apart IS NULL AND habit IS NULL THEN
            dbms_output.put_line('  e: No hay estancia disponible para la fecha indicada');
            RETURN FALSE;
        END IF;
        IF apart IS NOT NULL AND habit IS NOT NULL THEN
            dbms_output.put_line('  q: ¿Desea un apartamento o un hotel?');
            IF aceptar_o_rechazar(0.5)<0.5 THEN
                dbms_output.put_line('  r: Hotel');
                apart:=null;
            ELSE
                dbms_output.put_line('  r: Apartamento');
                habit:=null;
            END IF;
        END IF;
        IF apart IS NOT NULL THEN
            dbms_output.put_line('  i: Se procede a reservar un apartamento');
            INSERT INTO RESERVA_ESTANCIA VALUES(id_reserva_estancia.nextval,
            RESERVA(fecha_inicio,fecha_fin,apart.precio,'sin pagar'),
            0,apart.id_apartamento, null);
        ELSE
            dbms_output.put_line('  i: Se procede a reservar una habitación en un hotel');
            INSERT INTO RESERVA_ESTANCIA VALUES(id_reserva_estancia.nextval,
            RESERVA(fecha_inicio,fecha_fin,habit.precio,'sin pagar'),
            0,null, habit.id_habitacion);
        END IF;
    END;
    
    PROCEDURE reservar_hospedaje
    IS
        usuarioid INTEGER;
        ubicacion LUGAR;
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
                NULL;
            END IF;
        END LOOP;
    END;
END;