CREATE TABLE AEROLINEA (
    id_aerolinea INTEGER PRIMARY KEY,
    logo BLOB DEFAULT EMPTY_BLOB(),
    nombre VARCHAR(50) NOT NULL,
    tipo VARCHAR(20) NOT NULL
);

CREATE TABLE MARCA (
    id_marca INTEGER PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    mercado VARCHAR(20) NOT NULL
);

CREATE TABLE MODELO (
    id_modelo INTEGER PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    foto BLOB DEFAULT EMPTY_BLOB(),
    marca_id INTEGER NOT NULL,
    CONSTRAINT FK_MARCA_MODELO FOREIGN KEY (marca_id)
    REFERENCES MARCA(id_marca) ON DELETE CASCADE
);

CREATE TABLE AVION(
    id_avion INTEGER PRIMARY KEY,
    modelo_id INTEGER NOT NULL,--REFERENCES MODELO(id_modelo)-
    aerolinea_id INTEGER NOT NULL, --REFERENCES AEROLINEA(id_aerolinea)-
    serie_modelo VARCHAR2(20) NOT NULL,
    velocidad_max UNIDAD NOT NULL,
    alcance UNIDAD NOT NULL,
    altitud_max UNIDAD NOT NULL,
    envergadura UNIDAD NOT NULL,
    ancho_cabina UNIDAD NOT NULL,
    alto_cabina UNIDAD NOT NULL,
    CONSTRAINT FK_AEROLINEA FOREIGN KEY (aerolinea_id)
    REFERENCES Aerolinea(id_aerolinea) ON DELETE CASCADE,
    CONSTRAINT FK_MODELO FOREIGN KEY (modelo_id)
    REFERENCES MODELO(id_modelo) ON DELETE CASCADE
);


CREATE TABLE PROVEEDOR_CARRO (
    id_proveedor INTEGER PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    logo BLOB DEFAULT EMPTY_BLOB()
);

CREATE TABLE CARRO (
    id_carro INTEGER PRIMARY KEY,
    descripcion VARCHAR(50),
    precio UNIDAD NOT NULL,
    recorrido UNIDAD DEFAULT UNIDAD(0,'kilometro','distancia','km'),
    lugar_carro LUGAR NOT NULL,
    proveedor_id INTEGER NOT NULL,
    modelo_id INTEGER NOT NULL,
    CONSTRAINT FK_PROVEEDOR_CARRO FOREIGN KEY (proveedor_id)
    REFERENCES PROVEEDOR_CARRO(id_proveedor),
    CONSTRAINT FK_MODELO_CARRO FOREIGN KEY (modelo_id)
    REFERENCES MODELO (id_modelo)
);


CREATE TABLE ASIENTO (
    id_asiento INTEGER PRIMARY KEY,
    numero INTEGER NOT NULL,
    clase VARCHAR(20) NOT NULL,
    precio UNIDAD NOT NULL,
    avion_id INTEGER NOT NULL,
    CONSTRAINT FK_AVION_ASIENTO FOREIGN KEY (avion_id)
    REFERENCES AVION (id_avion)
);

CREATE TABLE AEROPUERTO (
    id_aeropuerto INTEGER PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    abreviatura VARCHAR(5) NOT NULL,
    latitud UNIDAD NOT NULL,
    longitud UNIDAD NOT NULL,
    lugar_aeropuerto LUGAR NOT NULL
);

CREATE TABLE VUELO (
    id_vuelo INTEGER PRIMARY KEY,
    fecha_salida TIMESTAMP NOT NULL,
    fecha_salida_real TIMESTAMP,
    fecha_llegada_real TIMESTAMP,
    duracion UNIDAD NOT NULL,
    estado VARCHAR(15) NOT NULL,
    vuelo_id INTEGER,
    aeropuerto_sale INTEGER NOT NULL,
    aeropuerto_llega INTEGER NOT NULL,
    CONSTRAINT FK_VUELO_VUELO FOREIGN KEY (vuelo_id)
    REFERENCES VUELO (id_vuelo),
    CONSTRAINT FK_AEROPUERTO_SAlE FOREIGN KEY (aeropuerto_sale)
    REFERENCES AEROPUERTO (id_aeropuerto),
    CONSTRAINT FK_AEROPUERTO_LLEGA FOREIGN KEY (aeropuerto_llega)
    REFERENCES AEROPUERTO (id_aeropuerto)
);

