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
    OPEN cursorMemoria FOR SELECT A.logo, U.correo, concaternarVuelos(V.id_vuelo),TO_CHAR(RV.reserva_vuelo.fecha_inicio, 'Mon DD YYYY'),TO_CHAR(RV.reserva_vuelo.fecha_fin,'Mon DD YYYY'),TO_CHAR(V.fecha_salida_real,'HH:MI PM')||' '||traerSale(V.id_vuelo),TO_CHAR(V.fecha_llegada_real,'HH:MI PM')||' '||traerLlega(V.id_vuelo),traerDuracion(V.id_vuelo),'$ '||RV.reserva_vuelo.monto.valor
                            FROM USUARIO U, RESERVA_VUELO RV, VUELO V, DISPONIBILIDAD D, ASIENTO ASI, AVION AV, AEROLINEA A
                            WHERE U.id_usuario = RV.usuario_id
                            AND V.id_vuelo = RV.vuelo_id
                            AND D.vuelo_id = V.id_vuelo
                            AND D.asiento_id = ASI.id_asiento
                            AND AV.id_avion = ASI.avion_id
                            AND A.id_aerolinea = AV.aerolinea_id
                            AND U.correo = x
                            AND V.fecha_salida_real >= y
                            AND V.fecha_llegada_real <= z;
END;

CREATE OR REPLACE PROCEDURE REPORTE_6 (cursorMemoria OUT SYS_REFCURSOR, x NUMBER)
AS
BEGIN
    OPEN cursorMemoria FOR SELECT A.logo,U.correo,concaternarVuelos(V.id_vuelo),TO_CHAR(RV.reserva_vuelo.fecha_inicio, 'Mon DD YYYY'),TO_CHAR(RV.reserva_vuelo.fecha_fin,'Mon DD YYYY'),'$ '||RV.reserva_vuelo.monto.valor,traerPago(RV.id_reserva_vuelo,P.id_pago,P.tarjetacredito_id,P.tarjetadebito_id,P.millas_id),'$'||P.monto.valor
                            FROM USUARIO U, RESERVA_VUELO RV, VUELO V, DISPONIBILIDAD D, ASIENTO ASI, AVION AV, AEROLINEA A, PAGO P
                            WHERE U.id_usuario = RV.usuario_id
                            AND P.reservavuelo_id = RV.id_reserva_vuelo
                            AND V.id_vuelo = RV.vuelo_id
                            AND D.vuelo_id = V.id_vuelo
                            AND D.asiento_id = ASI.id_asiento
                            AND AV.id_avion = ASI.avion_id
                            AND A.id_aerolinea = AV.aerolinea_id
                            AND RV.id_reserva_vuelo = x;
END;


