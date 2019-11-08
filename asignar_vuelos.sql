CREATE OR REPLACE PACKAGE ASIGNACION_VUELOS IS
    PROCEDURE asignar_vuelos;
    FUNCTION fecha_de_vuelo(minima TIMESTAMP, maxima TIMESTAMP) RETURN TIMESTAMP;
    FUNCTION calcula_distancia(aeropuerto1 INTEGER, aeropuerto2 INTEGER) RETURN UNIDAD;
    FUNCTION seleccionar_escala(aeropuerto1 INTEGER, aeropuerto2 INTEGER, alcance UNIDAD) RETURN INTEGER;
    FUNCTION seleccionar_aeropuertos(aeropuerto1 IN OUT INTEGER, aeropuerto2 IN OUT INTEGER, 
    aeropuerto3 IN OUT INTEGER, alcance UNIDAD) RETURN BOOLEAN; 
    FUNCTION calcular_duracion(aeropuerto1 INTEGER, aeropuerto2 INTEGER, distancia UNIDAD) RETURN UNIDAD;
END;
CREATE OR REPLACE PACKAGE BODY ASIGNACION_VUELOS AS
    FUNCTION fecha_de_vuelo(minima TIMESTAMP, maxima TIMESTAMP) RETURN TIMESTAMP
    IS
    BEGIN
        RETURN NULL;
    END;
    FUNCTION calcula_distancia(aeropuerto1 INTEGER, aeropuerto2 INTEGER) RETURN UNIDAD
    IS
    BEGIN
        RETURN NULL;
    END;
    FUNCTION seleccionar_escala(aeropuerto1 INTEGER, aeropuerto2 INTEGER, alcance UNIDAD) RETURN INTEGER
    IS
    BEGIN
        RETURN NULL;
    END;
    FUNCTION seleccionar_aeropuertos(aeropuerto1 IN OUT INTEGER, aeropuerto2 IN OUT INTEGER, aeropuerto3 IN OUT INTEGER, alcance UNIDAD) RETURN BOOLEAN
    IS
        CURSOR aeropuertos IS
        SELECT * FROM AEROPUERTO ORDER BY dbms_random.value;
        registro AEROPUERTO%RowType;
    BEGIN
        OPEN aeropuertos;
        FETCH aeropuertos INTO registro;
        WHILE aeropuertos%FOUND
        LOOP
            IF aeropuerto1 IS NULL THEN
                BEGIN
                    aeropuerto1:=registro.id_aeropuerto;
                    CONTINUE;
                END;
            END IF;
            IF aeropuerto2 IS NULL THEN
                BEGIN
                    aeropuerto2:=registro.id_aeropuerto;
                    CONTINUE;
                END;
            END IF;
            IF calcula_distancia(aeropuerto1, aeropuerto1).valor<=alcance.valor THEN
                RETURN TRUE;
            ELSE
                BEGIN
                    aeropuerto3:=seleccionar_escala(aeropuerto1,aeropuerto2, alcance);
                    IF aeropuerto3 !=-1 THEN
                        RETURN TRUE;
                    ELSE
                        aeropuerto3:=NULL;
                    END IF;
                END;
            END IF;
            aeropuerto1:=aeropuerto2;
            aeropuerto2:=NULL;
            FETCH aeropuertos INTO registro;
        END LOOP;
        RETURN FALSE;
    END;
    FUNCTION calcular_duracion(aeropuerto1 INTEGER, aeropuerto2 INTEGER, distancia UNIDAD) RETURN UNIDAD
    IS
    BEGIN
        RETURN NULL;
    END;
    PROCEDURE asignar_vuelos
    IS
        aeropuerto1 INTEGER;
        aeropuerto2 INTEGER;
        aeropuerto3 INTEGER;
    BEGIN
        FOR avi in (SELECT * FROM AVION)
        LOOP
            IF seleccionar_aeropuertos(aeropuerto1,aeropuerto2,aeropuerto3,avi.alcance) THEN
            BEGIN
                NULL;
            END;
            END IF;
        END LOOP;
    END;
END;