CREATE TABLE USUARIO (
    id_usuario INTEGER PRIMARY KEY,
    correo VARCHAR(50) NOT NULL,
    contrasenia VARCHAR(20) NOT NULL,
    foto BLOB DEFAULT EMPTY_BLOB(),
    p_nombre VARCHAR(20) NOT NULL,
    s_nombre VARCHAR(20),
    p_apellido VARCHAR(20) NOT NULL,
    s_apellido VARCHAR(20),
    telefono VARCHAR(50) NOT NULL
);

CREATE TABLE DISPONIBILIDAD (
    id_disponibilidad INTEGER PRIMARY KEY,
    precio UNIDAD NOT NULL,
    asiento_id INTEGER NOT NULL,
    vuelo_id INTEGER NOT NULL,
    usuario_id INTEGER,
    CONSTRAINT FK_ASIENTO_DISPONIBILIDAD FOREIGN KEY (asiento_id)
    REFERENCES ASIENTO (id_asiento),
    CONSTRAINT FK_VUELO_DUSPONIBILIDAD FOREIGN KEY (vuelo_id)
    REFERENCES VUELO (id_vuelo),
    CONSTRAINT FK_USUARIO_DISPONIBILIDAD FOREIGN KEY (usuario_id)
    REFERENCES USUARIO (id_usuario)
);

CREATE TABLE RESERVA_VUELO (
    id_reserva_vuelo NUMBER(5) PRIMARY KEY,
    reserva_vuelo RESERVA NOT NULL,
    vuelo_id INTEGER NOT NULL,
    usuario_id INTEGER NOT NULL,
    CONSTRAINT FK_VUELO_RESERVAVUELO FOREIGN KEY (vuelo_id)
    REFERENCES VUELO (id_vuelo),
    CONSTRAINT FK_USUARIO_RESERVAVUELO FOREIGN KEY (usuario_id)
    REFERENCES USUARIO (id_usuario)
);

CREATE TABLE RESERVA_CARRO (
    id_reserva_carro INTEGER PRIMARY KEY,
    reserva_carro RESERVA NOT NULL, 
    recogida LUGAR NOT NULL,
    devolucion LUGAR NOT NULL,
    carro_id INTEGER NOT NULL,
    usuario_id INTEGER NOT NULL,
    reservavuelo_id INTEGER,
    CONSTRAINT FK_CARRO_RESERVACARRO FOREIGN KEY (carro_id)
    REFERENCES CARRO (id_carro),
    CONSTRAINT FK_USUARIO_RESERVACARRO FOREIGN KEY (usuario_id)
    REFERENCES USUARIO (id_usuario),
    CONSTRAINT FK_RESERVAVUELO_RESERVACARRO FOREIGN KEY (reservavuelo_id)
    REFERENCES RESERVA_VUELO (id_reserva_vuelo)
);

CREATE TABLE HOTEL (
    id_hotel INTEGER PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    foto BLOB DEFAULT EMPTY_BLOB(),
    estrellas NUMBER(2) NOT NULL,
    lugar_hotel LUGAR NOT NULL
);

CREATE TABLE HABITACION (
    id_habitacion INTEGER PRIMARY KEY,
    piso NUMBER(3) NOT NULL,
    numero NUMBER(5) NOT NULL,
    clase VARCHAR(20) NOT NULL,
    precio UNIDAD NOT NULL,
    hotel_id INTEGER NOT NULL,
    CONSTRAINT FK_HOTEL_HABITACION FOREIGN KEY (hotel_id)
    REFERENCES HOTEL (id_hotel)
);