INSERT INTO VUELO VALUES(id_vuelo.nextVal,TO_TIMESTAMP('17-11-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('17-11-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('30-11-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),UNIDAD(2,'horas','tiempo','hrs'),'Puntual',null,1,2);
INSERT INTO VUELO VALUES(id_vuelo.nextVal,TO_TIMESTAMP('10-10-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('10-10-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('10-11-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),UNIDAD(2,'horas','tiempo','hrs'),'Puntual',null,5,4);
INSERT INTO VUELO VALUES(id_vuelo.nextVal,TO_TIMESTAMP('05-01-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('05-01-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('31-01-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),UNIDAD(2,'horas','tiempo','hrs'),'Puntual',null,3,9);
INSERT INTO VUELO VALUES(id_vuelo.nextVal,TO_TIMESTAMP('20-07-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('20-07-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('15-08-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),UNIDAD(2,'horas','tiempo','hrs'),'Puntual',null,7,8);
INSERT INTO VUELO VALUES(id_vuelo.nextVal,TO_TIMESTAMP('20-07-2019 3:15:00.000000','DD-MM-YYYY HH12:MI:SS.FF PM'),TO_TIMESTAMP('20-07-2019 3:15:00.000000','DD-MM-YYYY HH12:MI:SS.FF'),TO_TIMESTAMP('15-08-2019 1:20:00.000000','DD-MM-YYYY HH12:MI:SS.FF PM'),UNIDAD(2,'horas','tiempo','hrs'),'Puntual',null,7,8);
INSERT INTO VUELO VALUES(id_vuelo.nextVal,TO_TIMESTAMP('20-07-2019 3:15:00.000000','DD-MM-YYYY HH12:MI:SS.FF PM'),TO_TIMESTAMP('20-07-2019 3:15:00.000000','DD-MM-YYYY HH12:MI:SS.FF'),TO_TIMESTAMP('15-08-2019 1:20:00.000000','DD-MM-YYYY HH12:MI:SS.FF PM'),UNIDAD(2,'horas','tiempo','hrs'),'Puntual',null,7,8);
INSERT INTO VUELO VALUES(id_vuelo.nextVal,TO_TIMESTAMP('20-07-2019 5:15:00.000000 PM','DD-MM-YYYY HH12:MI:SS.FF PM'),TO_TIMESTAMP('20-07-2019 5:15:00.000000 PM','DD-MM-YYYY HH12:MI:SS.FF PM'),TO_TIMESTAMP('15-08-2019 2:20:00.000000 PM','DD-MM-YYYY HH12:MI:SS.FF PM'),UNIDAD(2,'horas','tiempo','hrs'),'Puntual',null,7,8);
INSERT INTO VUELO VALUES(id_vuelo.nextVal,TO_TIMESTAMP('17-11-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('17-11-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),TO_TIMESTAMP('30-11-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),UNIDAD(2.7,'horas','tiempo','hrs'),'Puntual',null,1,2);

INSERT INTO RESERVA_VUELO VALUES(id_reserva_vuelo.nextVal,RESERVA(TO_DATE('17/11/2019','dd/mm/yyyy'),TO_DATE('30/11/2019','dd/mm/yyyy'),UNIDAD(500,'dolares','monetaria','USD'),'sin pagar'),1,1);
INSERT INTO RESERVA_VUELO VALUES(id_reserva_vuelo.nextVal,RESERVA(TO_DATE('10/10/2019','dd/mm/yyyy'),TO_DATE('10/11/2019','dd/mm/yyyy'),UNIDAD(350,'dolares','monetaria','USD'),'sin pagar'),2,1);
INSERT INTO RESERVA_VUELO VALUES(id_reserva_vuelo.nextVal,RESERVA(TO_DATE('05/01/2019','dd/mm/yyyy'),TO_DATE('31/01/2019','dd/mm/yyyy'),UNIDAD(780,'dolares','monetaria','USD'),'sin pagar'),3,1);
INSERT INTO RESERVA_VUELO VALUES(id_reserva_vuelo.nextVal,RESERVA(TO_DATE('20/07/2019','dd/mm/yyyy'),TO_DATE('15/08/2019','dd/mm/yyyy'),UNIDAD(1000,'dolares','monetaria','USD'),'sin pagar'),4,1);
INSERT INTO RESERVA_VUELO VALUES(id_reserva_vuelo.nextVal,RESERVA(TO_DATE('17/11/2019','dd/mm/yyyy'),TO_DATE('30/11/2019','dd/mm/yyyy'),UNIDAD(500,'dolares','monetaria','USD'),'sin pagar'),5,1);
INSERT INTO RESERVA_VUELO VALUES(id_reserva_vuelo.nextVal,RESERVA(TO_DATE('01/11/2019','dd/mm/yyyy'),TO_DATE('10/11/2019','dd/mm/yyyy'),UNIDAD(500,'dolares','monetaria','USD'),'sin pagar'),6,1);
INSERT INTO RESERVA_VUELO VALUES(id_reserva_vuelo.nextVal,RESERVA(TO_DATE('01/11/2019','dd/mm/yyyy'),TO_DATE('10/11/2019','dd/mm/yyyy'),UNIDAD(750,'dolares','monetaria','USD'),'sin pagar'),7,1);
INSERT INTO RESERVA_VUELO VALUES(id_reserva_vuelo.nextVal,RESERVA(TO_DATE('01/11/2019','dd/mm/yyyy'),TO_DATE('10/11/2019','dd/mm/yyyy'),UNIDAD(750,'dolares','monetaria','USD'),'sin pagar'),8,1);

INSERT INTO DISPONIBILIDAD VALUES(id_disponibilidad.nextVal,UNIDAD(50,'dolares','monetaria','USD'),1,1,1);
INSERT INTO DISPONIBILIDAD VALUES(id_disponibilidad.nextVal,UNIDAD(30,'dolares','monetaria','USD'),167,2,1);
INSERT INTO DISPONIBILIDAD VALUES(id_disponibilidad.nextVal,UNIDAD(150,'dolares','monetaria','USD'),333,3,1);
INSERT INTO DISPONIBILIDAD VALUES(id_disponibilidad.nextVal,UNIDAD(350,'dolares','monetaria','USD'),499,4,1);
INSERT INTO DISPONIBILIDAD VALUES(id_disponibilidad.nextVal,UNIDAD(50,'dolares','monetaria','USD'),1000,8,1);

INSERT INTO PAGO VALUES(id_pago.nextVal,UNIDAD(250,'dolares','monetaria','USD'),TO_TIMESTAMP('17-11-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),UNIDAD(0,'millas','monetaria','milla'),null,1,null,null,1,null,null);
INSERT INTO PAGO VALUES(id_pago.nextVal,UNIDAD(250,'dolares','monetaria','USD'),TO_TIMESTAMP('17-11-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),UNIDAD(0,'millas','monetaria','milla'),null,null,1,null,1,null,null);

INSERT INTO PAGO VALUES(id_pago.nextVal,UNIDAD(1,'dolares','monetaria','USD'),TO_TIMESTAMP('17-11-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),UNIDAD(0,'millas','monetaria','milla'),null,1,null,null,2,null,null);
INSERT INTO PAGO VALUES(id_pago.nextVal,UNIDAD(300,'dolares','monetaria','USD'),TO_TIMESTAMP('17-11-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),UNIDAD(0,'millas','monetaria','milla'),null,null,1,null,2,null,null);
INSERT INTO PAGO VALUES(id_pago.nextVal,UNIDAD(700,'dolares','monetaria','USD'),TO_TIMESTAMP('17-11-2019 11:58:00.000000','DD-MM-YYYY HH24:MI:SS.FF'),UNIDAD(0,'millas','monetaria','milla'),null,1,null,null,2,null,null);





