INSERT INTO MARCA VALUES (id_marca.nextVal,'Boeing','aéreo');
INSERT INTO MARCA VALUES (id_marca.nextVal,'Embraer','aéreo');
INSERT INTO MARCA VALUES (id_marca.nextVal,'Tupolev','aéreo');
INSERT INTO MARCA VALUES (id_marca.nextVal,'Airbus','aéreo');
INSERT INTO MARCA VALUES (id_marca.nextVal,'Ford','terrestre');
INSERT INTO MARCA VALUES (id_marca.nextVal,'Ferrari','terrestre');
INSERT INTO MARCA VALUES (id_marca.nextVal,'BMW','terrestre');
INSERT INTO MARCA VALUES (id_marca.nextVal,'Mercedes-Benz','terrestre');
INSERT INTO MARCA VALUES (id_marca.nextVal,'Cadillac','terrestre');
INSERT INTO MARCA VALUES (id_marca.nextVal,'Peugeot','terrestre');
INSERT INTO MARCA VALUES (id_marca.nextVal,'Suzuki','terrestre');
INSERT INTO MARCA VALUES (id_marca.nextVal,'Honda','terrestre');
/
-----------------------------------------------MODELO------------------------------------------------------------------------------
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO MODELO VALUES (id_modelo.nextVal,'737 MAX 9', 'Avion', EMPTY_BLOB(), 1) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'boeing737max9.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO MODELO VALUES (id_modelo.nextVal,'737-800', 'Avion', EMPTY_BLOB(), 1) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'boeing737-800.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO MODELO VALUES (id_modelo.nextVal,'737-700', 'Avion', EMPTY_BLOB(), 1) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'boeing737-700.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO MODELO VALUES (id_modelo.nextVal,'190AR', 'Avion', EMPTY_BLOB(), 2) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'embraer190ar.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO MODELO VALUES (id_modelo.nextVal,'Tu-204', 'Avion', EMPTY_BLOB(), 3) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'TupolevTu-204.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO MODELO VALUES (id_modelo.nextVal,'A320', 'Avion', EMPTY_BLOB(), 4) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'AirbusA320.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO MODELO VALUES (id_modelo.nextVal,'747', 'Avion', EMPTY_BLOB(), 1) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'Boeing 747.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO MODELO VALUES (id_modelo.nextVal,'mustang 2017', 'Carro', EMPTY_BLOB(), 5) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'mustang2017.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO MODELO VALUES (id_modelo.nextVal,'458 Italia', 'Carro', EMPTY_BLOB(), 6) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'ferrari458italia.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO MODELO VALUES (id_modelo.nextVal,' i8', 'Carro', EMPTY_BLOB(), 7) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'bmwi8.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO MODELO VALUES (id_modelo.nextVal,'Slr', 'Carro', EMPTY_BLOB(), 8) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'mercedesSlr.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO MODELO VALUES (id_modelo.nextVal,'Cts', 'Carro', EMPTY_BLOB(), 9) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'cadillacCts.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO MODELO VALUES (id_modelo.nextVal,'508', 'Carro', EMPTY_BLOB(), 10) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'Peugeot508.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO MODELO VALUES (id_modelo.nextVal,'Swift', 'Carro', EMPTY_BLOB(), 11) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'SuzukiSwift.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO MODELO VALUES (id_modelo.nextVal,'Civic', 'Carro', EMPTY_BLOB(), 12) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'hondaCivic.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
-----------------------------------------------FIN MODELO------------------------------------------------------------------------------
------------------------------------------------AEROLINEA------------------------------------------------------------------------------
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO AEROLINEA VALUES (id_aerolinea.nextVal, EMPTY_BLOB(), 'Air France', 'unica') RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'airfrance.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO AEROLINEA VALUES (id_aerolinea.nextVal, EMPTY_BLOB(), 'Ali Italia', 'unica') RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'alitalia.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO AEROLINEA VALUES (id_aerolinea.nextVal, EMPTY_BLOB(), 'American airline', 'unica') RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'american.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO AEROLINEA VALUES (id_aerolinea.nextVal, EMPTY_BLOB(), 'Ana Inspiration of Japan', 'unica') RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'ana.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO AEROLINEA VALUES (id_aerolinea.nextVal, EMPTY_BLOB(), 'Avianca', 'unica') RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'avianca.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO AEROLINEA VALUES (id_aerolinea.nextVal, EMPTY_BLOB(), 'Cathay Pacific', 'unica') RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'cathay.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO AEROLINEA VALUES (id_aerolinea.nextVal, EMPTY_BLOB(), 'Emirates', 'unica') RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'Emirates.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO AEROLINEA VALUES (id_aerolinea.nextVal, EMPTY_BLOB(), 'Estelar', 'unica') RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'estelar.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO AEROLINEA VALUES (id_aerolinea.nextVal, EMPTY_BLOB(), 'Eva Air', 'unica') RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'eva.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO AEROLINEA VALUES (id_aerolinea.nextVal, EMPTY_BLOB(), 'Hainan Airlines', 'unica') RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'HainanAirlines.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO AEROLINEA VALUES (id_aerolinea.nextVal, EMPTY_BLOB(), 'Lufthansa', 'unica') RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'Lufthansa.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO AEROLINEA VALUES (id_aerolinea.nextVal, EMPTY_BLOB(), 'Qantas Airways', 'unica') RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'QantasAirwayspng.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO AEROLINEA VALUES (id_aerolinea.nextVal, EMPTY_BLOB(), 'Qatar', 'unica') RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'qatar.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO AEROLINEA VALUES (id_aerolinea.nextVal, EMPTY_BLOB(), 'Singapore Airlines', 'unica') RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'SingaporeAirlines.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO AEROLINEA VALUES (id_aerolinea.nextVal, EMPTY_BLOB(), 'Thai Airways', 'unica') RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'ThaiAirways.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
------------------------------------------------FINA AEROLINEA------------------------------------------------------------------------------


----------------------------------------ASIENTOS----------------------------------------------------------------------------------


------------------------------------------------FIN ASIETNOS--------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------AVIONES---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,1);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,1);

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,2);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,2);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,2);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,2);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,2);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,2);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,2);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,2);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,2);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,2);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,2);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,2);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,2);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,2);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,2);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,2);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,2);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,2);

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,3);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,3);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,3);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,3);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,3);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,3);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,3);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,3);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,3);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,3);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,3);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,3);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,3);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,3);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,3);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,3);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,3);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,3);

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,4);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,4);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,4);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,4);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,4);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,4);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,4);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,4);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,4);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,4);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,4);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,4);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,4);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,4);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,4);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,4);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,4);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,4);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,4);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,4);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,4);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,4);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,4);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,4);

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,5);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,5);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,5);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,5);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,5);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,5);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,5);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,5);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,5);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,5);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,5);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,5);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,5);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,5);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,5);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,5);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,5);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,5);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,5);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,5);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,5);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,5);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,6);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,6);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,6);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,6);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,6);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,6);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,6);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,6);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,6);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,6);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,6);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,6);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,6);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,6);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,6);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,6);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,6);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,6);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,6);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,7);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,7);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,7);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,7);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,7);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,7);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,7);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,7);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,7);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,7);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,7);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,7);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,7);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,7);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,7);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,7);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,7);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,7);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,7);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,7);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,7);


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,8);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,8);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,8);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,8);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,8);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,8);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,8);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,8);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,8);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,8);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,8);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,8);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,8);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,8);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,8);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,8);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,8);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,8);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,8);


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,9);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,9);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,9);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,9);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,9);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,9);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,9);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,9);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,9);


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,10);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,10);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,10);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,10);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,10);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,10);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,10);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,10);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,10);


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,11);


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,11);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,11);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,11);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,11);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,11);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,11);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,11);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,11);