CREATE TABLE APARTAMENTO (
    id_apartamento INTEGER PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    foto BLOB DEFAULT EMPTY_BLOB(),
    piso NUMBER(3) NOT NULL,
    numero NUMBER(5) NOT NULL,
    precio UNIDAD NOT NULL,
    lugar_apartamento LUGAR NOT NULL 
);

CREATE TABLE CARACTERISTICA (
    id_caracteristica INTEGER PRIMARY KEY,
    titulo VARCHAR(20) NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    apartamento_id INTEGER,
    habitacion_id INTEGER,
    hotel_id INTEGER,
    CONSTRAINT FK_APARTAMENTO_CARACTERISTICA FOREIGN KEY (apartamento_id)
    REFERENCES APARTAMENTO (id_apartamento),
    CONSTRAINT FK_HABITACION_CARACTERISTICAS FOREIGN KEY (habitacion_id)
    REFERENCES HABITACION (id_habitacion),
    CONSTRAINT FK_HOTEL_CARACTERISTICAS FOREIGN KEY (hotel_id)
    REFERENCES HOTEL (id_hotel)
);

CREATE TABLE RESERVA_ESTANCIA (
    id_reserva_estancia INTEGER PRIMARY KEY,
    reserva_estacia RESERVA NOT NULL,
    puntuacion NUMBER(2) DEFAULT 0,
    reservavuelo_id INTEGER,
    apartamento_id INTEGER,
    habitacion_id INTEGER,
    CONSTRAINT FK_RESERVAVUELO_ESTANCIA FOREIGN KEY (reservavuelo_id)
    REFERENCES RESERVA_VUELO (id_reserva_vuelo),
    CONSTRAINT FK_APARTAMENTO_ESTANCIA FOREIGN KEY (apartamento_id)
    REFERENCES APARTAMENTO (id_apartamento),
    CONSTRAINT FK_HABITACION_ESTANCIA FOREIGN KEY (habitacion_id)
    REFERENCES HABITACION (id_habitacion)
);

CREATE TABLE HUESPED (
    id_huesped INTEGER PRIMARY KEY,
    cantidad NUMBER(2) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    usuario_id INTEGER NOT NULL,
    reservaestancia_id INTEGER NOT NULL,
    CONSTRAINT FK_USUARIO_HUESPED FOREIGN KEY (usuario_id)
    REFERENCES USUARIO (id_usuario),
    CONSTRAINT FK_RESERVAESTANCIA_HUESPED FOREIGN KEY (reservaestancia_id)
    REFERENCES RESERVA_ESTANCIA (id_reserva_estancia)
);

CREATE TABLE ASEGURADORA (
    id_aseguradora INTEGER PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    logo BLOB DEFAULT EMPTY_BLOB()
);

CREATE TABLE SERVICIO (
    id_servicio INTEGER PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    precio UNIDAD NOT NULL
);

CREATE TABLE SEGURO(
    id_seguro INTEGER PRIMARY KEY,
    reserva_seguro RESERVA NOT NULL,
    aseguradora_id INTEGER NOT NULL,
    reservavuelo_id INTEGER NOT NULL,
    CONSTRAINT FK_ASEGURADORA_SEGURO FOREIGN KEY (aseguradora_id)
    REFERENCES ASEGURADORA (id_aseguradora),
    CONSTRAINT FK_RESERVAVUELO_SEGURO FOREIGN KEY (reservavuelo_id)
    REFERENCES RESERVA_VUELO (id_reserva_vuelo)
);

CREATE TABLE SEGURO_SERVICIO (
    id_seguro_servicio INTEGER PRIMARY KEY,
    seguro_id INTEGER NOT NULL,
    servicio_id INTEGER NOT NULL,
    CONSTRAINT FK_SEGURO_SEGUROSERVICIO FOREIGN KEY (seguro_id)
    REFERENCES SEGURO (id_seguro),
    CONSTRAINT FK_SERVICIO_SEGUROSERVICIO FOREIGN KEY (servicio_id)
    REFERENCES SERVICIO (id_servicio)
);

