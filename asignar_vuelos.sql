--SET SERVEROUTPUT ON;

CREATE or REPLACE PACKAGE ASIGNACION_VUELOS IS
    PROCEDURE asignar_vuelos;
    FUNCTION duracion_vuelo(aeropuerto1 INTEGER, aeropuerto2 INTEGER, velocidad UNIDAD) RETURN UNIDAD;
    FUNCTION fecha_de_vuelo(minima TIMESTAMP, maxima TIMESTAMP) RETURN TIMESTAMP;
    FUNCTION calcula_distancia(aeropuerto1 INTEGER, aeropuerto2 INTEGER) RETURN UNIDAD;
    FUNCTION seleccionar_escala(aeropuerto1 INTEGER, aeropuerto2 INTEGER, alcance UNIDAD) RETURN INTEGER;
    FUNCTION seleccionar_aeropuertos(aeropuerto1 IN OUT INTEGER, aeropuerto2 IN OUT INTEGER, 
    aeropuerto3 IN OUT INTEGER, alcance UNIDAD) RETURN BOOLEAN; 
    FUNCTION calcular_duracion(aeropuerto1 INTEGER, aeropuerto2 INTEGER, distancia UNIDAD) RETURN UNIDAD;
END;
/
CREATE OR REPLACE PACKAGE BODY ASIGNACION_VUELOS AS

    FUNCTION calcula_precio(aeropuerto1 INTEGER, aeropuerto2 INTEGER) RETURN UNIDAD
    IS
        precio NUMBER(10,5);
    BEGIN
        dbms_output.put_line('*Calculando precio del recorrido');
        precio:=UNIDAD(calcula_distancia(aeropuerto1,aeropuerto2).convertir('distancia','nmi'),'milla','monetaria','milla').convertir('monetaria','usd')/10;
        RETURN UNIDAD(precio,'dolar','monetaria','usd');
    END;

    PROCEDURE abrir_vuelo(aeropuerto1 INTEGER, aeropuerto2 INTEGER, fecha TIMESTAMP, duracion UNIDAD,avi INTEGER)
    IS
    CURSOR asientos IS
        SELECT *
        FROM ASIENTO
        WHERE avion_id = avi;
    asien ASIENTO%RowType;
    precio UNIDAD;
    BEGIN
        dbms_output.put_line('*Abriendo disponibilidad para el vuelo');
        dbms_output.put_line('  -Creando vuelo');
        INSERT INTO VUELO VALUES(id_vuelo.nextval,fecha,null,
        null,duracion,'no iniciado',null,aeropuerto1,aeropuerto2); 
        OPEN asientos;
        FETCH asientos INTO asien;
        precio := calcula_precio(aeropuerto1,aeropuerto2);
        dbms_output.put_line('  -Asignando asientos al vuelo');
        WHILE asientos%FOUND
        LOOP
            INSERT INTO DISPONIBILIDAD VALUES(
                id_disponibilidad.nextval, UNIDAD(asien.precio.valor+precio.valor,'dolar','monetaria','usd'),
                asien.id_asiento,
                id_vuelo.currval, null);
            FETCH asientos INTO asien;
        END LOOP;
        CLOSE asientos;
    END;

    FUNCTION duracion_vuelo(aeropuerto1 INTEGER, aeropuerto2 INTEGER, velocidad UNIDAD) RETURN UNIDAD
    IS
        distancia UNIDAD;
    BEGIN
        dbms_output.put_line('*Calculando duración del vuelo');
        distancia := calcula_distancia(aeropuerto1,aeropuerto2);
        RETURN UNIDAD(distancia.valor/velocidad.valor,'horas','tiempo','h');
    END;

    FUNCTION fecha_de_vuelo(minima TIMESTAMP, maxima TIMESTAMP) RETURN TIMESTAMP
    IS
        hora TIMESTAMP;
    BEGIN
        dbms_output.put_line('*Seleccionando fecha y hora del vuelo');
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
        aero1 AEROPUERTO%RowType;
        aero2 AEROPUERTO%RowType;
        a NUMBER(10,5);
        c NUMBER(10,5);
    BEGIN
        R:=6371000;
        aero1 := getAeropuerto(aeropuerto1);
        aero2 := getAeropuerto(aeropuerto2);
        lat1 := aero1.latitud.convertir('coordenada','rad');
        lat2 := aero2.latitud.convertir('coordenada','rad');
        lon1 := aero1.longitud.convertir('coordenada','rad');
        lon2 := aero2.longitud.convertir('coordenada','rad');
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
        dbms_output.put_line('  *Seleccionando escala');
        OPEN escalas;
        FETCH escalas INTO escala;
        IF escalas%found THEN
            RETURN escala;
        END IF;
        CLOSE escalas;
        dbms_output.put_line('      e: No hay escala factible, se decidió cambiar los aeropuertos');
        RETURN -1;
    END;
    
    FUNCTION seleccionar_aeropuertos(aeropuerto1 IN OUT INTEGER, aeropuerto2 IN OUT INTEGER, aeropuerto3 IN OUT INTEGER, alcance UNIDAD) RETURN BOOLEAN
    IS
        CURSOR aeropuertos IS
        SELECT * FROM AEROPUERTO ORDER BY dbms_random.value;
        registro AEROPUERTO%RowType;
        distan UNIDAD;
    BEGIN
        dbms_output.put_line('*Seleccionando aeropuertos');
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
            distan := calcula_distancia(aeropuerto1, aeropuerto2);
            dbms_output.put_line('  i: La distancia entre  '||
            getAeropuerto(aeropuerto1).nombre||' y '||getAeropuerto(aeropuerto2).nombre||' es '||distan.valor||'km');
            IF distan.valor<=alcance.valor THEN
                RETURN TRUE;
            ELSE
                BEGIN
                    dbms_output.put_line('  s: Creando escala entre '||getAeropuerto(aeropuerto1).lugar_aeropuerto.ciudad
                    ||' y '||getAeropuerto(aeropuerto2).lugar_aeropuerto.ciudad);
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
        duracion UNIDAD;
        duracion2 UNIDAD;
        fechaPartida TIMESTAMP;
    BEGIN
        dbms_output.put_line('******************************');
        dbms_output.put_line('*                            *');
        dbms_output.put_line('*    GENERACION DE VUELOS    *');
        dbms_output.put_line('*                            *');
        dbms_output.put_line('******************************');
        FOR avi in (SELECT * FROM AVION ORDER BY alcance.valor)
        LOOP
            dbms_output.put_line('------Asignando el vuelo para el avión '||avi.id_avion||' de alcance '||avi.alcance.valor||'km------');
            IF seleccionar_aeropuertos(aeropuerto1,aeropuerto2,aeropuerto3,avi.alcance) THEN
            BEGIN
                IF aeropuerto3 IS NULL THEN
                    duracion := duracion_vuelo(aeropuerto1,aeropuerto2,avi.velocidad_max);
                    fechaPartida:= fecha_de_vuelo(SYSTIMESTAMP-100, SYSTIMESTAMP+100);
                    abrir_vuelo(aeropuerto1,aeropuerto2,fechaPartida,duracion,avi.id_avion);
                    dbms_output.put_line('  c: Vuelo directo creado entre '||
                    getAeropuerto(aeropuerto1).lugar_aeropuerto.ciudad||' y '||
                    getAeropuerto(aeropuerto2).lugar_aeropuerto.ciudad||' con una duración de '||
                    duracion.valor||' horas, para el día '||fechaPartida);
                ELSE
                    duracion := duracion_vuelo(aeropuerto1,aeropuerto3,avi.velocidad_max);
                    duracion2 := duracion_vuelo(aeropuerto3,aeropuerto2,avi.velocidad_max);
                    fechaPartida:= fecha_de_vuelo(SYSTIMESTAMP-100, SYSTIMESTAMP+100);
                    abrir_vuelo(aeropuerto1,aeropuerto3,fechaPartida,duracion,avi.id_avion);
                    abrir_vuelo(aeropuerto3,aeropuerto2,fechaPartida+1/3,duracion2,avi.id_avion);
                    
                    dbms_output.put_line('  c: Se creó un vuelo escalado que parte de '||
                    getAeropuerto(aeropuerto1).lugar_aeropuerto.ciudad||' el día '||fechaPartida||
                    ', realiza una parada en '||getAeropuerto(aeropuerto3).lugar_aeropuerto.ciudad||
                    ' luego de '||duracion.valor||' horas de viaje, para luego salir a '||getAeropuerto(aeropuerto2).lugar_aeropuerto.ciudad||
                    ' el día '||(fechaPartida+1/3)||
                    ' en un trayecto de '||duracion.valor||' horas');
                END IF;
            END;
            END IF;
            aeropuerto1:=NULL;
            aeropuerto2:=NULL;
            aeropuerto3:=NULL;
        END LOOP;
    END;
END;
/
DELETE FROM DISPONIBILIDAD;
DELETE FROM VUELO;
DROP SEQUENCE id_vuelo;
DROP SEQUENCE id_disponibilidad;
CREATE SEQUENCE id_vuelo INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_disponibilidad INCREMENT BY 1 START WITH 1 MINVALUE 1; 
SELECT * FROM VUELO;
SELECT * FROM DISPONIBILIDAD;
exec ASIGNACION_VUELOS.asignar_vuelos;