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
    SELECT COUNT(*) INTO registros FROM (SELECT DISTINCT S.avion_id, V.id_vuelo
                                FROM ASIENTO S, DISPONIBILIDAD D, VUELO V
                                LEFT JOIN VUELO VV ON V.vuelo_id=VV.id_vuelo 
                                LEFT JOIN AEROPUERTO oo ON oo.id_aeropuerto = VV.aeropuerto_sale, 
                                AEROPUERTO O, AEROPUERTO D
                                WHERE S.id_asiento = D.asiento_id AND
                                V.id_vuelo = D.vuelo_id AND
                                O.id_aeropuerto = V.aeropuerto_sale AND
                                d.id_aeropuerto = V.aeropuerto_llega AND
                                ((o.lugar_aeropuerto.ciudad LIKE UPPER('%'||lugar_origen||'%') OR
                                o.lugar_aeropuerto.pais LIKE UPPER('%'||lugar_origen||'%') OR
                                oo.lugar_aeropuerto.ciudad LIKE UPPER('%'||lugar_origen||'%') OR
                                oo.lugar_aeropuerto.pais LIKE UPPER('%'||lugar_origen||'%'))AND
                                (d.lugar_aeropuerto.pais LIKE UPPER('%'||lugar_destino||'%') OR
                                d.lugar_aeropuerto.ciudad  LIKE UPPER('%'||lugar_destino||'%')) AND
                                V.fecha_salida BETWEEN fecha_inicio AND fecha_fin));

    OPEN cursorMemoria FOR
    SELECT logo, fecha, origen, destino, servicios 
    FROM AEROLINEA W, (SELECT R.id_aerolinea, 
    CASE WHEN registros = 0 THEN 'Todos los tiempos' ELSE TO_CHAR(fecha_inicio,'DD/MM/YYYY')||' - '||TO_CHAR(fecha_fin,'DD/MM/YYYY') END fecha, 
    origen, destino, COUNT(*) servicios
    FROM AEROLINEA R, AVION A, (SELECT DISTINCT S.avion_id, V.id_vuelo, 
                                CASE 
                                WHEN (o.lugar_aeropuerto.ciudad LIKE UPPER('%'||lugar_origen||'%')) THEN 
                                o.lugar_aeropuerto.ciudad
                                WHEN (oo.lugar_aeropuerto.ciudad LIKE UPPER('%'||lugar_origen||'%')) THEN
                                oo.lugar_aeropuerto.ciudad
                                WHEN (oo.lugar_aeropuerto.pais LIKE UPPER('%'||lugar_origen||'%')) THEN
                                oo.lugar_aeropuerto.pais
                                ELSE o.lugar_aeropuerto.pais 
                                END origen,
                                
                                CASE WHEN (d.lugar_aeropuerto.ciudad LIKE UPPER('%'||lugar_destino||'%')) THEN d.lugar_aeropuerto.ciudad ELSE d.lugar_aeropuerto.pais END destino
                                FROM ASIENTO S, DISPONIBILIDAD D, VUELO V 
                                LEFT JOIN VUELO VV ON V.vuelo_id=VV.id_vuelo 
                                LEFT JOIN AEROPUERTO oo ON oo.id_aeropuerto = VV.aeropuerto_sale, 
                                AEROPUERTO O, AEROPUERTO D
                                WHERE S.id_asiento = D.asiento_id AND
                                V.id_vuelo = D.vuelo_id AND
                                O.id_aeropuerto = V.aeropuerto_sale AND
                                d.id_aeropuerto = V.aeropuerto_llega AND
                                (registros=0 OR(
                                (o.lugar_aeropuerto.ciudad LIKE UPPER('%'||lugar_origen||'%') OR
                                o.lugar_aeropuerto.pais LIKE UPPER('%'||lugar_origen||'%') OR
                                oo.lugar_aeropuerto.ciudad LIKE UPPER('%'||lugar_origen||'%') OR
                                oo.lugar_aeropuerto.pais LIKE UPPER('%'||lugar_origen||'%'))AND
                                (d.lugar_aeropuerto.pais LIKE UPPER('%'||lugar_destino||'%') OR
                                d.lugar_aeropuerto.ciudad  LIKE UPPER('%'||lugar_destino||'%')) AND
                                V.fecha_salida BETWEEN fecha_inicio AND fecha_fin))) VUELOS_AVION
    WHERE R.id_aerolinea = a.aerolinea_id AND
    A.id_avion = vuelos_avion.avion_id
    GROUP BY R.id_aerolinea, origen, destino
    ORDER BY servicios DESC) X
    WHERE X.id_aerolinea = W.id_aerolinea AND
    rownum <= 5;
END;
        
--REPORTE DE LUGARES CON MÁS RESERVACIONES (PARAMETRIZADO POR LUGAR, FECHA DE INICIO, FECHA DE FIN)
--CASE
--    WHEN A.id_apartamento IS NOT NULL THEN A.foto
--    WHEN HH.id_hotel IS NOT NULL THEN HH.foto
--END foto,
SELECT
CASE
    WHEN X.apartamento IS NOT NULL THEN W.foto
    WHEN X.hotel IS NOT NULL THEN Z.foto
END foto_lugar,
CASE
    WHEN X.apartamento IS NOT NULL THEN W.nombre
    WHEN X.hotel IS NOT NULL THEN Z.nombre
END nombre_lugar,
'10-12-2019' fecha_inicio,
'10-12-2020' fecha_fin,
servicios,
COALESCE(CASE
    WHEN X.apartamento IS NOT NULL THEN getPuntuacionDelApartamento(X.apartamento)
    WHEN X.hotel IS NOT NULL THEN getPuntuacionDelHotel(X.hotel)
END,0)||'/10' puntuacion
FROM
(SELECT
    A.id_apartamento apartamento,
    HH.id_hotel hotel, 
    COUNT(*) servicios
    FROM RESERVA_ESTANCIA RE 
    LEFT JOIN APARTAMENTO A ON RE.apartamento_id = A.id_apartamento
    LEFT JOIN HABITACION H ON RE.habitacion_id = H.id_habitacion
    LEFT JOIN HOTEL HH ON H.hotel_id = HH.id_hotel
    GROUP BY A.id_apartamento,HH.id_hotel
    ORDER BY servicios DESC) X
    LEFT JOIN APARTAMENTO W ON W.id_apartamento = X.apartamento
    LEFT JOIN HOTEL Z ON Z.id_hotel = X.hotel
    
SELECT * FROM RESERVA_VUELO





