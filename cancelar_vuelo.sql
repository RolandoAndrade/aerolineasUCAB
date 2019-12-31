CREATE OR REPLACE PACKAGE CAMBIAR_ESTADOS IS
    PROCEDURE estadoVuelo;
    FUNCTION pasajeros_suficientes(vueloid INTEGER) RETURN BOOLEAN;
    PROCEDURE cancelar_vuelo(vueloid INTEGER);
    PROCEDURE cancelar_reservas_vuelo(vueloid INTEGER);
    PROCEDURE completar_vuelo(vueloid INTEGER);
    PROCEDURE completar_reservas_vuelo(vueloid INTEGER);
    PROCEDURE arrancar_vuelo(vueloid INTEGER);
    PROCEDURE abordar_vuelo(vueloid INTEGER);
END;
/
CREATE OR REPLACE PACKAGE BODY CAMBIAR_ESTADOS AS
    
    PROCEDURE abordar_vuelo(vueloid INTEGER)
    IS
    BEGIN
        dbms_output.put_line('*El vuelo abordando');
        UPDATE VUELO V
        SET estado = 'abordando'
        WHERE id_vuelo = vueloid;
    END;
    
    PROCEDURE arrancar_vuelo(vueloid INTEGER)
    IS
    BEGIN
        dbms_output.put_line('*El vuelo debería estar en progreso. Revisando...');
        IF NOT pasajeros_suficientes(vueloid) THEN
            dbms_output.put_line('*El vuelo está restrasado por falta de pasajeros');
            UPDATE VUELO V
            SET estado = 'atrasado'
            WHERE id_vuelo = vueloid;
        ELSIF aceptar_o_rechazar(0.05) THEN
            dbms_output.put_line('*El vuelo está restrasado por razones meteorológicas');
            UPDATE VUELO V
            SET estado = 'atrasado'
            WHERE id_vuelo = vueloid;
        ELSE
            dbms_output.put_line('*El vuelo está en progreso');
            UPDATE VUELO V
            SET estado = 'en progreso',
            fecha_salida_real = fecha_salida + dbms_random.value/24
            WHERE id_vuelo = vueloid;
        END IF;
    END;
    
    PROCEDURE completar_vuelo(vueloid INTEGER)
    IS
    BEGIN
        dbms_output.put_line('*El vuelo se completó de manera exitosa');
        UPDATE VUELO V
        SET estado = 'completado',
        fecha_salida_real = fecha_salida + dbms_random.value/24,
        fecha_llegada_real = fecha_salida + dbms_random.value/24 + V.duracion.valor/24
        WHERE id_vuelo = vueloid;
    END;

    PROCEDURE completar_reservas_vuelo(vueloid INTEGER)
    IS
    BEGIN
        dbms_output.put_line('*Completando las reservas asociadas al vuelo');
        UPDATE RESERVA_VUELO R
        SET R.reserva_vuelo.estado = 'completado'
        WHERE vuelo_id = vueloid;
        FOR I IN (SELECT * FROM RESERVA_VUELO WHERE vuelo_id = vueloid)
        LOOP
            UPDATE SEGURO S
            SET S.reserva_seguro.estado = 'completado'
            WHERE reservavuelo_id = I.id_reserva_vuelo;
        END LOOP;
    END;
    
    PROCEDURE cancelar_reservas_vuelo(vueloid INTEGER)
    IS
    BEGIN
        dbms_output.put_line('*Cancelando las reservas asociadas al vuelo');
        FOR I IN (SELECT * FROM RESERVA_VUELO WHERE vuelo_id = vueloid)
        LOOP
            RESERVACION_VUELOS.cancelar_reserva(I.id_reserva_vuelo,I.usuario_id);
        END LOOP;
    END;

    PROCEDURE cancelar_vuelo(vueloid INTEGER)
    IS
    BEGIN
        dbms_output.put_line('*Cancelando el vuelo');
        cancelar_reservas_vuelo(vueloid);
        UPDATE VUELO SET estado = 'cancelado' WHERE id_vuelo = vueloid;
    END;

    FUNCTION pasajeros_suficientes(vueloid INTEGER) RETURN BOOLEAN
    IS
        reservados INTEGER;
        disponible INTEGER;
    BEGIN
        dbms_output.put_line('*Verificando si se cumplió la capacidad minima de despegue');
        SELECT COUNT(D.id_disponibilidad) into reservados
        FROM DISPONIBILIDAD D
        WHERE D.vuelo_id = vueloid
        AND D.usuario_id IS NULL;
        disponible:=asientosDisponibles(vueloid);  
        RETURN reservados>10;
    END;

    PROCEDURE estadoVuelo
    IS
        fechaSystem TIMESTAMP;
    BEGIN
        dbms_output.put_line('***********************************');
        dbms_output.put_line('*                                 *');
        dbms_output.put_line('*   CAMBIANDO ESTADOS DE VUELO    *');
        dbms_output.put_line('*                                 *');
        dbms_output.put_line('***********************************');
        FOR I IN (SELECT * FROM VUELO)
        LOOP
            SELECT SYSTIMESTAMP INTO fechasystem FROM DUAL;
            IF I.fecha_salida<fechasystem THEN
                dbms_output.put_line('-----------El vuelo '||I.id_vuelo||' debía salir el '||I.fecha_salida||' ---------');
                IF NOT pasajeros_suficientes(I.id_vuelo) AND (I.fecha_salida + I.duracion.valor/24) < fechasystem THEN
                    dbms_output.put_line('*El vuelo se canceló al no tener suficientes pasajeros');
                    cancelar_vuelo(I.id_vuelo);
                ELSE
                    IF (I.fecha_salida + I.duracion.valor/24) < fechasystem THEN
                        completar_vuelo(I.id_vuelo);
                    ELSE
                        arrancar_vuelo(I.id_vuelo);
                    END IF;    
                END IF;
            ELSIF (I.fecha_salida+1/6) <fechasystem THEN
                abordar_vuelo(I.id_vuelo);
            END IF;
        END LOOP;    
    END;
END;