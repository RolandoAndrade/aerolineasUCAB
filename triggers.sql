CREATE OR REPLACE TRIGGER asignacion AFTER INSERT ON AVION FOR EACH ROW
BEGIN
IF (:new.modelo_id = 1) THEN 
BEGIN
    insertarAsientos(:new.id_avion, 16, 'primera clase', 1500,0 );
    insertarAsientos(:new.id_avion, 24, 'economy extra', 1000,16);
    insertarAsientos(:new.id_avion, 126, 'cabina prin', 500,40); 
END;
ELSIF (:new.modelo_id = 2 AND :new.serie_modelo = 'A')THEN
BEGIN
     insertarAsientos(:new.id_avion, 16, 'primera clase', 1500,0);
     insertarAsientos(:new.id_avion, 144, 'cabina prin', 500,16); 
END;
ELSIF (:new.modelo_id = 2 AND :new.serie_modelo = 'B')THEN
BEGIN
     insertarAsientos(:new.id_avion, 16, 'primera clase', 15000,0);
     insertarAsientos(:new.id_avion, 138, 'cabina prin', 500,16); 
END;
ELSIF (:new.modelo_id = 3 AND :new.serie_modelo = 'A')THEN
BEGIN
     insertarAsientos(:new.id_avion, 12, 'primera clase', 1500,0);
     insertarAsientos(:new.id_avion, 112, 'cabina prin', 500,12); 
END;
ELSIF (:new.modelo_id = 3 AND :new.serie_modelo = 'B')THEN
BEGIN
     insertarAsientos(:new.id_avion, 14, 'primera clase', 1500,0);
     insertarAsientos(:new.id_avion, 115, 'cabina prin', 500,14); 
END;
ELSIF (:new.modelo_id = 4)THEN
BEGIN
     insertarAsientos(:new.id_avion, 10, 'primera clase', 1500,0);
     insertarAsientos(:new.id_avion, 84, 'cabina prin', 500,10); 
END;
ELSIF (:new.modelo_id = 5 )THEN
BEGIN
     insertarAsientos(:new.id_avion, 15, 'primera clase', 1500,0);
     insertarAsientos(:new.id_avion, 100, 'cabina prin', 500,15); 
END;
ELSIF (:new.modelo_id = 6 )THEN
BEGIN
    insertarAsientos(:new.id_avion, 20, 'primera clase', 1500,0);
    insertarAsientos(:new.id_avion, 30, 'economy extra', 1000,20);
    insertarAsientos(:new.id_avion, 150, 'cabina prin', 500,50); 
END;
END IF;
END;
/
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