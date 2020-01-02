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


-- AEROLINEAS TOP 5 QUE PRESTAN SERVICIO (PARAMETRIZADO POR FECHA DE INICIO, FECHA DE FIN, ORIGEN Y DESTINO
SELECT * FROM(SELECT R.nombre nombre, '10/12/2019 - 10/01/2020' fecha, 'CARACAS' origen, 'PANAMÁ' destino, COUNT(*) servicios
FROM AEROLINEA R, AVION A, (SELECT DISTINCT S.avion_id, V.id_vuelo
                            FROM ASIENTO S, DISPONIBILIDAD D, VUELO V, AEROPUERTO O, AEROPUERTO D
                            WHERE S.id_asiento = D.asiento_id AND
                            V.id_vuelo = D.vuelo_id AND
                            O.id_aeropuerto = V.aeropuerto_sale AND
                            d.id_aeropuerto = V.aeropuerto_llega AND
                            (o.lugar_aeropuerto.ciudad='CARACAS')AND
                            (d.lugar_aeropuerto.pais='PANAMA')) VUELOS_AVION
WHERE R.id_aerolinea = a.aerolinea_id AND
A.id_avion = vuelos_avion.avion_id
GROUP BY nombre,  '10/12/2019 - 10/01/2020', 
'CARACAS', 'PANAMÁ'
ORDER BY servicios DESC) WHERE rownum <= 5;



