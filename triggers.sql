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
/

CREATE OR REPLACE TRIGGER caracteristicaHotel AFTER INSERT ON HOTEL FOR EACH ROW
BEGIN
IF (:new.nombre = 'Burj Al Arab') THEN 
BEGIN
    insertarCaracteristicaHotel(:new.id_hotel,'Piscina','Piscina en PB');
    insertarCaracteristicaHotel(:new.id_hotel, 'Cancha','Cancha de tenis en la azotea');
    insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
    insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo'); 
END;
ELSIF (:new.nombre = 'President Wilson')THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel,'Piscina','Piscina en PB');
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo'); 
END;
ELSIF (:new.nombre = 'Atlantis')THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Piscina','Piscinas de 50m de largo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Playa','Playas en toda la isla');
END;
ELSIF (:new.nombre = 'Four Season Hotel George V')THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Cocteles','Delivery de Cocteles');
END;
ELSIF (:new.nombre = 'Hotel de Glace')THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Calefaccion','Servicio de calefaccion'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Hielo','Hielo en toda la estructura'); 
END;
ELSIF (:new.nombre = 'Palms Casino Resort')THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Casino','Gran casino');
     insertarCaracteristicaHotel(:new.id_hotel, 'Mini','Mini casino');
END;
ELSIF (:new.nombre = 'Mandarin Oriental' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Traduccion','Servicio de traduccion');
END;
ELSIF (:new.nombre = 'Fairmmont Kea Lani Maui' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Piscina','Piscinas de 100m de largo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Playa','Playas');
     insertarCaracteristicaHotel(:new.id_hotel, 'Cocteles','Delivery de Cocteles');
END;
ELSIF (:new.nombre = 'Park Hyatt' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Piscina','Piscinas de 30m de largo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Vista','Excelente vista');
END;
ELSIF (:new.nombre = 'The Raj Palace' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Jardin','Enormes jardines');
END;
ELSIF (:new.nombre = 'Bora Bora Resort' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Palafito','Residencias como palafitos');
     insertarCaracteristicaHotel(:new.id_hotel, 'Playa','Acceso directo al mar');
END;
ELSIF (:new.nombre = 'Hotel Tamanaco' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Comida','Perro calientes de Joao');
END;
ELSIF (:new.nombre = 'Macuto Sheraton' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Piscina','Piscinas de 100m de largo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Playa','Playas');
END;
ELSIF (:new.nombre = 'Eurobuilding' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Piscina','Piscinas de 20m de largo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
END;
ELSIF (:new.nombre = 'Hotel Aladdin' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Motel','Motel del amor');
     insertarCaracteristicaHotel(:new.id_hotel, 'Cocteles','Delivery de Cocteles');
END;
ELSIF (:new.nombre = 'Hard Rock Hotel' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Motel','Motel del amor');
     insertarCaracteristicaHotel(:new.id_hotel, 'Cocteles','Delivery de Cocteles');
END;
ELSIF (:new.nombre = 'Hotel Hive' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Motel','Motel del amor');
     insertarCaracteristicaHotel(:new.id_hotel, 'Cocteles','Delivery de Cocteles');
END;
ELSIF (:new.nombre = 'Hotel Lisboa' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Motel','Motel del amor');
     insertarCaracteristicaHotel(:new.id_hotel, 'Cocteles','Delivery de Cocteles');
END;
ELSIF (:new.nombre = 'Rock Hard' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Motel','Motel del amor');
     insertarCaracteristicaHotel(:new.id_hotel, 'Cocteles','Delivery de Cocteles');
END;
ELSIF (:new.nombre = 'Hyatt Place DaXing' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Motel','Motel del amor');
     insertarCaracteristicaHotel(:new.id_hotel, 'Cocteles','Delivery de Cocteles');
END;
ELSIF (:new.nombre = 'Hotel NH' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Motel','Motel del amor');
     insertarCaracteristicaHotel(:new.id_hotel, 'Cocteles','Delivery de Cocteles');
END;
ELSIF (:new.nombre = 'Intercontinental' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Motel','Motel del amor');
     insertarCaracteristicaHotel(:new.id_hotel, 'Cocteles','Delivery de Cocteles');
END;
ELSIF (:new.nombre = 'Bridge House BB' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Motel','Motel del amor');
     insertarCaracteristicaHotel(:new.id_hotel, 'Cocteles','Delivery de Cocteles');
END;
ELSIF (:new.nombre = 'Hotel Berlin Berlin' )THEN
BEGIN
     insertarCaracteristicaHotel(:new.id_hotel, 'Helipuerto','Helipuerto en la azotea'); 
     insertarCaracteristicaHotel(:new.id_hotel, 'Taxi','Servicio de taxi de lujo');
     insertarCaracteristicaHotel(:new.id_hotel, 'Motel','Motel del amor');
     insertarCaracteristicaHotel(:new.id_hotel, 'Cocteles','Delivery de Cocteles');
END;
END IF;
END;
/
CREATE OR REPLACE TRIGGER caracteristicaHabitacion AFTER INSERT ON HABITACION FOR EACH ROW
BEGIN
IF (:new.clase = 'King') THEN 
BEGIN
    insertarCaracteristicaHabitacion(:new.id_habitacion,'Cama','Cama King');
    insertarCaracteristicaHabitacion(:new.id_habitacion, 'Cocina','Cocina surtida');
    insertarCaracteristicaHabitacion(:new.id_habitacion, 'Baniera','Baniera con jacuzzi'); 
    insertarCaracteristicaHabitacion(:new.id_habitacion, 'Mesa','Mesa de Pin Pon'); 
    insertarCaracteristicaHabitacion(:new.id_habitacion, 'Terraza','Buena vista'); 
    insertarCaracteristicaHabitacion(:new.id_habitacion, 'TV','TV 4K UHD'); 
    insertarCaracteristicaHabitacion(:new.id_habitacion, 'Consola','Consolas de ultima generacion');
    insertarCaracteristicaHabitacion(:new.id_habitacion, 'PC','PC master race');
END;
ELSIF (:new.clase = 'Queen')THEN
BEGIN
     insertarCaracteristicaHabitacion(:new.id_habitacion,'Cama','Cama Queen');
     insertarCaracteristicaHabitacion(:new.id_habitacion, 'Terraza','Buena vista');
     insertarCaracteristicaHabitacion(:new.id_habitacion, 'TV','TV 4K UHD');
     insertarCaracteristicaHabitacion(:new.id_habitacion, 'Cocina','Cocina surtida');
END;
ELSIF (:new.clase = 'Twin')THEN
BEGIN
     insertarCaracteristicaHabitacion(:new.id_habitacion,'Cama','Cama Twin');
     insertarCaracteristicaHabitacion(:new.id_habitacion, 'TV','TV 4K UHD');
     insertarCaracteristicaHabitacion(:new.id_habitacion,'Sofa','Sofa cama de 1.73m'); 
END;
ELSIF (:new.clase = 'Individual')THEN
BEGIN
     insertarCaracteristicaHabitacion(:new.id_habitacion,'Cama','Cama Individual');
     insertarCaracteristicaHabitacion(:new.id_habitacion,'Sofa','Sofa cama de 1.73m');
     insertarCaracteristicaHabitacion(:new.id_habitacion, 'Consola','Consolas de ultima generacion');
END;
ELSIF (:new.clase = 'Quad')THEN
BEGIN
     insertarCaracteristicaHabitacion(:new.id_habitacion,'Cama','Cama Quad');
     insertarCaracteristicaHabitacion(:new.id_habitacion, 'TV','TV 4K UHD');
     insertarCaracteristicaHabitacion(:new.id_habitacion,'Sofa','Sofa cama doble de 2m'); 
END;
ELSIF (:new.clase = 'Double')THEN
BEGIN
     insertarCaracteristicaHabitacion(:new.id_habitacion,'Cama','Cama Double');
     insertarCaracteristicaHabitacion(:new.id_habitacion, 'TV','TV 4K UHD');
     insertarCaracteristicaHabitacion(:new.id_habitacion, 'Terraza','Buena vista');
END;
ELSIF (:new.clase = 'Triple' )THEN
BEGIN
     insertarCaracteristicaHabitacion(:new.id_habitacion,'Cama','Cama Triple');
     insertarCaracteristicaHabitacion(:new.id_habitacion, 'Cocina','Cocina surtida');
     insertarCaracteristicaHabitacion(:new.id_habitacion, 'Baniera','Baniera con jacuzzi');
END;
END IF;
END;