CREATE OR REPLACE PACKAGE RESERVACION_HOSPEDAJE IS
    PROCEDURE reservar_hospedaje;
    PROCEDURE seleccionar_fecha(fecha_inicio IN OUT TIMESTAMP, fecha_fin IN OUT TIMESTAMP);
    FUNCTION ubicacion_aleatoria RETURN INTEGER;
    FUNCTION reservar_hospedaje_desde(usuarioid INTEGER, reservaid INTEGER, ubica LUGAR) RETURN BOOLEAN;
    PROCEDURE finalizar_reserva(reservaid INTEGER);
    PROCEDURE cancelar_reserva(reservaid INTEGER);
    PROCEDURE puntuar(carroid INTEGER);
END;
/
CREATE OR REPLACE PACKAGE BODY RESERVACION_HOSPEDAJE IS
    PROCEDURE reservar_hospedaje
    IS
    BEGIN
        NULL;
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
    
    FUNCTION ubicacion_aleatoria RETURN INTEGER
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
    
    FUNCTION reservar_hospedaje_desde(usuarioid INTEGER, reservaid INTEGER, ubica LUGAR) RETURN BOOLEAN
    IS
    BEGIN
        NULL;
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
    
    PROCEDURE puntuar(carroid INTEGER)
    IS
    BEGIN
        NULL;
    END;
END;