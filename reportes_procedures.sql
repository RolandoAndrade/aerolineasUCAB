CREATE OR REPLACE PROCEDURE REPORTE_1 (cursorMemoria OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN cursorMemoria FOR SELECT A.logo, B.tipo, B.flota
                           FROM AEROLINEA A, (SELECT DISTINCT A.id_aerolinea, A.tipo, devolverFlota(A.id_aerolinea) as flota
                                              FROM AEROLINEA A, AVION AV, MODELO M, MARCA MA
                                              WHERE A.id_aerolinea = AV.aerolinea_id
                                              AND   M.id_modelo = AV.modelo_id
                                              AND   MA.id_marca = m.marca_id) B
                           WHERE B.id_aerolinea = A.id_aerolinea;
END;

CREATE OR REPLACE PROCEDURE REPORTE_2 (cursorMemoria OUT SYS_REFCURSOR, x VARCHAR)
AS
BEGIN
    OPEN cursorMemoria FOR SELECT A.logo,B.marca, B.modelo,M.foto, B.serie, B.Cantidad, B.asientos
                           FROM AEROLINEA A, MODELO M, (SELECT DISTINCT A.id_aerolinea, M.id_modelo, MA.nombre as marca, M.nombre as modelo, AV.serie_modelo as serie, contarAviones(A.id_aerolinea, MA.nombre, M.nombre, AV.serie_modelo) as cantidad, contarAsiento(AV.id_avion) as asientos
                                                                           FROM AEROLINEA A, AVION AV, MODELO M, MARCA MA
                                                                           WHERE A.id_aerolinea = AV.aerolinea_id
                                                                           AND   M.id_modelo = AV.modelo_id
                                                                           AND   MA.id_marca = m.marca_id
                                                                           order by A.id_aerolinea) B
                           WHERE B.id_aerolinea = A.id_aerolinea
                           AND B.id_modelo = M.id_modelo
                           AND A.nombre = x
                           ORDER BY M.id_modelo;
END;

CREATE OR REPLACE PROCEDURE REPORTE_3 (cursorMemoria OUT SYS_REFCURSOR, x VARCHAR, y VARCHAR, z VARCHAR)
AS
BEGIN
    OPEN cursorMemoria FOR SELECT A.logo, B.marca, B.modelo,M.foto, B.serie, B.velo, B.alca, B.alti, B.enve, B.anc, B.alt
                            FROM AEROLINEA A, MODELO M,(SELECT DISTINCT A.id_aerolinea, M.id_modelo, MA.nombre as marca, M.nombre as modelo, AV.serie_modelo as serie, AV.velocidad_max.convertir('velocidad','mach')||' ('||AV.velocidad_max.valor||' km/h)' as velo, AV.alcance.convertir('distancia','nmi')||'  ('||AV.alcance.valor||' km)' as alca, AV.altitud_max.convertir('distancia', 'ft')||' ft' as alti, AV.envergadura.convertir('distancia','m')||' m' as enve, AV.ancho_cabina.convertir('distancia','m')||' m' as anc, AV.alto_cabina.convertir('distancia','m')||' m' as alt                                                             
                                                FROM AEROLINEA A, AVION AV, MODELO M, MARCA MA
                                                WHERE A.id_aerolinea = AV.aerolinea_id
                                                AND   M.id_modelo = AV.modelo_id
                                                AND   MA.id_marca = m.marca_id
                                                AND MA.nombre = x
                                                AND M.nombre = y
                                                AND AV.serie_modelo = z) B
                            WHERE B.id_aerolinea = A.id_aerolinea
                            AND B.id_modelo = M.id_modelo;
END;


CREATE OR REPLACE PROCEDURE REPORTE_4 (cursorMemoria OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN cursorMemoria FOR SELECT U.correo,U.foto,devolverNombres(U.id_usuario),devolverApellidos(U.id_usuario),U.telefono
                           FROM USUARIO U;
END;

CREATE OR REPLACE PROCEDURE REPORTE_5 (cursorMemoria OUT SYS_REFCURSOR, x VARCHAR, y VARCHAR, z VARCHAR)
AS
BEGIN
    OPEN cursorMemoria FOR SELECT A.logo, U.correo, concaternarVuelos(V.id_vuelo,  RV.reserva_vuelo.fecha_inicio),TO_CHAR(RV.reserva_vuelo.fecha_inicio, 'Mon DD YYYY'),TO_CHAR(RV.reserva_vuelo.fecha_fin,'Mon DD YYYY'),TO_CHAR(V.fecha_salida_real,'HH:MI PM')||' '||traerSale(V.id_vuelo),TO_CHAR(V.fecha_llegada_real,'HH:MI PM')||' '||traerLlega(V.id_vuelo),traerDuracion(V.id_vuelo),'$ '||RV.reserva_vuelo.monto.valor
                            FROM USUARIO U, RESERVA_VUELO RV, VUELO V, DISPONIBILIDAD D, ASIENTO ASI, AVION AV, AEROLINEA A
                            WHERE U.id_usuario = RV.usuario_id
                            AND V.id_vuelo = RV.vuelo_id
                            AND D.vuelo_id = V.id_vuelo
                            AND D.asiento_id = ASI.id_asiento
                            AND AV.id_avion = ASI.avion_id
                            AND A.id_aerolinea = AV.aerolinea_id
                            AND D.usuario_id = U.id_usuario
                            AND U.correo = X
                            AND RV.reserva_vuelo.fecha_inicio >= Y
                            AND RV.reserva_vuelo.fecha_fin <= Z;
END;

CREATE OR REPLACE PROCEDURE REPORTE_6 (cursorMemoria OUT SYS_REFCURSOR, x NUMBER)
AS
BEGIN
    OPEN cursorMemoria FOR SELECT A.logo,U.correo,concaternarVuelos(V.id_vuelo, RV.reserva_vuelo.fecha_inicio),TO_CHAR(RV.reserva_vuelo.fecha_inicio, 'Mon DD YYYY'),TO_CHAR(RV.reserva_vuelo.fecha_fin,'Mon DD YYYY'),'$ '||RV.reserva_vuelo.monto.valor,traerPago(RV.id_reserva_vuelo,P.id_pago,P.tarjetacredito_id,P.tarjetadebito_id,P.millas_id),'$'||P.monto.valor
                            FROM USUARIO U, RESERVA_VUELO RV, VUELO V, DISPONIBILIDAD D, ASIENTO ASI, AVION AV, AEROLINEA A, PAGO P
                            WHERE U.id_usuario = RV.usuario_id
                            AND P.reservavuelo_id = RV.id_reserva_vuelo
                            AND V.id_vuelo = RV.vuelo_id
                            AND D.vuelo_id = V.id_vuelo
                            AND D.asiento_id = ASI.id_asiento
                            AND D.usuario_id = U.id_usuario
                            AND AV.id_avion = ASI.avion_id
                            AND A.id_aerolinea = AV.aerolinea_id
                            AND RV.id_reserva_vuelo = x;
END;





