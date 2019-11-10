CREATE OR REPLACE FUNCTION aceptar_o_rechazar(probabilidadSi NUMBER) RETURN BOOLEAN
IS
BEGIN
    RETURN dbms_random.value < probabilidadSi;
END;

CREATE OR REPLACE PROCEDURE simulacion
IS
BEGIN
    ASIGNACION_VUELOS.asignar_vuelos;
END;