-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,12);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,12);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,12);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,12);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,12);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,12);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,12);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,12);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,12);



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,13);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,13);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,13);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,13);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,13);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,13);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,13);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,13);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,13);



---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,14);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,14);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,14);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,14);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,14);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,14);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,14);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,14);



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,1 ,15);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,15);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,15);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,14);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'A', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,14);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'B', UNIDAD(1012 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6000,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0359 ,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.0025,'kilometros','distancia','KM') ,3 ,15);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(1004.5 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(4074,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.03624 ,'kilometros','distancia','KM') , UNIDAD(0.0027 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,4 ,15);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(850 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(6500,'kilometros','distancia','KM') ,UNIDAD(12.1,'kilometros','distancia','KM') , UNIDAD(0.0418,'kilometros','distancia','KM') , UNIDAD(0.0047 ,'kilometros','distancia','KM') , UNIDAD( 0.001,'kilometros','distancia','KM') ,5 ,15);



INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,15);

INSERT INTO AVION(id_avion,serie_modelo,velocidad_max, alcance,altitud_max,envergadura,ancho_cabina,alto_cabina, modelo_id, aerolinea_id) VALUES (id_avion.nextVal,'unico', UNIDAD(871 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(7800,'kilometros','distancia','KM') ,UNIDAD(12.8,'kilometros','distancia','KM') , UNIDAD(0.0341,'kilometros','distancia','KM') , UNIDAD(0.0037 ,'kilometros','distancia','KM') , UNIDAD( 0.002,'kilometros','distancia','KM') ,6 ,15);

----------------------------------------------------------------------------------------------------------------------------FIN AVIONES---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------PROVEEDOR DE CARROS-------------------------------------------------------------
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO PROVEEDOR_CARRO VALUES (id_proveedor_carro.nextVal, 'auto europe' ,EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'autoeurope.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO PROVEEDOR_CARRO VALUES (id_proveedor_carro.nextVal, 'rentalcars' ,EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'rentalcars.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO PROVEEDOR_CARRO VALUES (id_proveedor_carro.nextVal, 'holiday autos' ,EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'holidayautos.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO PROVEEDOR_CARRO VALUES (id_proveedor_carro.nextVal, 'pepecars' ,EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'pepecar.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO PROVEEDOR_CARRO VALUES (id_proveedor_carro.nextVal, 'my trip car' ,EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'mytripcar.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO PROVEEDOR_CARRO VALUES (id_proveedor_carro.nextVal, 'avis' ,EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'avis.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO PROVEEDOR_CARRO VALUES (id_proveedor_carro.nextVal, 'car booking' ,EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'carbooking.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO PROVEEDOR_CARRO VALUES (id_proveedor_carro.nextVal, 'rent car ' ,EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'rentcar.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO PROVEEDOR_CARRO VALUES (id_proveedor_carro.nextVal, 'jetscost' ,EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'jetcost.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO PROVEEDOR_CARRO VALUES (id_proveedor_carro.nextVal, 'enterprise' ,EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'enterprise.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO PROVEEDOR_CARRO VALUES (id_proveedor_carro.nextVal, 'miles carRental' ,EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'milescarrental.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO PROVEEDOR_CARRO VALUES (id_proveedor_carro.nextVal, 'hertz' ,EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'hertz.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO PROVEEDOR_CARRO VALUES (id_proveedor_carro.nextVal, 'happyTourUSA' ,EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'happytourusa.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO PROVEEDOR_CARRO VALUES (id_proveedor_carro.nextVal, 'renting carz' ,EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'rentingcarz.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO PROVEEDOR_CARRO VALUES (id_proveedor_carro.nextVal, 'expedia' ,EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'expedia.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
----------------------------------------------FIN PROVEEDOR DE CARROS------------------------------------------------------------
------------------------------------------------CARROS--------------------------------------------------------------------------

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),1, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),1, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),1, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),1, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),1, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),1, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),1, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),1, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),1, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),1, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),1, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),1, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),1, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),1, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),1, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),1, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),1, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),1, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),1, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),1, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),1, 14);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),1, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),1, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),1, 15);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),1, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),1, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),1, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),1, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),1, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),1, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),1, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),1, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),1, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),1, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),1, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),1, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),1, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),1, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),1, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),1, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),1, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),1, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),1, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),1, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),1, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),1, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),1, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),1, 13);

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),2, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),2, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),2, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),2, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),2, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),2, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),2, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),2, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),2, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),2, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),2, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),2, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),2, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),2, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),2, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),2, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),2, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),2, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),2, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),2, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),2, 14);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),2, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),2, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),2, 15);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),2, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),2, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),2, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),2, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),2, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),2, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),2, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),2, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),2, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),2, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),2, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),2, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),2, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),2, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),2, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),2, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),2, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),2, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),2, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),2, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),2, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),2, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),2, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),2, 13);

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),3, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),3, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),3, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),3, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),3, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),3, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),3, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),3, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),3, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),3, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),3, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),3, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),3, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),3, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),3, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),3, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),3, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),3, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),3, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),3, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),3, 14);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),3, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),3, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),3, 15);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),3, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),3, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),3, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),3, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),3, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),3, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),3, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),3, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),3, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),3, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),3, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),3, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),3, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),3, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),3, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),3, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),3, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),3, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),3, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),3, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),3, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),3, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),3, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),3, 13);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),4, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),4, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),4, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),4, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),4, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),4, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),4, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),4, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),4, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),4, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),4, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),4, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),4, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),4, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),4, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),4, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),4, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),4, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),4, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),4, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),4, 14);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),4, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),4, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),4, 15);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),4, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),4, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),4, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),4, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),4, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),4, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),4, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),4, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),4, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),4, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),4, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),4, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),4, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),4, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),4, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),4, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),4, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),4, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),4, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),4, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),4, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),4, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),4, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),4, 13);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),5, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),5, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),5, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),5, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),5, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),5, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),5, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),5, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),5, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),5, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),5, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),5, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),5, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),5, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),5, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),5, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),5, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),5, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),5, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),5, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),5, 14);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),5, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),5, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),5, 15);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),5, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),5, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),5, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),5, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),5, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),5, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),5, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),5, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),5, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),5, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),5, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),5, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),5, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),5, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),5, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),5, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),5, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),5, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),5, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),5, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),5, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),5, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),5, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),5, 13);

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),6, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),6, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),6, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),6, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),6, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),6, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),6, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),6, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),6, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),6, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),6, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),6, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),6, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),6, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),6, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),6, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),6, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),6, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),6, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),6, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),6, 14);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),6, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),6, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),6, 15);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),6, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),6, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),6, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),6, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),6, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),6, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),6, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),6, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),6, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),6, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),6, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),6, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),6, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),6, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),6, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),6, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),6, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),6, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),6, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),6, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),6, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),6, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),6, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),6, 13);

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),7, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),7, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),7, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),8, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),8, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),8, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),7, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),7, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),7, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),7, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),7, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),7, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),7, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),7, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),7, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),7, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),7, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),7, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),7, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),7, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),7, 14);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),7, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),7, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),7, 15);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),7, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),7, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),7, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),7, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),7, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),7, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),7, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),7, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),7, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),7, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),7, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),7, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),7, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),7, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),7, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),7, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),7, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),7, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),7, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),7, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),7, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),7, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),7, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),7, 13);

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),8, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),8, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),8, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),8, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),8, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),8, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),8, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),8, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),8, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),8, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),8, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),8, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),8, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),8, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),8, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),8, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),8, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),8, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),8, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),8, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),8, 14);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),8, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),8, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),8, 15);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),8, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),8, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),8, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),8, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),8, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),8, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),8, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),8, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),8, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),8, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),8, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),8, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),8, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),8, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),8, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),8, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),8, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),8, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),8, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),8, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),8, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),8, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),8, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),8, 13);

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),9, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),9, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),9, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),9, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),9, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),9, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),9, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),9, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),9, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),9, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),9, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),9, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),9, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),9, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),9, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),9, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),9, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),9, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),9, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),9, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),9, 14);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),9, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),9, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),9, 15);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),9, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),9, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),9, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),9, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),9, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),9, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),9, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),9, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),9, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),9, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),9, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),9, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),9, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),9, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),9, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),9, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),9, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),9, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),9, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),9, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),9, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),9, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),9, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),9, 13);

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),10, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),10, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),10, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),10, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),10, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),10, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),10, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),10, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),10, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),10, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),10, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),10, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),10, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),10, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),10, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),10, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),10, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),10, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),10, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),10, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),10, 14);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),10, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),10, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),10, 15);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),10, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),10, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),10, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),10, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),10, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),10, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),10, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),10, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),10, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),10, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),10, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),10, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),10, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),10, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),10, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),10, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),10, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),10, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),10, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),10, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),10, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),10, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),10, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),10, 13);

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),11, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),11, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),11, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),11, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),11, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),11, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),11, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),11, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),11, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),11, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),11, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),11, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),11, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),11, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),11, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),11, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),11, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),11, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),11, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),11, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),11, 14);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),11, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),11, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),11, 15);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),11, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),11, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),11, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),11, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),11, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),11, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),11, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),11, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),11, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),11, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),11, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),11, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),11, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),11, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),11, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),11, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),11, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),11, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),11, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),11, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),11, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),11, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),11, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),11, 13);

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),12, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),12, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),12, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),12, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),12, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),12, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),12, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),12, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),12, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),12, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),12, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),12, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),12, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),12, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),12, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),12, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),12, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),12, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),12, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),12, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),12, 14);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),12, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),12, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),12, 15);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),12, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),12, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),12, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),12, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),12, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),12, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),12, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),12, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),12, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),12, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),12, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),12, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),12, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),12, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),12, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),12, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),12, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),12, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),12, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),12, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),12, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),12, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),12, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),12, 13);

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),13, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),13, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),13, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),13, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),13, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),13, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),13, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),13, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),13, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),13, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),13, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),13, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),13, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),13, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),13, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),13, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),13, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),13, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),13, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),13, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),13, 14);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),13, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),13, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),13, 15);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),13, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),13, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),13, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),13, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),13, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),13, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),13, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),13, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),13, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),13, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),13, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),13, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),13, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),13, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),13, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),13, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),13, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),13, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),13, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),13, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),13, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),13, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),13, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),13, 13);

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),14, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),14, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),14, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),14, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),14, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),14, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),14, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),14, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),14, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),14, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),14, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),14, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),14, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),14, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),14, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),14, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),14, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),14, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),14, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),14, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),14, 14);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),14, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),14, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),14, 15);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),14, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),14, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),14, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),14, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),14, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),14, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),14, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),14, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),14, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),14, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),14, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),14, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),14, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),14, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),14, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),14, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),14, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),14, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),14, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),14, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),14, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),14, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),14, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),14, 13);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),15, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),15, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),15, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),15, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),15, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PANAMA','CIUDAD DE PANAMA','CENTRO','TOCUMEN',NULL,'gmt-1'),15, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),15, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),15, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(5000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESTADOS UNIDOS','WASHINGTON','BUSINESS DISTRICT','WASHINGTON DULLES',NULL,'gmt-1'),15, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),15, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),15, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ESPAÑA','MADRID','BARAJA','ADOLFO SUAREZ',NULL,'gmt+5'),15, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),15, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),15, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('PORTUGAL','LISBOA','FEGUESIAS DE OLIVAIS','HUMBERTO DELGADO',NULL,'gmt+4'),15, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),15, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),15, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ARGENTINA','BUENOS AIRES','OESTE','EZEIZA',NULL,'gmt+1'),15, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),15, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),15, 14);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHINA','PEKIN','DISTRITO CHAOYANG','AEROPUERTO INTERNACIONAL DE PEKIN',NULL,'gmt+12'),15, 14);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),15, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),15, 15);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(975,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CHILE','SANTIAGO DE CHILE','OESTE','ARTURO MERINO',NULL,'gmt+1'),15, 15);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),15, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),15, 8);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('JAPON','TOKIO','NUEVO TOKIO','NARITA-',NULL,'gmt+12'),15, 8);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),15, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),15, 9);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(7500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('INGLATERRA','LONDRES','CIUDAD DE OXFORD','AEROPUERTO DE LONDRE OXFORD',NULL,'gmt+4'),15, 9);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),15, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),15, 10);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ALEMANIA','BERLIN','TEGEL','AEROPUERTO DE BERLIN TEGEL',NULL,'gmt+5'),15, 10);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),15, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),15, 11);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(6850,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('ITALIA','ROMA','LACIO','Giovanni Battista',NULL,'gmt+5'),15, 11);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),15, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),15, 12);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(8000,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('CANADA','TORONO','OESTE','TORONTO PEARSON',NULL,'gmt-1'),15, 12);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),15, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),15, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),15, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),15, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),15, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('MEXICO','CIUDAD DE MEXICO','VALLE DE MEXICO','BENITO JUAREZ',NULL,'gmt-2'),15, 13);

INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),15, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),15, 13);
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(700,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('BOLIVIA','CIUDAD DE SUCRE','YAMPARAEZ','ALCANTIRI SUCRE',NULL,'gmt0'),15, 13);
/
------------------------------------------------------------------------------------------------------------------------------- Fin de carro-----------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------AEROPUERTO--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'MAIQUETIA', 'mai', UNIDAD(10.59620,'grados','coordenada','°'), UNIDAD(-66.95484,'grados','coordenada','°'), LUGAR('VENEZELA', 'CARACAS', 'LA GUAIRA', 'MAIQUETIA',null, 'gtm 0'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'TOCUMEN', 'toc', UNIDAD(9.08938,'grados','coordenada','°'), UNIDAD(-79.38310,'grados','coordenada','°'), LUGAR('PANAMA', 'CIUDAD DE PANAMA', 'CENTRO', 'TOCUMEN',null, 'gtm -1'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'WASHINGTON DULLES', 'was', UNIDAD(38.89511,'grados','coordenada','°'), UNIDAD(-77.03636,'grados','coordenada','°'), LUGAR('ESTADOS UNIDOS', 'WASHINGTON', 'BUSINESS DISTRICT', 'WASHINGTON DULLES',null, 'gtm -1'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'ADOLFO SUAREZ', 'ado', UNIDAD(40.49181,'grados','coordenada','°'), UNIDAD(-3.56948,'grados','coordenada','°'), LUGAR('ESPAÑA', 'MADRID', 'BARAJA', 'ADOLFO SUAREZ',null, 'gtm 5'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'HUMBERTO DELGADO', 'hum', UNIDAD(38.77386,'grados','coordenada','°'), UNIDAD(-9.12572,'grados','coordenada','°'), LUGAR('PORTUGAL', 'LISBOA', 'FEGUESIAS DE OLIVAIS', 'HUMBERTO DELGADO',null, 'gtm +4'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'EZEIZA', 'eze', UNIDAD(-34.84787,'grados','coordenada','°'), UNIDAD(-58.52869,'grados','coordenada','°'), LUGAR('ARGENTINA', 'BUENOS AIRES', 'OESTE', 'EZEIZA',null, 'gtm+1'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'AEROPUERTO INTERNACIONAL DE PEKIN', 'aer', UNIDAD(40.08011,'grados','coordenada','°'), UNIDAD(116.58456,'grados','coordenada','°'), LUGAR('CHINA', 'PEKIN', 'DISTRITO CHAOYANG', 'AEROPUERTO INTERNACIONAL DE PEKIN',null, 'gtm+12'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'ARTURO MERINO', 'art', UNIDAD(-36.77265,'grados','coordenada','°'), UNIDAD(-73.06311,'grados','coordenada','°'), LUGAR('CHILE', 'SANTIAGO DE CHILE', 'OESTE', 'ARTURO MERINO',null, 'gtm+1'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'NARITA', 'mai', UNIDAD(35.68950,'grados','coordenada','°'), UNIDAD(139.69171,'grados','coordenada','°'), LUGAR('JAPON', 'TOKIO', 'NUEVO TOKIO', 'NARITA',null, 'gtm 12'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'AEROPUERTO DE LONDRE OXFORD', 'alo', UNIDAD(51.50528,'grados','coordenada','°'), UNIDAD(0.05528,'grados','coordenada','°'), LUGAR('INGLATERRA', 'LONDRES', 'CIUDAD DE OXFORD', 'AEROPUERTO DE LONDRE OXFORD',null, 'gtm+4'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'AEROPUERTO DE BERLIN TEGEL', 'adb', UNIDAD(52.55973,'grados','coordenada','°'), UNIDAD(13.28769,'grados','coordenada','°'), LUGAR('ALEMANIA', 'BERLIN', 'TEGEL', 'AEROPUERTO DE BERLIN TEGEL',null, 'gtm+5'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'Giovanni Battista', 'gib', UNIDAD(41.79944,'grados','coordenada','°'), UNIDAD(12.59722,'grados','coordenada','°'), LUGAR('ITALIA', 'ROMA', 'LACIO', 'Giovanni Battista',null, 'gtm+5'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'TORONTO PEARSON', 'top', UNIDAD(43.68611,'grados','coordenada','°'), UNIDAD(-79.63333,'grados','coordenada','°'), LUGAR('CANADA', 'TORONO', 'OESTE', 'TORONTO PEARSON',null, 'gtm -1'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'BENITO JUAREZ', 'bej', UNIDAD(17.60157,'grados','coordenada','°'), UNIDAD(-101.46054,'grados','coordenada','°'), LUGAR('MEXICO', 'CIUDAD DE MEXICO', 'VALLE DE MEXICO', 'BENITO JUAREZ',null, 'gtm-2'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'ALCANTIRI SUCRE', 'mai', UNIDAD(-19.24647,'grados','coordenada','°'), UNIDAD(-65.15094,'grados','coordenada','°'), LUGAR('BOLIVIA', 'CIUDAD DE SUCRE', 'YAMPARAEZ', 'ALCANTIRI SUCRE',null, 'gtm 0'));
/
--------------------------------------------------------------------------------------FIN AEROPUERTO-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------USUARIO----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'robertocarbajales@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Roberto', NULL, 'Carbajale', NULL, '+5841403155625') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario1.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'maximilianohernandez@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Maximiliano', NULL, 'Hernandez', NULL, '+584142341547') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario2.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'rolandoandrade@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Rolando', NULL, 'Andrade', NULL, '+584141478956') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario3.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'anthonyrodriguez@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Anthony', NULL, 'Rodriguez', NULL, '+584147894512') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario4.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'tatosanchez@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Tato', NULL, 'Sanchez', NULL, '+584147412589') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario5.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/

SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'andreadasilva@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Andrea', NULL, 'Da Silva', NULL, '+584147894516') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer1.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'AlbaSanchez@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Alba', NULL, 'Sanchez', NULL, '+584147319842') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer2.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'michellealleyne@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Michelle', NULL, 'Alleyne', NULL, '+584148249137') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer3.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'stephaniecruz@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Stephanie', NULL, 'Cruz', NULL, '+584147025103') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer4.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'carpatinio@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Carolina', NULL, 'Patinio', NULL, '+584140235156') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer5.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'manuelcarbajales@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Manuel', NULL, 'Carbajale', NULL, '+584140254863') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario1.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'albertopereira@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Alberto', NULL, 'Pereira', NULL, '+584141670044') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario2.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'gabrielcostanza@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Gabriel', NULL, 'Costanza', NULL, '+584147410022') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario3.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'nelsoncarrera@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Nelson', NULL, 'Carrera', NULL, '+584149631548') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario4.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'juancamacho@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Juan', NULL, 'Camacho', NULL, '+58414730156') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario5.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'laylastopler@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Layla', NULL, 'Stople', NULL, '+584147365599') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer1.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'karlavalente@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Karla', NULL, 'Valente', NULL, '+584141450326') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer2.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'valentinasaavedra@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Valentina', NULL, 'Saavedra', NULL, '+584147894561') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer3.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'stefaniaorfao@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Stefania', NULL, 'Orfao', NULL, '+584141599865') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer4.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'lilianamartel@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Liliana', NULL, 'Martel', NULL, '+584141415686') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer5.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'vincentdicosola@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Vincent', NULL, 'Di Cosola', NULL, '+584144456963') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario1.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'alfredoperez@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Alfredo', NULL, 'Perez', NULL, '+584147789591') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario2.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'santiagogomez@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Santiago', NULL, 'Gomez', NULL, '+584143157012') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario3.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'hectorrojas@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Hector', NULL, 'Rojas', NULL, '+584141231415') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario4.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'migueliglesias@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Miguel', NULL, 'Iglesias', NULL, '+584144568520') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario5.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'mariaplaza@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Maria', NULL, 'Plaza', NULL, '+58414249531') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer1.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'julietamerino@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Julieta', NULL, 'Merino', NULL, '+584148451568') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer2.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'mariavargas@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Maria', NULL, 'Vargas', NULL, '+584143358801') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer3.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'ismeldazabala@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Ismelda', NULL, 'Zabala', NULL, '+584145264515') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer4.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'vanessacordaba@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Vanessa', NULL, 'Cordoba', NULL, '+584146321212') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer5.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'yorfranbastidas@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Yorfran', NULL, 'Bastidas', NULL, '+584146405037') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario1.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'rodrigoPerez@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Rodrigo', NULL, 'Perez', NULL, '+58414542186') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario2.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'ricardoandueza@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Ricardo', NULL, 'Andueza', NULL, '+584143128645') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario3.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'randyparedes@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Randy', NULL, 'Paredes', NULL, '+584147154521') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario4.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'rafaelvillaseñor@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Rafael', NULL, 'Villaseñor', NULL, '+584144568520') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuario5.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'silviamartinez@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Silvia', NULL, 'Martinez', NULL, '+584148795245') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer1.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'orianaguerra@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Oriana', NULL, 'Guerra', NULL, '+5841445613579') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer2.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'nicadicosola@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Nica', NULL, 'Di Cosola', NULL, '+584141478523') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer3.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'marietaromero@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Marieta', NULL, 'Romero', NULL, '+58414456636') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer4.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO USUARIO VALUES (id_usuario.nextVal, 'lourdesrodil@gmail.com', 'agente86' ,EMPTY_BLOB(), 'Lourdes', NULL, 'Rodil', NULL, '+584147878787') RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usuariomujer5.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
------------------------------------------------------------FI USUARIO-------------------------------------------------------------------------------------------------------------------------------