CREATE TABLE MILLA (
    id_milla INTEGER PRIMARY KEY,
    cantidad UNIDAD NOT NULL,
    usuario_id INTEGER NOT NULL,
    CONSTRAINT FK_USUARIO_MILLA FOREIGN KEY (usuario_id)
    REFERENCES usuario (id_usuario)
);

CREATE TABLE TARJETA_DEBITO (
    id_trajeta_debito INTEGER PRIMARY KEY,
    numero VARCHAR(20) NOT NULL,
    banco VARCHAR(20) NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    usuario_id INTEGER NOT NULL,
    CONSTRAINT FK_USUARIO_TARJETADEBITO FOREIGN KEY (usuario_id)
    REFERENCES USUARIO (id_usuario)
);

CREATE TABLE TARJETA_CREDITO (
    id_tarjeta_credito INTEGER PRIMARY KEY,
    numero VARCHAR(20) NOT NULL,
    banco VARCHAR(20) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    usuario_id INTEGER NOT NULL,
    CONSTRAINT FK_USUARIO_TRAJETACREDITO FOREIGN KEY (usuario_id)
    REFERENCES USUARIO (id_usuario)
);

CREATE TABLE PAGO (
    id_pago INTEGER PRIMARY KEY,
    monto UNIDAD NOT NULL,
    fecha TIMESTAMP NOT NULL,
    millas_restantes UNIDAD NOT NULL,
    millas_id INTEGER,
    tarjetadebito_id INTEGER,
    tarjetacredito_id INTEGER,
    reservaestancia_id INTEGER,
    reservavuelo_id INTEGER,
    seguro_id INTEGER,
    reservacarro_id INTEGER,
    CONSTRAINT FK_MILLAS_PAGO FOREIGN KEY (millas_id)
    REFERENCES MILLA (id_milla),
    CONSTRAINT FK_TARJETADEBITO_PAGO FOREIGN KEY (tarjetadebito_id)
    REFERENCES TARJETA_DEBITO (id_trajeta_debito),
    CONSTRAINT FK_TARJETACREDITO_PAGO FOREIGN KEY (tarjetacredito_id)
    REFERENCES TARJETA_CREDITO (id_tarjeta_credito),
    CONSTRAINT FK_RESERVAESTANCIA_PAGO FOREIGN KEY (reservaestancia_id)
    REFERENCES RESERVA_ESTANCIA (id_reserva_estancia),
    CONSTRAINT FK_RESERVAVUELO_PAGO FOREIGN KEY (reservavuelo_id)
    REFERENCES RESERVA_VUELO (id_reserva_vuelo),
    CONSTRAINT FK_SEGURO_PAGO FOREIGN KEY (seguro_id)
    REFERENCES SEGURO (id_seguro),
    CONSTRAINT FK_RESERVACARRO_PAGO FOREIGN KEY (reservacarro_id)
    REFERENCES RESERVA_CARRO (id_reserva_carro)
);

--------------------------------------------------------para poder crear blobs, despues del AS deben poner la direccion --------
-------------------------------------------------------donde tienen la imagen---------------------------------------------------

--CREATE OR REPLACE DIRECTORY IMAGES AS 'C:\Users\Usuario\Documents\Universidad\septimo\Base de Datos 2\proyecto\imagenes';
--CREATE OR REPLACE DIRECTORY IMAGES AS 'C:\Users\Rolando Andrade\Desktop\SISTEMAS DE BASES DE DATOS II\aerolineasUCAB\imagenes';

--GRANT READ, WRITE ON DIRECTORY IMAGES TO system;

------------------------------------------prueba insertando una imagen en una tabla que ya no existe----------------------------
--------------------------------------------la prueba funciono asi se insertan blob en la bd------------------------------------
--SET serveroutput ON
--DECLARE 
    --V_blob BLOB;
    --V_bfile BFILE;
--BEGIN 
    --INSERT INTO MODELO VALUES (3,'PRUEBA','A',EMPTY_BLOB()) RETURNING foto INTO V_blob;
    --V_bfile := BFILENAME('IMAGES', 'boeing737max9.jpg');
    --DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    --DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
   --COMMIT;
--END;

--------------------------------------------fin de prueba----------------------------------------------------------------------

