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

SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO AEROLINEA VALUES (id_aerolinea.nextVal, EMPTY_BLOB(), 'American airline', 'unica') RETURNING logo INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'alitalia.png');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    DBMS_LOB.CLOSE(V_bfile);
    COMMIT;
END;

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

INSERT INTO AVION VALUES (id_avion.nextVal,'B', UNIDAD(840 ,'kilometros/hora','velocidad','KM/H'),UNIDAD(5700,'kilometros','distancia','KM') ,UNIDAD( 12.496,'kilometros','distancia','KM') , UNIDAD(0.0399 ,'kilometros','distancia','KM') , UNIDAD(0.0035 ,'kilometros','distancia','KM') , UNIDAD( 0.0021,'kilometros','distancia','KM') ,2 ,9);


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
INSERT INTO CARRO VALUES(id_carro.nextVal,  'carro poco uso perfecto para viajes', UNIDAD(500,'dolares', 'monetaria', 'usd'), UNIDAD(500,'kilometros', 'distancia', 'km'), LUGAR('VENEZELA','CARACAS','LA GUAIRA','MAIQUETIA',NULL,'gmt 0'),2 8);
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

------------------------------------------------------------------------------------------------------------------------------- Fin de carro-----------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------AEROPUERTO--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'MAIQUETIA', 'mai', UNIDAD(10.59620,'grados','distancia','°'), UNIDAD(-66.95484,'grados','distancia','°'), LUGAR('VENEZELA', 'CARACAS', 'LA GUAIRA', 'MAIQUETIA',null, 'gtm 0'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'TOCUMEN', 'toc', UNIDAD(9.08938,'grados','distancia','°'), UNIDAD(-79.38310,'grados','distancia','°'), LUGAR('PANAMA', 'CIUDAD DE PANAMA', 'CENTRO', 'TOCUMEN',null, 'gtm -1'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'WASHINGTON DULLES', 'was', UNIDAD(38.89511,'grados','distancia','°'), UNIDAD(-77.03636,'grados','distancia','°'), LUGAR('ESTADOS UNIDOS', 'WASHINGTON', 'BUSINESS DISTRICT', 'WASHINGTON DULLES',null, 'gtm -1'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'ADOLFO SUAREZ', 'ado', UNIDAD(40.49181,'grados','distancia','°'), UNIDAD(-3.56948,'grados','distancia','°'), LUGAR('ESPAÑA', 'MADRID', 'BARAJA', 'ADOLFO SUAREZ',null, 'gtm 5'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'HUMBERTO DELGADO', 'hum', UNIDAD(38.77386,'grados','distancia','°'), UNIDAD(-9.12572,'grados','distancia','°'), LUGAR('PORTUGAL', 'LISBOA', 'FEGUESIAS DE OLIVAIS', 'HUMBERTO DELGADO',null, 'gtm +4'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'EZEIZA', 'eze', UNIDAD(-34.84787,'grados','distancia','°'), UNIDAD(-58.52869,'grados','distancia','°'), LUGAR('ARGENTINA', 'BUENOS AIRES', 'OESTE', 'EZEIZA',null, 'gtm+1'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'AEROPUERTO INTERNACIONAL DE PEKIN', 'aer', UNIDAD(40.08011,'grados','distancia','°'), UNIDAD(116.58456,'grados','distancia','°'), LUGAR('CHINA', 'PEKIN', 'DISTRITO CHAOYANG', 'AEROPUERTO INTERNACIONAL DE PEKIN',null, 'gtm+12'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'ARTURO MERINO', 'art', UNIDAD(-36.77265,'grados','distancia','°'), UNIDAD(-73.06311,'grados','distancia','°'), LUGAR('CHILE', 'SANTIAGO DE CHILE', 'OESTE', 'ARTURO MERINO',null, 'gtm+1'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'NARITA', 'mai', UNIDAD(35.68950,'grados','distancia','°'), UNIDAD(139.69171,'grados','distancia','°'), LUGAR('JAPON', 'TOKIO', 'NUEVO TOKIO', 'NARITA',null, 'gtm 12'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'AEROPUERTO DE LONDRE OXFORD', 'alo', UNIDAD(51.50528,'grados','distancia','°'), UNIDAD(0.05528,'grados','distancia','°'), LUGAR('INGLATERRA', 'LONDRES', 'CIUDAD DE OXFORD', 'AEROPUERTO DE LONDRE OXFORD',null, 'gtm+4'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'AEROPUERTO DE BERLIN TEGEL', 'adb', UNIDAD(52.55973,'grados','distancia','°'), UNIDAD(13.28769,'grados','distancia','°'), LUGAR('ALEMANIA', 'BERLIN', 'TEGEL', 'AEROPUERTO DE BERLIN TEGEL',null, 'gtm+5'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'Giovanni Battista', 'gib', UNIDAD(41.79944,'grados','distancia','°'), UNIDAD(12.59722,'grados','distancia','°'), LUGAR('ITALIA', 'ROMA', 'LACIO', 'Giovanni Battista',null, 'gtm+5'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'TORONTO PEARSON', 'top', UNIDAD(43.68611,'grados','distancia','°'), UNIDAD(-79.63333,'grados','distancia','°'), LUGAR('CANADA', 'TORONO', 'OESTE', 'TORONTO PEARSON',null, 'gtm -1'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'BENITO JUAREZ', 'bej', UNIDAD(17.60157,'grados','distancia','°'), UNIDAD(-101.46054,'grados','distancia','°'), LUGAR('MEXICO', 'CIUDAD DE MEXICO', 'VALLE DE MEXICO', 'BENITO JUAREZ',null, 'gtm-2'));
INSERT INTO AEROPUERTO VALUES(id_aeropuerto.nextVal, 'ALCANTIRI SUCRE', 'mai', UNIDAD(-19.24647,'grados','distancia','°'), UNIDAD(-65.15094,'grados','distancia','°'), LUGAR('BOLIVIA', 'CIUDAD DE SUCRE', 'YAMPARAEZ', 'ALCANTIRI SUCRE',null, 'gtm 0'));

--------------------------------------------------------------------------------------FIN AEROPUERTO-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION GenerarAleatorio RETURN NUMBER
IS
    BEGIN
        RETURN ABS(MOD(dbms_random.random,5000))+1000;
    END;

CREATE OR REPLACE TRIGGER TARJETAS 
AFTER INSERT ON USUARIO FOR EACH ROW
DECLARE
    numero number;
BEGIN
    numero := GenerarAleatorio;
    INSERT INTO TARJETA_DEBITO VALUES(id_tarjeta_debito.nextVal, numero, 'Banesco', '01/01/2022', :new.id_usuario);
    numero := GenerarAleatorio;
    INSERT INTO TARJETA_CREDITO VALUES(id_tarjeta_credito.nextVal, numero, 'Mercantil', 'visa', :new.id_usuario );
    INSERT INTO MILLA VALUES(id_milla.nextVal, UNIDAD(0,'millas', 'monetaria', 'milla'),:new.id_usuario );

END;

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

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

------------------------------------------------------------FI USUARIO-------------------------------------------------------------------------------------------------------------------------------



