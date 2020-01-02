SELECT TO_CHAR(V.fecha_salida,'DD Mon yyyy HH:MI PM') fecha_salida, 
getAeropuertoReporte(v.aeropuerto_sale) origen, traerLlega(v.aeropuerto_llega) destino,
getLogoAerolinea(V.id_vuelo) logo_aerolinea, V.estado estado
FROM VUELO V
WHERE TO_CHAR(V.fecha_salida,'DD-MM-YYYY') = '31-12-2019'
ORDER BY V.fecha_salida;