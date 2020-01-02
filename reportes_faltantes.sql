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


CREATE OR REPLACE PROCEDURE REPORTE_8 (cursorMemoria OUT SYS_REFCURSOR, lugar_origen VARCHAR, 
lugar_destino VARCHAR, fecha_inicio DATE, fecha_fin DATE)
AS
    registros INTEGER;
BEGIN
    --Hay origen o destino
    OPEN cursorMemoria FOR
    SELECT logo, fecha, origen, destino, servicios 
    FROM AEROLINEA W, (SELECT R.id_aerolinea, TO_CHAR(fecha_inicio,'DD/MM/YYYY')||' - '||TO_CHAR(fecha_fin,'DD/MM/YYYY') fecha, 
    origen, destino, COUNT(*) servicios
    FROM AEROLINEA R, AVION A, (SELECT DISTINCT S.avion_id, V.id_vuelo, 
                                CASE WHEN o.lugar_aeropuerto.ciudad=lugar_origen THEN lugar_origen ELSE o.lugar_aeropuerto.pais END origen,
                                CASE WHEN D.lugar_aeropuerto.ciudad=lugar_destino THEN lugar_origen ELSE d.lugar_aeropuerto.pais END destino
                                FROM ASIENTO S, DISPONIBILIDAD D, VUELO V, AEROPUERTO O, AEROPUERTO D
                                WHERE S.id_asiento = D.asiento_id AND
                                V.id_vuelo = D.vuelo_id AND
                                O.id_aeropuerto = V.aeropuerto_sale AND
                                d.id_aeropuerto = V.aeropuerto_llega AND
                                (o.lugar_aeropuerto.ciudad=lugar_origen OR
                                o.lugar_aeropuerto.pais=lugar_origen)AND
                                (d.lugar_aeropuerto.pais=lugar_destino OR
                                d.lugar_aeropuerto.ciudad=lugar_destino) AND
                                V.fecha_salida BETWEEN fecha_inicio AND fecha_fin) VUELOS_AVION
    WHERE R.id_aerolinea = a.aerolinea_id AND
    A.id_avion = vuelos_avion.avion_id
    GROUP BY R.id_aerolinea, origen, destino
    ORDER BY servicios DESC) X
    WHERE X.id_aerolinea = W.id_aerolinea AND
    rownum <= 5;
END;


