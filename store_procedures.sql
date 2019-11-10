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