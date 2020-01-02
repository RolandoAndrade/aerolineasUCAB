SELECT TO_CHAR(V.fecha_salida,'DD Mon yyyy HH:MI PM') fecha_salida, traerSale(v.id_vuelo) origen, traerLlega(v.id_vuelo) destino,
getLogoAerolinea(V.id_vuelo) logo_aerolinea, V.estado estado
FROM VUELO V
WHERE TO_CHAR(V.fecha_salida,'DD-MM-YYYY') = '01-01-2020'
ORDER BY V.fecha_salida;