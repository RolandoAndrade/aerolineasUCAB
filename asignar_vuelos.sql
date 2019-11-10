--SET SERVEROUTPUT ON;

CREATE or REPLACE PACKAGE ASIGNACION_VUELOS IS
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
        hora TIMESTAMP;
    BEGIN
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
        SELECT W.latitud.convertir('distancia','rad') INTO lat1 FROM AEROPUERTO W WHERE W.id_aeropuerto = aeropuerto1;
        SELECT W.latitud.convertir('distancia','rad') INTO lat2 FROM AEROPUERTO W WHERE W.id_aeropuerto = aeropuerto2;
        SELECT W.longitud.convertir('distancia','rad') INTO lon1 FROM AEROPUERTO W WHERE W.id_aeropuerto = aeropuerto1;
        SELECT W.longitud.convertir('distancia','rad') INTO lon2 FROM AEROPUERTO W WHERE W.id_aeropuerto = aeropuerto2;
        dLat := lat2 - lat1;
        dLon := lon2 - lon1;
        a:=SIN(dLat/2)*SIN(dLat/2)+COS(lat1)*COS(lat2)*SIN(dLon/2)*SIN(dLon/2);
        c:=2*ATAN(SQRT(a)/SQRT(1-a))/1000;
        RETURN UNIDAD(R*c,'kilometros','distancia','km');
        -- FORMULA DE https://www.movable-type.co.uk/scripts/latlong.html
    END;
    
    FUNCTION seleccionar_escala(aeropuerto1 INTEGER, aeropuerto2 INTEGER, alcance UNIDAD) RETURN INTEGER
    IS
    CURSOR escalas IS
        SELECT id_aeropuerto FROM AEROPUERTO
        WHERE id_aeropuerto!=aeropuerto1 AND
        id_aeropuerto!=aeropuerto2 AND
        ASIGNACION_VUELOS.calcula_distancia(aeropuerto1, id_aeropuerto).valor<=alcance.valor AND
        ASIGNACION_VUELOS.calcula_distancia(aeropuerto2, id_aeropuerto).valor<=alcance.valor
        ORDER BY dbms_random.value;
    escala INTEGER;
    BEGIN
        OPEN escalas;
        FETCH escalas INTO escala;
        IF escalas%found THEN
            RETURN escala;
        END IF;
        CLOSE escalas;
        RETURN -1;
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
                    FETCH aeropuertos INTO registro;
                    CONTINUE;
                END;
            END IF;
            IF aeropuerto2 IS NULL THEN
                BEGIN
                    aeropuerto2:=registro.id_aeropuerto;
                    FETCH aeropuertos INTO registro;
                    CONTINUE;
                END;
            END IF;
            IF calcula_distancia(aeropuerto1, aeropuerto2).valor<=alcance.valor THEN
                RETURN TRUE;
            ELSE
                BEGIN
                    dbms_output.put_line('Creando escala entre '||getAeropuerto(aeropuerto1).lugar_aeropuerto.ciudad
                    ||' y '||getAeropuerto(aeropuerto2).lugar_aeropuerto.ciudad);
                    aeropuerto3:=seleccionar_escala(aeropuerto1,aeropuerto2, alcance);
                    IF aeropuerto3 !=-1 THEN
                        RETURN TRUE;
                    ELSE
                        aeropuerto3:=NULL;
                        dbms_output.put_line('No hay escala factible, se decidió cambiar los aeropuertos');
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
        dbms_output.put_line('**************GENERANDO VUELOS**************');
        FOR avi in (SELECT * FROM AVION ORDER BY alcance.valor)
        LOOP
            dbms_output.put_line('--AVION de alcance '||avi.alcance.valor||'km--');
            IF seleccionar_aeropuertos(aeropuerto1,aeropuerto2,aeropuerto3,avi.alcance) THEN
            BEGIN
                IF aeropuerto3 IS NULL THEN
                    dbms_output.put_line('Vuelo directo creado entre '||
                    getAeropuerto(aeropuerto1).lugar_aeropuerto.ciudad||' y '||getAeropuerto(aeropuerto2).lugar_aeropuerto.ciudad);
                ELSE
                    dbms_output.put_line('Vuelo ecalado entre '||
                    getAeropuerto(aeropuerto1).lugar_aeropuerto.ciudad||' y '||getAeropuerto(aeropuerto2).lugar_aeropuerto.ciudad||
                    ' con parada en '||getAeropuerto(aeropuerto3).lugar_aeropuerto.ciudad);
                END IF;
            END;
            END IF;
            aeropuerto1:=NULL;
            aeropuerto2:=NULL;
            aeropuerto3:=NULL;
        END LOOP;
    END;
END;