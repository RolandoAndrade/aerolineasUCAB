CREATE OR REPLACE PACKAGE CAMBIAR_ESTADOS IS
   PROCEDURE estadoVuelo;
   FUNCTION pasajeros_suficientes(vueloid INTEGER) RETURN BOOLEAN;
   PROCEDURE cancelar_vuelo(vueloid INTEGER);
   PROCEDURE cancelar_reservas_vuelo(vueloid INTEGER);
END;
/
CREATE OR REPLACE PACKAGE BODY CAMBIAR_ESTADOS AS
    
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
        NULL;
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
        RETURN reservados<disponible/4;
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
                dbms_output.put_line('*El vuelo '||I.id_vuelo||'debía salir el '||I.fecha_salida);
                IF NOT pasajeros_suficientes(I.id_vuelo) THEN
                    dbms_output.put_line('*El vuelo se canceló al no tener suficientes pasajeros');
                END IF;
            END IF;
            
        
            
        END LOOP;    
    END;
END;