CREATE OR REPLACE FUNCTION aceptar_o_rechazar(probabilidadSi NUMBER) RETURN BOOLEAN
IS
BEGIN
    RETURN dbms_random.value < probabilidadSi;
END;
/
CREATE OR REPLACE PROCEDURE insertarAsientos(avion NUMBER, cantidad NUMBER, clase VARCHAR, precio NUMBER, inicio NUMBER)
IS 
BEGIN
    FOR i IN 1..cantidad LOOP
    INSERT INTO ASIENTO VALUES (id_asiento.nextVal, i+inicio, clase,UNIDAD(precio ,'dolares', 'monetaria', 'usd'), avion);
    END LOOP;
END;
/
CREATE OR REPLACE FUNCTION GenerarAleatorio RETURN NUMBER
IS
BEGIN
    RETURN ABS(MOD(dbms_random.random,5000))+1000;
END;
/
CREATE OR REPLACE FUNCTION getAeropuerto(aeropuertoId INTEGER) RETURN AEROPUERTO%RowType
IS
    registro AEROPUERTO%RowType;
BEGIN
    SELECT * INTO registro FROM AEROPUERTO WHERE id_aeropuerto = aeropuertoId;
    RETURN registro;
END;
/
CREATE OR REPLACE FUNCTION devolverNombres(x NUMBER) RETURN VARCHAR
IS
    registro USUARIO%RowType;
    nombre VARCHAR(50);
BEGIN
    SELECT p_nombre ||' '|| s_nombre INTO nombre FROM USUARIO WHERE x = id_usuario;
    dbms_output.put_line(nombre);
    RETURN nombre;
END;
/
CREATE OR REPLACE FUNCTION devolverApellidos(x NUMBER) RETURN VARCHAR
IS
    registro USUARIO%RowType;
    nombre VARCHAR(50);
BEGIN
    SELECT p_apellido ||' '|| s_apellido INTO nombre FROM USUARIO WHERE x = id_usuario;
    dbms_output.put_line(nombre);
    RETURN nombre;
END;
/
CREATE OR REPLACE FUNCTION devolverFlota(aerolinea_id NUMBER) RETURN VARCHAR
IS
    flota VARCHAR(50);
    total VARCHAR(100);
    CURSOR Cflota IS SELECT DISTINCT MA.nombre ||' '|| M.nombre 
                            FROM MARCA MA, MODELO M, AEROLINEA A, AVION AV 
                            WHERE A.id_aerolinea = AV.aerolinea_id
                            AND   M.id_modelo = AV.modelo_id
                            AND   MA.id_marca = m.marca_id
                            AND   A.id_aerolinea = aerolinea_id;
BEGIN
    OPEN Cflota;
    FETCH Cflota INTO flota;
    WHILE(Cflota%FOUND)
    LOOP
        total:=total||flota||CHR(10);
        FETCH Cflota INTO flota;
    END LOOP;
    RETURN total;
END;
/
CREATE OR REPLACE FUNCTION contarAviones(x NUMBER,y VARCHAR, z VARCHAR, m VARCHAR) RETURN NUMBER
IS
    registro NUMBER;
BEGIN
    SELECT COUNT(A.id_avion) INTO registro
        FROM AVION A, MODELO B, MARCA C, AEROLINEA D
        WHERE D.id_aerolinea = x
        AND C.nombre = y
        AND B.nombre = z
        AND A.serie_modelo = m
        AND A.aerolinea_id = D.id_aerolinea
        AND B.id_modelo = A.modelo_id
        AND C.id_marca = B.marca_id;
    RETURN registro;
END;
/
CREATE OR REPLACE FUNCTION contarAsiento(x number) RETURN VARCHAR
IS
    registro NUMBER;
    cantidad VARCHAR(100);
BEGIN
    SELECT COUNT(ASI.id_asiento) INTO registro
    FROM AVION AV, ASIENTO ASI
    WHERE AV.id_avion = ASI.avion_id
    AND AV.id_avion = x
    AND ASI.clase = 'primera clase';
    IF (registro > 0) THEN
        cantidad := registro || '  asientos de primera clase'||CHR(10);
    END IF;
    registro := 0;
    SELECT COUNT(ASI.id_asiento) INTO registro
    FROM AVION AV, ASIENTO ASI
    WHERE AV.id_avion = ASI.avion_id
    AND AV.id_avion = x
    AND ASI.clase = 'economy extra';
    IF (registro > 0) THEN
        cantidad := cantidad|| registro || '  asientos de economy extra'||CHR(10);
    END IF;
    registro := 0;
    SELECT COUNT(ASI.id_asiento) INTO registro
    FROM AVION AV, ASIENTO ASI
    WHERE AV.id_avion = ASI.avion_id
    AND AV.id_avion = x
    AND ASI.clase = 'cabina prin';
    IF (registro > 0) THEN
        cantidad := cantidad||registro || '  asientos de cabina principal'||CHR(10);
    END IF;
    RETURN cantidad;
