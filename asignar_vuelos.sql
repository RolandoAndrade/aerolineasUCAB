CREATE OR REPLACE PACKAGE BODY ASIGNACION_VUELOS AS
    FUNCTION fecha_de_vuelo(minima TIMESTAMP, maxima TIMESTAMP) RETURN TIMESTAMP
    IS
        hora TIMESTAMP;
    BEGIN
        dbms_Output.Put_Line(SYSTIMESTAMP);
        dbms_Output.Put_Line(minima);
        dbms_Output.Put_Line(maxima);
        SELECT minima + dbms_random.value*(maxima-minima)
        INTO hora
        FROM DUAL;
        RETURN hora;
    END;
    FUNCTION calcula_distancia(aeropuerto1 INTEGER, aeropuerto2 INTEGER) RETURN UNIDAD
    IS
        R INTEGER; -- RADIO DE LA TIERRA
        lat1 NUMBER(10,5); -- LATITUD 1
        lat2 NUMBER(10,5); -- LATITUD 2
        lon1 NUMBER(10,5); -- LONGITUD 1
        lon2 NUMBER(10,5); -- LONGITUD 2
        dLat NUMBER(10,5); -- DELTA LATITUD
        dLon NUMBER(10,5); -- DELTA LONGITUD
        a NUMBER(10,5);
        c NUMBER(10,5);
    BEGIN
       	R:=6371000;
        --FALTA CONVERTIR UNIDADES A RADIANES
        SELECT W.latitud.valor INTO lat1 FROM AEROPUERTO W WHERE W.id_aeropuerto = aeropuerto1;
        SELECT W.latitud.valor INTO lat2 FROM AEROPUERTO W WHERE W.id_aeropuerto = aeropuerto2;
        SELECT W.longitud.valor INTO lon1 FROM AEROPUERTO W WHERE W.id_aeropuerto = aeropuerto1;
        SELECT W.longitud.valor INTO lon2 FROM AEROPUERTO W WHERE W.id_aeropuerto = aeropuerto2;
        dLat := lat2 - lat1;
        dLon := lon2 - lon1;
        a:=SIN(dLat/2)*SIN(dLat/2)+COS(lat1)*COS(lat2)*SIN(dLon/2)*SIN(dLon/2);
        c:=2*ATAN(SQRT(a)/SQRT(1-a))/1000;
        RETURN UNIDAD(R*c,'kilometros','distancia','km');
        -- FORMULA DE https://www.movable-type.co.uk/scripts/latlong.html
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
--SET SERVEROUTPUT ON;