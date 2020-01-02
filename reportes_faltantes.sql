CREATE OR REPLACE PROCEDURE REPORTE_12 (cursorMemoria OUT SYS_REFCURSOR, dia DATE)
AS
    registros INTEGER;  
BEGIN
    SELECT COUNT(*) INTO registros FROM (SELECT getfechadespegue(V.id_vuelo) fecha_salida, 
    getAeropuertoReporte(v.aeropuerto_sale) origen, getAeropuertoReporte(v.aeropuerto_llega) destino,
    getLogoAerolinea(V.id_vuelo) logo_aerolinea, V.estado estado, getFechaLLegada(V.id_vuelo) llegada
    FROM VUELO V
    WHERE TO_CHAR(V.fecha_salida,'DD-MM-YYYY') = TO_CHAR(dia,'DD-MM-YYYY')) x;

    OPEN cursorMemoria FOR SELECT getfechadespegue(V.id_vuelo) fecha_salida, 
    getAeropuertoReporte(v.aeropuerto_sale) origen, getAeropuertoReporte(v.aeropuerto_llega) destino,
    getLogoAerolinea(V.id_vuelo) logo_aerolinea, V.estado estado, getFechaLLegada(V.id_vuelo) llegada
    FROM VUELO V
    WHERE registros = 0 OR
    TO_CHAR(V.fecha_salida,'DD-MM-YYYY') = TO_CHAR(dia,'DD-MM-YYYY')
    ORDER BY V.fecha_salida;
END;