END;
/
CREATE OR REPLACE FUNCTION concaternarVuelos(x NUMBER) RETURN VARCHAR
IS
    registro1 VARCHAR(100);
    registro2 VARCHAR(100);
BEGIN
    SELECT A.lugar_aeropuerto.pais ||' ('||A.abreviatura||'), '||A.lugar_aeropuerto.pais ||' - ' INTO registro1
        FROM VUELO V, AEROPUERTO A
        WHERE V.id_vuelo = x
        AND A.id_aeropuerto = V.aeropuerto_sale;
    SELECT A.lugar_aeropuerto.pais ||' ('||A.abreviatura||'), '||A.lugar_aeropuerto.pais ||' '|| TO_CHAR(RV.reserva_vuelo.fecha_inicio,'DY Mon DD YYYY') INTO registro2
        FROM VUELO V, AEROPUERTO A, RESERVA_VUELO RV
        WHERE V.id_vuelo = x
        AND A.id_aeropuerto = V.aeropuerto_llega
        AND V.id_vuelo = RV.vuelo_id;
    registro1:=registro1 || registro2;    
    RETURN registro1;   
END;
/
CREATE OR REPLACE FUNCTION traerSale(x NUMBER) RETURN VARCHAR
IS
    registro1 VARCHAR(50);
BEGIN
    SELECT A.lugar_aeropuerto.pais ||' ('||A.abreviatura||')' INTO registro1
        FROM VUELO V, AEROPUERTO A
        WHERE V.id_vuelo = x
        AND A.id_aeropuerto = V.aeropuerto_sale;
    RETURN registro1;

END;
/
CREATE OR REPLACE FUNCTION traerLlega(x NUMBER) RETURN VARCHAR
IS
    registro1 VARCHAR(50);
BEGIN
    SELECT A.lugar_aeropuerto.pais ||' ('||A.abreviatura||')' INTO registro1
        FROM VUELO V, AEROPUERTO A
        WHERE V.id_vuelo = x
        AND A.id_aeropuerto = V.aeropuerto_llega;
    RETURN registro1;
END;
/
CREATE OR REPLACE FUNCTION traerDuracion(x NUMBER) RETURN VARCHAR
IS
    aux NUMBER(5,2);
    aux2 NUMBER(5,2);
    registro VARCHAR(15);
BEGIN
    SELECT V.duracion.valor INTO aux
    FROM VUELO V
    WHERE V.id_vuelo = x;
    aux2:= TRUNC(aux); 
    registro:= aux2||'h ';
    aux:= aux - TRUNC(aux);
    aux:= aux*60;
    registro:= registro||aux ||'m';
    RETURN registro;
END;
/
CREATE OR REPLACE FUNCTION traerPago(x NUMBER,y NUMBER, z NUMBER, m NUMBER, n NUMBER) RETURN VARCHAR
IS
    registro VARCHAR(50);
    aux NUMBER(5);
    aux2 NUMBER(5);
BEGIN
   aux := m;
        IF aux IS NOT NULL THEN
            SELECT T.numero INTO registro
                FROM PAGO P, RESERVA_VUELO RV, TARJETA_DEBITO T
                WHERE RV.id_reserva_vuelo = P.reservavuelo_id
                AND T.id_trajeta_debito = P.tarjetadebito_id
                AND RV.id_reserva_vuelo = x
                AND P.tarjetadebito_id = m
                AND P.id_pago = y;
                registro:= 'TDD - '||registro;
            RETURN registro;
        END IF;
    aux:=z;    
        IF aux IS NOT NULL THEN
        SELECT T.tipo||' '||T.numero INTO registro
                FROM PAGO P, RESERVA_VUELO RV, TARJETA_CREDITO T
                WHERE RV.id_reserva_vuelo = P.reservavuelo_id
                AND T.id_tarjeta_credito = P.tarjetacredito_id
                AND RV.id_reserva_vuelo = x
                AND P.tarjetacredito_id = z
                AND P.id_pago = y;
                registro:= 'TDC - '||registro;
            RETURN registro;
        END IF;
    aux:=n;
        IF aux IS NOT NULL THEN
        SELECT P.millas_restantes.valor INTO registro
                FROM PAGO P, RESERVA_VUELO RV, MILLA M
                WHERE RV.id_reserva_vuelo = P.reservavuelo_id
                AND M.id_milla = P.millas_id
                AND RV.id_reserva_vuelo = x
                AND P.millas_id = n
                AND P.id_pago = y;
                registro:= 'Club Premiumm Millas - '||registro;
            RETURN registro;
        END IF;
END;