/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Burj Al Arab',EMPTY_BLOB(),'5',LUGAR('Emiratos Arabes Unidos','Dubai','Jumeirah Beach Road','Jumeirah St','111','GMT+4')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'burj-al-arab.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'President Wilson',EMPTY_BLOB(),'5',LUGAR('Suiza','Ginebra',' Quai Wilson 47','Ginebra','1211','GMT+1')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'president-wilson.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Atlantis',EMPTY_BLOB(),'5',LUGAR('Emiratos Arabes Unidos','Dubai','Crescent Rd','Dubai','111','GMT+4')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'the-atlantis.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Four Season Hotel George V',EMPTY_BLOB(),'5',LUGAR('Francia','Paris','31 Avenue George V','Paris','75008','GMT+1')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'four-season-hotel-george-v.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Hotel de Glace',EMPTY_BLOB(),'5',LUGAR('Canada','Quebec','1860 Boulevard Valcartier','Quebec','G0A 4S0','GMT-5')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'hotel-de-glace.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Palms Casino Resort',EMPTY_BLOB(),'5',LUGAR('Estados Unidos','Las Vegas','4321 W Flamingo Rd','Las Vegas','NV 89103','GMT-8')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'palms-casino-resort.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Mandarin Oriental',EMPTY_BLOB(),'5',LUGAR('Estados Unidos','New York','80 Columbus Cir','New York','NY 10023','GMT-5')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'mandarin-oriental.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Fairmmont Kea Lani Maui',EMPTY_BLOB(),'5',LUGAR('Estados Unidos','Wailea','4100 Wailea Alanui Dr','Wailea','HI 96753','GMT-10')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'fairmont-kea-lani-maui.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Park Hyatt',EMPTY_BLOB(),'5',LUGAR('Francia','Paris','5 Rue de la Paix','Paris','75002','GMT+1')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'fairmont-kea-lani-maui.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'The Raj Palace',EMPTY_BLOB(),'5',LUGAR('India','Jaipur','Jorawar Singh Gate','Jaipur','302002','GMT+5:30')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'the-raj-palace.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Bora Bora Resort',EMPTY_BLOB(),'5',LUGAR('Francia','Bora Bora','St. Regis','Bora Bora','98714 ','GMT-10')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'bora-bora.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Hotel Tamanaco',EMPTY_BLOB(),'5',LUGAR('Venezuela','Caracas','Av.Ppal de las Mercedes','Caracas','1060','GMT-4')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'tamanaco.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Macuto Sheraton',EMPTY_BLOB(),'5',LUGAR('Venezuela','Caraballeda','Av.Ppal de Caraballeda','Caraballeda','1165','GMT-4')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'macuto-sheraton.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Eurobuilding',EMPTY_BLOB(),'5',LUGAR('Venezuela','Caracas','Calle La Guairita','Caracas','1061','GMT-4')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'eurobuilding.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Hotel Aladdin',EMPTY_BLOB(),'5',LUGAR('Venezuela','Caracas','Av Guaicaipuro','Caracas','1061','GMT-4')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'aladdin.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
---------------------------------------------HABITACION------------------------------------------------------------------------

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,10,1,'King',UNIDAD(10000,'dolar','monetaria','usd'),1);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,11,2,'Twin',UNIDAD(5000,'dolar','monetaria','usd'),1);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,1,4,'Individual',UNIDAD(1000,'dolar','monetaria','usd'),1);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,2,5,'King',UNIDAD(10000,'dolar','monetaria','usd'),1);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,1,'Quad',UNIDAD(2500,'dolar','monetaria','usd'),1);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,15,1,'King',UNIDAD(10000,'dolar','monetaria','usd'),2);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,6,2,'Double',UNIDAD(4000,'dolar','monetaria','usd'),2);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,9,3,'Queen',UNIDAD(7800,'dolar','monetaria','usd'),2);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,1,4,'King',UNIDAD(15000,'dolar','monetaria','usd'),2);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,5,'Individual',UNIDAD(1250,'dolar','monetaria','usd'),2);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,2,7,'Triple',UNIDAD(3500,'dolar','monetaria','usd'),3);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,13,7,'King',UNIDAD(12500,'dolar','monetaria','usd'),3);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,19,8,'Twin',UNIDAD(1360,'dolar','monetaria','usd'),3);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,3,9,'Individual',UNIDAD(1250,'dolar','monetaria','usd'),3);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,1,'King',UNIDAD(12300,'dolar','monetaria','usd'),3);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,6,1,'Individual',UNIDAD(3000,'dolar','monetaria','usd'),4);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,7,2,'Double',UNIDAD(4000,'dolar','monetaria','usd'),4);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,2,3,'Quad',UNIDAD(7500,'dolar','monetaria','usd'),4);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,6,6,'Quad',UNIDAD(7500,'dolar','monetaria','usd'),4);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,9,1,'Triple',UNIDAD(5600,'dolar','monetaria','usd'),4);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,2,1,'Individual',UNIDAD(2600,'dolar','monetaria','usd'),5);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,3,2,'Twin',UNIDAD(6000,'dolar','monetaria','usd'),5);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,1,'Queen',UNIDAD(9000,'dolar','monetaria','usd'),5);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,6,4,'King',UNIDAD(12600,'dolar','monetaria','usd'),5);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,8,3,'King',UNIDAD(12600,'dolar','monetaria','usd'),5);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(9000,'dolar','monetaria','usd'),6);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,5,3,'King',UNIDAD(9000,'dolar','monetaria','usd'),6);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,8,2,'Double',UNIDAD(6000,'dolar','monetaria','usd'),6);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,9,1,'Quad',UNIDAD(7500,'dolar','monetaria','usd'),6);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,5,5,'Triple',UNIDAD(6700,'dolar','monetaria','usd'),6);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,2,1,'Individual',UNIDAD(1250,'dolar','monetaria','usd'),7);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,1,2,'Quad',UNIDAD(4500,'dolar','monetaria','usd'),7);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,7,2,'Double',UNIDAD(2680,'dolar','monetaria','usd'),7);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,10,2,'King',UNIDAD(15000,'dolar','monetaria','usd'),7);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,15,1,'King',UNIDAD(15700,'dolar','monetaria','usd'),7);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,14,4,'King',UNIDAD(12300,'dolar','monetaria','usd'),8);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,13,2,'Queen',UNIDAD(11000,'dolar','monetaria','usd'),8);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,12,1,'Quad',UNIDAD(9000,'dolar','monetaria','usd'),8);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,11,5,'Triple',UNIDAD(8600,'dolar','monetaria','usd'),8);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,10,1,'Twin',UNIDAD(12000,'dolar','monetaria','usd'),8);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,9,1,'Twin',UNIDAD(9000,'dolar','monetaria','usd'),9);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,1,2,'King',UNIDAD(12000,'dolar','monetaria','usd'),9);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,5,1,'Double',UNIDAD(3600,'dolar','monetaria','usd'),9);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,3,2,'Twin',UNIDAD(9000,'dolar','monetaria','usd'),9);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Individual',UNIDAD(2300,'dolar','monetaria','usd'),9);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Triple',UNIDAD(8000,'dolar','monetaria','usd'),10);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15000,'dolar','monetaria','usd'),10);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Queen',UNIDAD(14500,'dolar','monetaria','usd'),10);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15000,'dolar','monetaria','usd'),10);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Individual',UNIDAD(1500,'dolar','monetaria','usd'),10);
/
----------------------------------------HOTEL-------------------------------------------------------------------------------------
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Burj Al Arab',EMPTY_BLOB(),'5',LUGAR('Emiratos Arabes Unidos','Dubai','Jumeirah Beach Road','Jumeirah St','111','GMT+4')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'burj-al-arab.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'President Wilson',EMPTY_BLOB(),'5',LUGAR('Suiza','Ginebra',' Quai Wilson 47','Ginebra','1211','GMT+1')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'president-wilson.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Atlantis',EMPTY_BLOB(),'5',LUGAR('Emiratos Arabes Unidos','Dubai','Crescent Rd','Dubai','111','GMT+4')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'the-atlantis.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Four Season Hotel George V',EMPTY_BLOB(),'5',LUGAR('Francia','Paris','31 Avenue George V','Paris','75008','GMT+1')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'four-season-hotel-george-v.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Hotel de Glace',EMPTY_BLOB(),'5',LUGAR('Canada','Quebec','1860 Boulevard Valcartier','Quebec','G0A 4S0','GMT-5')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'hotel-de-glace.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Palms Casino Resort',EMPTY_BLOB(),'5',LUGAR('Estados Unidos','Las Vegas','4321 W Flamingo Rd','Las Vegas','NV 89103','GMT-8')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'palms-casino-resort.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Mandarin Oriental',EMPTY_BLOB(),'5',LUGAR('Estados Unidos','New York','80 Columbus Cir','New York','NY 10023','GMT-5')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'mandarin-oriental.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Fairmmont Kea Lani Maui',EMPTY_BLOB(),'5',LUGAR('Estados Unidos','Wailea','4100 Wailea Alanui Dr','Wailea','HI 96753','GMT-10')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'fairmont-kea-lani-maui.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Park Hyatt',EMPTY_BLOB(),'5',LUGAR('Francia','Paris','5 Rue de la Paix','Paris','75002','GMT+1')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'fairmont-kea-lani-maui.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'The Raj Palace',EMPTY_BLOB(),'5',LUGAR('India','Jaipur','Jorawar Singh Gate','Jaipur','302002','GMT+5:30')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'the-raj-palace.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Bora Bora Resort',EMPTY_BLOB(),'5',LUGAR('Francia','Bora Bora','St. Regis','Bora Bora','98714 ','GMT-10')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'bora-bora.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Hotel Tamanaco',EMPTY_BLOB(),'5',LUGAR('Venezuela','Caracas','Av.Ppal de las Mercedes','Caracas','1060','GMT-4')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'tamanaco.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Macuto Sheraton',EMPTY_BLOB(),'5',LUGAR('Venezuela','Caraballeda','Av.Ppal de Caraballeda','Caraballeda','1165','GMT-4')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'macuto-sheraton.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Eurobuilding',EMPTY_BLOB(),'5',LUGAR('Venezuela','Caracas','Calle La Guairita','Caracas','1061','GMT-4')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'eurobuilding.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO HOTEL VALUES (id_hotel.nextVal,'Hotel Aladdin',EMPTY_BLOB(),'5',LUGAR('Venezuela','Caracas','Av Guaicaipuro','Caracas','1061','GMT-4')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'aladdin.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/

---------------------------------------------HABITACION------------------------------------------------------------------------

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,10,1,'King',UNIDAD(10000,'dolar','monetaria','usd'),1);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,11,2,'Twin',UNIDAD(5000,'dolar','monetaria','usd'),1);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,1,4,'Individual',UNIDAD(1000,'dolar','monetaria','usd'),1);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,2,5,'King',UNIDAD(10000,'dolar','monetaria','usd'),1);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,1,'Quad',UNIDAD(2500,'dolar','monetaria','usd'),1);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,15,1,'King',UNIDAD(10000,'dolar','monetaria','usd'),2);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,6,2,'Double',UNIDAD(4000,'dolar','monetaria','usd'),2);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,9,3,'Queen',UNIDAD(7800,'dolar','monetaria','usd'),2);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,1,4,'King',UNIDAD(15000,'dolar','monetaria','usd'),2);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,5,'Individual',UNIDAD(1250,'dolar','monetaria','usd'),2);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,2,7,'Triple',UNIDAD(3500,'dolar','monetaria','usd'),3);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,13,7,'King',UNIDAD(12500,'dolar','monetaria','usd'),3);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,19,8,'Twin',UNIDAD(1360,'dolar','monetaria','usd'),3);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,3,9,'Individual',UNIDAD(1250,'dolar','monetaria','usd'),3);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,1,'King',UNIDAD(12300,'dolar','monetaria','usd'),3);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,6,1,'Individual',UNIDAD(3000,'dolar','monetaria','usd'),4);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,7,2,'Double',UNIDAD(4000,'dolar','monetaria','usd'),4);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,2,3,'Quad',UNIDAD(7500,'dolar','monetaria','usd'),4);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,6,6,'Quad',UNIDAD(7500,'dolar','monetaria','usd'),4);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,9,1,'Triple',UNIDAD(5600,'dolar','monetaria','usd'),4);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,2,1,'Individual',UNIDAD(2600,'dolar','monetaria','usd'),5);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,3,2,'Twin',UNIDAD(6000,'dolar','monetaria','usd'),5);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,1,'Queen',UNIDAD(9000,'dolar','monetaria','usd'),5);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,6,4,'King',UNIDAD(12600,'dolar','monetaria','usd'),5);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,8,3,'King',UNIDAD(12600,'dolar','monetaria','usd'),5);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(9000,'dolar','monetaria','usd'),6);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,5,3,'King',UNIDAD(9000,'dolar','monetaria','usd'),6);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,8,2,'Double',UNIDAD(6000,'dolar','monetaria','usd'),6);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,9,1,'Quad',UNIDAD(7500,'dolar','monetaria','usd'),6);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,5,5,'Triple',UNIDAD(6700,'dolar','monetaria','usd'),6);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,2,1,'Individual',UNIDAD(1250,'dolar','monetaria','usd'),7);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,1,2,'Quad',UNIDAD(4500,'dolar','monetaria','usd'),7);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,7,2,'Double',UNIDAD(2680,'dolar','monetaria','usd'),7);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,10,2,'King',UNIDAD(15000,'dolar','monetaria','usd'),7);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,15,1,'King',UNIDAD(15700,'dolar','monetaria','usd'),7);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,14,4,'King',UNIDAD(12300,'dolar','monetaria','usd'),8);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,13,2,'Queen',UNIDAD(11000,'dolar','monetaria','usd'),8);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,12,1,'Quad',UNIDAD(9000,'dolar','monetaria','usd'),8);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,11,5,'Triple',UNIDAD(8600,'dolar','monetaria','usd'),8);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,10,1,'Twin',UNIDAD(12000,'dolar','monetaria','usd'),8);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,9,1,'Twin',UNIDAD(9000,'dolar','monetaria','usd'),9);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,1,2,'King',UNIDAD(12000,'dolar','monetaria','usd'),9);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,5,1,'Double',UNIDAD(3600,'dolar','monetaria','usd'),9);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,3,2,'Twin',UNIDAD(9000,'dolar','monetaria','usd'),9);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Individual',UNIDAD(2300,'dolar','monetaria','usd'),9);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Triple',UNIDAD(8000,'dolar','monetaria','usd'),10);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15000,'dolar','monetaria','usd'),10);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Queen',UNIDAD(14500,'dolar','monetaria','usd'),10);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15000,'dolar','monetaria','usd'),10);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Individual',UNIDAD(1500,'dolar','monetaria','usd'),10);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15600,'dolar','monetaria','usd'),11);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Triple',UNIDAD(9000,'dolar','monetaria','usd'),11);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Triple',UNIDAD(9000,'dolar','monetaria','usd'),11);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Twin',UNIDAD(5500,'dolar','monetaria','usd'),11);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Individual',UNIDAD(2000,'dolar','monetaria','usd'),11);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15000,'dolar','monetaria','usd'),12);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Triple',UNIDAD(6500,'dolar','monetaria','usd'),12);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Queen',UNIDAD(14000,'dolar','monetaria','usd'),12);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Queen',UNIDAD(14000,'dolar','monetaria','usd'),12);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Individual',UNIDAD(1256,'dolar','monetaria','usd'),12);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Queen',UNIDAD(14600,'dolar','monetaria','usd'),13);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Twin',UNIDAD(4500,'dolar','monetaria','usd'),13);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15600,'dolar','monetaria','usd'),13);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Twin',UNIDAD(4500,'dolar','monetaria','usd'),13);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Individual',UNIDAD(2500,'dolar','monetaria','usd'),13);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Queen',UNIDAD(14000,'dolar','monetaria','usd'),14);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Triple',UNIDAD(5000,'dolar','monetaria','usd'),14);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Twin',UNIDAD(2560,'dolar','monetaria','usd'),14);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Individual',UNIDAD(1250,'dolar','monetaria','usd'),14);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15000,'dolar','monetaria','usd'),14);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Individual',UNIDAD(2500,'dolar','monetaria','usd'),15);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15800,'dolar','monetaria','usd'),15);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15800,'dolar','monetaria','usd'),15);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15800,'dolar','monetaria','usd'),15);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Queen',UNIDAD(14700,'dolar','monetaria','usd'),15);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15600,'dolar','monetaria','usd'),11);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Triple',UNIDAD(9000,'dolar','monetaria','usd'),11);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Triple',UNIDAD(9000,'dolar','monetaria','usd'),11);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Twin',UNIDAD(5500,'dolar','monetaria','usd'),11);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Individual',UNIDAD(2000,'dolar','monetaria','usd'),11);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15000,'dolar','monetaria','usd'),12);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Triple',UNIDAD(6500,'dolar','monetaria','usd'),12);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Queen',UNIDAD(14000,'dolar','monetaria','usd'),12);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Queen',UNIDAD(14000,'dolar','monetaria','usd'),12);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Individual',UNIDAD(1256,'dolar','monetaria','usd'),12);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Queen',UNIDAD(14600,'dolar','monetaria','usd'),13);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Twin',UNIDAD(4500,'dolar','monetaria','usd'),13);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15600,'dolar','monetaria','usd'),13);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Twin',UNIDAD(4500,'dolar','monetaria','usd'),13);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Individual',UNIDAD(2500,'dolar','monetaria','usd'),13);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Queen',UNIDAD(14000,'dolar','monetaria','usd'),14);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Triple',UNIDAD(5000,'dolar','monetaria','usd'),14);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Twin',UNIDAD(2560,'dolar','monetaria','usd'),14);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Individual',UNIDAD(1250,'dolar','monetaria','usd'),14);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15000,'dolar','monetaria','usd'),14);

INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Individual',UNIDAD(2500,'dolar','monetaria','usd'),15);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15800,'dolar','monetaria','usd'),15);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15800,'dolar','monetaria','usd'),15);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'King',UNIDAD(15800,'dolar','monetaria','usd'),15);
INSERT INTO HABITACION VALUES (id_habitacion.nextVal,4,3,'Queen',UNIDAD(14700,'dolar','monetaria','usd'),15);

select * from hotel
----------------------------------APARTAMENTO CON CARACTERISTICA----------------------------------------------------------------
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO APARTAMENTO VALUES (id_apartamento.nextVal,'Cob Cottage',EMPTY_BLOB(),1,1,UNIDAD(120,'dolar','monetaria','usd'),LUGAR('Columbia Britanica','Mayne Island','Horton Bay Rd','Mayne Island','V0N 2J0','GMT-8')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'cob-cottage.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Cocina','Cocina completa',1,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Wifi','Wifi privado',1,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Calefaccion','Calefaccion funcional',1,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Estacionamiento','Estacionamiento gratuito',1,null,null);
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO APARTAMENTO VALUES (id_apartamento.nextVal,'I Sette Coni',EMPTY_BLOB(),1,1,UNIDAD(72,'dolar','monetaria','usd'),LUGAR('Italia','Specchiaruzzo','Contrada Difesa','Specchiaruzzo','72017','GMT+1')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'sette-coni.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Alojamiento','Dispondras de toda la vivienda(casa) para ti',2,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Impecable','Huéspedes han dicho que está impecable.',2,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Superhost','Valoraciones excelentes',2,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Ubicacion','Huéspedes han valorado con 5 estrellas.',2,null,null);
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO APARTAMENTO VALUES (id_apartamento.nextVal,'Estudio en Sol',EMPTY_BLOB(),5,5,UNIDAD(70,'dolar','monetaria','usd'),LUGAR('Espania','Madrid','Puerta del sol','Madrid','28001','GMT+1')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'sol.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Alojamiento','Dispondras de toda la vivienda(casa) para ti',3,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Ubicacion','Huéspedes han valorado su ubicacion.',3,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Proceso','Valoraciones excelentes',3,null,null);
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO APARTAMENTO VALUES (id_apartamento.nextVal,'Gran Vía',EMPTY_BLOB(),3,1,UNIDAD(61,'dolar','monetaria','usd'),LUGAR('Espania','Madrid','Calle Gran Via','Madrid','28001','GMT+1')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'sol.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Alojamiento','Dispondras de toda la vivienda(casa) para ti',4,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Ubicacion','Huéspedes han valorado su ubicacion.',4,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Proceso','Valoraciones excelentes',4,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Superhost','Valoraciones excelentes',4,null,null);
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO APARTAMENTO VALUES (id_apartamento.nextVal,'Cottage',EMPTY_BLOB(),3,1,UNIDAD(100,'dolar','monetaria','usd'),LUGAR('Estados Unidos','Miami','NE 6th Ave','Miami','33101','GMT-5')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'cottage.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Alojamiento','Dispondras de toda la vivienda(casa) para ti',5,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Ubicacion','Huéspedes han valorado su ubicacion.',5,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Superhost','Valoraciones excelentes',5,null,null);
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO APARTAMENTO VALUES (id_apartamento.nextVal,'Hector Cave',EMPTY_BLOB(),1,3,UNIDAD(436,'dolar','monetaria','usd'),LUGAR('Grecia','Santorini','Epa Od Firon-las','Santorini','84700','GMT+2')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'hector-cave.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Alojamiento','Dispondras de toda la vivienda(casa) para ti',6,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Ubicacion','Huéspedes han valorado su ubicacion.',6,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Superhost','Valoraciones excelentes',6,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Impecable','Huéspedes han dicho que está impecable.',6,null,null);
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO APARTAMENTO VALUES (id_apartamento.nextVal,'Fiori',EMPTY_BLOB(),1,3,UNIDAD(105,'dolar','monetaria','usd'),LUGAR('Italia','Roma','Piazza venecia','Roma','04100','GMT+1')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'fiori.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Alojamiento','Dispondras de toda la vivienda(casa) para ti',7,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Ubicacion','Huéspedes han valorado su ubicacion.',7,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Superhost','Valoraciones excelentes',7,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Impecable','Huéspedes han dicho que está impecable.',7,null,null);
/
----------------------------------------------ASEGURADORA-----------------------------------------------------------------------
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'La Internacional',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'la-internacional.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'Mercantil Seguros',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'mercantil-seguros.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'Insurance Advisor Group',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'insurance-group.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'Vivir Seguros',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'vivir.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'Multinacional de Seguros',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'multinacional.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'Marival Insurance',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'marival.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'USA-ASSIST',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usa-assist.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'Prudential',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'prudential.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'MetLife',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'metlife.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'Pacific Life',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'pacific-life.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
----------------------------------APARTAMENTO CON CARACTERISTICA----------------------------------------------------------------
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO APARTAMENTO VALUES (id_apartamento.nextVal,'Cob Cottage',EMPTY_BLOB(),1,1,UNIDAD(120,'dolar','monetaria','usd'),LUGAR('Columbia Britanica','Mayne Island','Horton Bay Rd','Mayne Island','V0N 2J0','GMT-8')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'cob-cottage.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Cocina','Cocina completa',1,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Wifi','Wifi privado',1,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Calefaccion','Calefaccion funcional',1,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Estacionamiento','Estacionamiento gratuito',1,null,null);
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO APARTAMENTO VALUES (id_apartamento.nextVal,'I Sette Coni',EMPTY_BLOB(),1,1,UNIDAD(72,'dolar','monetaria','usd'),LUGAR('Italia','Specchiaruzzo','Contrada Difesa','Specchiaruzzo','72017','GMT+1')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'sette-coni.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Alojamiento','Dispondras de toda la vivienda(casa) para ti',2,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Impecable','Huéspedes han dicho que está impecable.',2,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Superhost','Valoraciones excelentes',2,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Ubicacion','Huéspedes han valorado con 5 estrellas.',2,null,null);
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO APARTAMENTO VALUES (id_apartamento.nextVal,'Estudio en Sol',EMPTY_BLOB(),5,5,UNIDAD(70,'dolar','monetaria','usd'),LUGAR('Espania','Madrid','Puerta del sol','Madrid','28001','GMT+1')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'sol.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Alojamiento','Dispondras de toda la vivienda(casa) para ti',3,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Ubicacion','Huéspedes han valorado su ubicacion.',3,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Proceso','Valoraciones excelentes',3,null,null);
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO APARTAMENTO VALUES (id_apartamento.nextVal,'Gran Vía',EMPTY_BLOB(),3,1,UNIDAD(61,'dolar','monetaria','usd'),LUGAR('Espania','Madrid','Calle Gran Via','Madrid','28001','GMT+1')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'sol.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Alojamiento','Dispondras de toda la vivienda(casa) para ti',4,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Ubicacion','Huéspedes han valorado su ubicacion.',4,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Proceso','Valoraciones excelentes',4,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Superhost','Valoraciones excelentes',4,null,null);
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO APARTAMENTO VALUES (id_apartamento.nextVal,'Cottage',EMPTY_BLOB(),3,1,UNIDAD(100,'dolar','monetaria','usd'),LUGAR('Estados Unidos','Miami','NE 6th Ave','Miami','33101','GMT-5')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'cottage.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Alojamiento','Dispondras de toda la vivienda(casa) para ti',5,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Ubicacion','Huéspedes han valorado su ubicacion.',5,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Superhost','Valoraciones excelentes',5,null,null);
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO APARTAMENTO VALUES (id_apartamento.nextVal,'Hector Cave',EMPTY_BLOB(),1,3,UNIDAD(436,'dolar','monetaria','usd'),LUGAR('Grecia','Santorini','Epa Od Firon-las','Santorini','84700','GMT+2')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'hector-cave.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Alojamiento','Dispondras de toda la vivienda(casa) para ti',6,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Ubicacion','Huéspedes han valorado su ubicacion.',6,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Superhost','Valoraciones excelentes',6,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Impecable','Huéspedes han dicho que está impecable.',6,null,null);
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO APARTAMENTO VALUES (id_apartamento.nextVal,'Fiori',EMPTY_BLOB(),1,3,UNIDAD(105,'dolar','monetaria','usd'),LUGAR('Italia','Roma','Piazza venecia','Roma','04100','GMT+1')) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'fiori.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Alojamiento','Dispondras de toda la vivienda(casa) para ti',7,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Ubicacion','Huéspedes han valorado su ubicacion.',7,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Superhost','Valoraciones excelentes',7,null,null);
INSERT INTO CARACTERISTICA VALUES(id_caracteristica.nextVal,'Impecable','Huéspedes han dicho que está impecable.',7,null,null);
/
----------------------------------------------ASEGURADORA-----------------------------------------------------------------------
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'La Internacional',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'la-internacional.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'Mercantil Seguros',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'mercantil-seguros.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'Insurance Advisor Group',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'insurance-group.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'Vivir Seguros',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'vivir.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'Multinacional de Seguros',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'multinacional.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'Marival Insurance',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'marival.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'USA-ASSIST',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'usa-assist.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'Prudential',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'prudential.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'MetLife',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'metlife.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO ASEGURADORA VALUES (id_aseguradora.nextVal,'Pacific Life',EMPTY_BLOB()) RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'pacific-life.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;
/

--------------------------------------------SERVICIO--------------------------------------------------
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Gastos medicos',UNIDAD(350,'dolar','monetaria','usd'));
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Repatriacion',UNIDAD(1250,'dolar','monetaria','usd'));
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Transporte de Heridos',UNIDAD(200,'dolar','monetaria','usd'));
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Demora',UNIDAD(35,'dolar','monetaria','usd'));
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Robo',UNIDAD(35,'dolar','monetaria','usd'));
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Extravio de equipaje',UNIDAD(35,'dolar','monetaria','usd'));
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Prolongacion de estancia en hotal',UNIDAD(650,'dolar','monetaria','usd'));
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Cobertura por fallecimeinto',UNIDAD(350,'dolar','monetaria','usd'));
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Responsabilidad civil',UNIDAD(200,'dolar','monetaria','usd'));
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Asistencia legal',UNIDAD(1250,'dolar','monetaria','usd'));
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Traslado sanitario',UNIDAD(600,'dolar','monetaria','usd'));
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Anulacion de viaje',UNIDAD(100,'dolar','monetaria','usd'));
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Fallecimiento accidental',UNIDAD(1000,'dolar','monetaria','usd'));
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Envio de medicamentos',UNIDAD(50,'dolar','monetaria','usd'));
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Otros imprevistos',UNIDAD(100,'dolar','monetaria','usd'));
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Retorno anticipado',UNIDAD(35,'dolar','monetaria','usd'));
INSERT INTO SERVICIO VALUES(id_servicio.nextVal,'Servicio de traduccion',UNIDAD(60,'dolar','monetaria','usd'));

