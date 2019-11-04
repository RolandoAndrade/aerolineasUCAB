CREATE OR REPLACE TYPE UNIDAD AS OBJECT( 
    valor NUMBER(10,5), 
    nombre VARCHAR2(30), --Nombre oficial de la unidad ej: Kilogramo, Metro, Segundo
    tipo VARCHAR2(15),   --Tipo al que pertenece la unidad: Distancia, Tiempo, Velocidad, Monetaria
    simbolo VARCHAR2(5),
    MEMBER FUNCTION convertir(tipoP VARCHAR2, simboloP VARCHAR2) RETURN NUMBER
);


CREATE OR REPLACE TYPE RESERVA AS OBJECT (
    fecha_inicio DATE,
    fecha_fin DATE,
    monto UNIDAD,
    estado VARCHAR(15),
    MEMBER FUNCTION validar_fecha(fecha_inicioP DATE, fecha_finP DATE) RETURN DATE
);

CREATE OR REPLACE TYPE BODY RESERVA AS
    MEMBER FUNCTION validar_fecha(fecha_inicioP DATE, fecha_finP DATE) RETURN DATE
    IS
    BEGIN
        IF(fecha_finP > fecha_inicioP) THEN 
            RETURN fecha_inicioP;
        ELSE
            raise_application_error(-20010, 'la fecha final no puede ser menor a la fecha inical');
        END IF;
    END;
END;


CREATE OR REPLACE TYPE LUGAR AS OBJECT (
    pais VARCHAR(15),
    ciudad VARCHAR(15),
    calle VARCHAR(15),
    nombre VARCHAR(15),
    codigo_postal VARCHAR(15),
    zona_horaria VARCHAR(15),
    MEMBER FUNCTION convertir_zonaH(zona_horaria VARCHAR) RETURN DATE
);
------------------------falta crear la funcion canvertir hora-------------------------------------------------------------------
CREATE OR REPLACE TYPE BODY LUGAR AS
    MEMBER FUNCTION convertir_zonaH(zona_horaria VARCHAR) RETURN DATE
    IS 
    BEGIN
        RETURN NULL;
    END;
END;

CREATE TABLE AVION(
    id_avion NUMBER(5) PRIMARY KEY,
    modelo_id NUMBER(5),--REFERENCES MODELO(id_modelo)-
    aerolinea_id NUMBER(5), --REFERENCES AEROLINEA(id_aerolinea)-
    serie_modelo VARCHAR2(15),
    velocidad_max UNIDAD,
    alcance UNIDAD,
    altitud_max UNIDAD,
    envergadura UNIDAD,
    ancho_cabina UNIDAD,
    alto_cabina UNIDAD,
    CONSTRAINT FK_MARCA_AEROLINEA FOREIGN KEY (aerolinea_id)
    REFERENCES Aerolinea(id_aerolinea) ON DELETE CASCADE
);


CREATE TABLE MARCA (
    id_marca NUMBER(5) PRIMARY KEY,
    nombre VARCHAR(20),
    mercado VARCHAR(15)
);

CREATE TABLE MODELO (
    id_modelo NUMBER(5) PRIMARY KEY,
    nombre VARCHAR(20),
    tipo VARCHAR(15),
    foto BLOB DEFAULT EMPTY_BLOB(),
    fk_marca NUMBER(5),
    CONSTRAINT FK_MARCA_MODELO FOREIGN KEY (fk_marca)
    REFERENCES MARCA(id_marca) ON DELETE CASCADE
);

CREATE TABLE PROVEEDOR_CARRO (
    id_proveedor NUMBER(5) PRIMARY KEY,
    nombre VARCHAR(15),
    logo BLOB DEFAULT EMPTY_BLOB()
);

CREATE TABLE CARRO (
    id_carro NUMBER(5) PRIMARY KEY,
    descripcion VARCHAR(50),
    precio UNIDAD,
    recorrido UNIDAD,
    lugar_carro LUGAR,
    fk_proveedor NUMBER(5),
    fk_modelo NUMBER(5),
    CONSTRAINT FK_PROVEEDOR_CARRO FOREIGN KEY (fk_proveedor)
    REFERENCES PROVEEDOR_CARRO(id_proveedor),
    CONSTRAINT FK_MODELO_CARRO FOREIGN KEY (fk_modelo)
    REFERENCES MODELO (id_modelo)
);

CREATE TABLE AEROLINEA (
    id_aerolinea NUMBER(5) PRIMARY KEY,
    logo BLOB DEFAULT EMPTY_BLOB(),
    nombre VARCHAR(15),
    tipo VARCHAR(15)
);

CREATE TABLE AVION (
    id_avion NUMBER(5) PRIMARY KEY ,
    serie_modelo VARCHAR(15),
    velocidad_max UNIDAD,
    alcance UNIDAD,
    altitud_max UNIDAD,
    envergadura UNIDAD,
    ancho_cabina UNIDAD,
    alto_cabina UNIDAD,
    fk_modelo NUMBER(5),
    fk_aerolinea NUMBER(5),
    CONSTRAINT FK_MODELO_AVION FOREIGN KEY (fk_modelo)
    REFERENCES MODELO (id_modelo),
    CONSTRAINT FK_AEROLINEA_AVION FOREIGN KEY (fk_aerolinea)
    REFERENCES AEROLINEA (id_aerolinea)
);

CREATE TABLE ASIENTO (
    id_asiento NUMBER(5) PRIMARY KEY,
    numero NUMBER(5),
    tipo VARCHAR(15),
    precio UNIDAD,
    fk_avion NUMBER(5),
    CONSTRAINT FK_AVION_ASIENTO FOREIGN KEY (fk_avion)
    REFERENCES AVION (id_avion)
);

CREATE TABLE AEROPUERTO (
    id_aeropuerto NUMBER(5) PRIMARY KEY,
    nombre VARCHAR(15),
    abreviatura VARCHAR(5),
    latitud NUMBER(10),
    longitud NUMBER(10),
    lugar_aeropuerto LUGAR
);

CREATE TABLE VUELO (
    id_vuelo NUMBER(5) PRIMARY KEY,
    fecha_salida DATE,
    fecha_salida_real DATE,
    fecha_llegasa_real DATE,
    duracion UNIDAD,
    estado VARCHAR(15),
    fk_vuelo NUMBER(5),
    fk_aeropuerto_sale NUMBER(5),
    fk_aeropuerto_llega NUMBER(5),
    CONSTRAINT FK_VUELO_VUELO FOREIGN KEY (id_vuelo)
    REFERENCES VUELO (id_vuelo),
    CONSTRAINT FK_AEROPUERTO_SAlE FOREIGN KEY (fk_aeropuerto_sale)
    REFERENCES AEROPUERTO (id_aeropuerto),
    CONSTRAINT FK_AEROPUERTO_LLEGA FOREIGN KEY (fk_aeropuerto_llega)
    REFERENCES AEROPUERTO (id_aeropuerto)
);

CREATE TABLE USUARIO (
    id_usuario NUMBER(5) PRIMARY KEY,
    correo VARCHAR(15),
    contrasenia VARCHAR(15),
    foto BLOB DEFAULT EMPTY_BLOB(),
    p_nombre VARCHAR(15),
    s_nombre VARCHAR(15),
    p_apellido VARCHAR(15),
    s_apellido VARCHAR(15),
    telefono VARCHAR(15)
);

CREATE TABLE DISPONIBILIDAD (
    id_disponibilidad NUMBER(5) PRIMARY KEY,
    precio UNIDAD,
    fk_asiento NUMBER(5),
    fk_vuelo NUMBER(5),
    fk_usuario NUMBER(5),
    CONSTRAINT FK_ASIENTO_DISPONIBILIDAD FOREIGN KEY (fk_asiento)
    REFERENCES ASIENTO (id_asiento),
    CONSTRAINT FK_VUELO_DUSPONIBILIDAD FOREIGN KEY (fk_vuelo)
    REFERENCES VUELO (id_vuelo),
    CONSTRAINT FK_USUARIO_DISPONIBILIDAD FOREIGN KEY (fk_usuario)
    REFERENCES USUARIO (id_usuario)
);

CREATE TABLE RESERVA_VUELO (
    id_reserva_vuelo NUMBER(5) PRIMARY KEY,
    reserva_vuelo RESERVA,
    fk_vuelo NUMBER(5),
    fk_usuario NUMBER(5),
    CONSTRAINT FK_VUELO_RESERVAVUELO FOREIGN KEY (fk_vuelo)
    REFERENCES VUELO (id_vuelo),
    CONSTRAINT FK_USUARIO_RESERVAVUELO FOREIGN KEY (fk_usuario)
    REFERENCES USUARIO (id_usuario)
);

CREATE TABLE RESERVA_CARRO (
    id_reserva_carro NUMBER(5) PRIMARY KEY,
    reseva_carro RESERVA, 
    recogida LUGAR,
    devolucion LUGAR,
    fk_carro NUMBER(5),
    fk_usuario NUMBER(5),
    fk_reservavuelo NUMBER(5),
    CONSTRAINT FK_CARRO_RESERVACARRO FOREIGN KEY (fk_carro)
    REFERENCES CARRO (id_carro),
    CONSTRAINT FK_USUARIO_RESERVACARRO FOREIGN KEY (fk_usuario)
    REFERENCES USUARIO (id_usuario),
    CONSTRAINT FK_RESERVAVUELO_RESERVACARRO FOREIGN KEY (fk_reservavuelo)
    REFERENCES RESERVA_VUELO (id_reserva_vuelo)
);

CREATE TABLE HOTEL (
    id_hotel NUMBER(5) PRIMARY KEY,
    nombre VARCHAR(15),
    foto BLOB DEFAULT EMPTY_BLOB(),
    estrelas NUMBER(2),
    lugar_hotel LUGAR
);

CREATE TABLE HABITACION (
    id_habitacion NUMBER(5) PRIMARY KEY,
    piso NUMBER(3),
    numero NUMBER(5),
    clase VARCHAR(15),
    precio UNIDAD,
    fk_hotel NUMBER(5),
    CONSTRAINT FK_HOTEL_HABITACION FOREIGN KEY (fk_hotel)
    REFERENCES HOTEL (id_hotel)
);

CREATE TABLE APARTAMENTO (
    id_apartamento NUMBER(5) PRIMARY KEY,
    nombre VARCHAR(15),
    foto BLOB DEFAULT EMPTY_BLOB(),
    piso NUMBER(3),
    numero NUMBER(5),
    precio UNIDAD,
    lugar_apartamento LUGAR 
);

CREATE TABLE CARACTERISTICA (
    id_caracteristica NUMBER(5) PRIMARY KEY,
    titulo VARCHAR(15),
    descripcion VARCHAR(50),
    fk_apartamento NUMBER(5),
    fk_habitacion NUMBER(5),
    fk_hotel NUMBER(5),
    CONSTRAINT FK_APARTAMENTO_CARACTERISTICA FOREIGN KEY (fk_apartamento)
    REFERENCES APARTAMENTO (id_apartamento),
    CONSTRAINT FK_HABITACION_CARACTERISTICAS FOREIGN KEY (fk_habitacion)
    REFERENCES HABITACION (id_habitacion),
    CONSTRAINT FK_HOTEL_CARACTERISTICAS FOREIGN KEY (fk_hotel)
    REFERENCES HOTEL (id_hotel)
);

CREATE TABLE RESERVA_ESTANCIA (
    id_reserva_estancia NUMBER(5) PRIMARY KEY,
    reserva_estacia RESERVA,
    puntuacion NUMBER(2),
    fk_reservavuelo NUMBER(5),
    fk_apartamento NUMBER(5),
    fk_habitacion NUMBER(5),
    CONSTRAINT FK_RESERVAVUELO_ESTANCIA FOREIGN KEY (fk_reservavuelo)
    REFERENCES RESERVA_VUELO (id_reserva_vuelo),
    CONSTRAINT FK_APARTAMENTO_ESTANCIA FOREIGN KEY (fk_apartamento)
    REFERENCES APARTAMENTO (id_apartamento),
    CONSTRAINT FK_HABITACION_ESTANCIA FOREIGN KEY (fk_habitacion)
    REFERENCES HABITACION (id_habitacion)
);

CREATE TABLE HUESPED (
    id_huesped NUMBER(5) PRIMARY KEY,
    cantidad NUMBER(2),
    tipo VARCHAR(15),
    fk_usuario NUMBER(5),
    fk_reservaestancia NUMBER(5),
    CONSTRAINT FK_USUARIO_HUESPED FOREIGN KEY (fk_usuario)
    REFERENCES USUARIO (id_usuario),
    CONSTRAINT FK_RESERVAESTANCIA_HUESPED FOREIGN KEY (fk_reservaestancia)
    REFERENCES RESERVA_ESTANCIA (id_reserva_estancia)
);

CREATE TABLE ASEGURADORA (
    id_aseguradora NUMBER(5) PRIMARY KEY,
    nombre VARCHAR(15),
    logo BLOB DEFAULT EMPTY_BLOB()
);

CREATE TABLE SERVICIO (
    id_servicio NUMBER(5) PRIMARY KEY,
    nombre VARCHAR(15),
    logo BLOB DEFAULT EMPTY_BLOB()
);

CREATE TABLE SEGURO(
    id_seguro NUMBER(5) PRIMARY KEY,
    reserva_seguro RESERVA ,
    fk_aseguradora NUMBER(5),
    CONSTRAINT FK_ASEGURADORA_SEGURO FOREIGN KEY (fk_aseguradora)
    REFERENCES ASEGURADORA (id_aseguradora)
);

CREATE TABLE SEGURO_SERVICIO (
    id_seguro_servicio NUMBER(5) PRIMARY KEY,
    fk_seguro NUMBER(5),
    fk_servicio NUMBER(5),
    CONSTRAINT FK_SEGURO_SEGUROSERVICIO FOREIGN KEY (fk_seguro)
    REFERENCES SEGURO (id_seguro),
    CONSTRAINT FK_SERVICIO_SEGUROSERVICIO FOREIGN KEY (fk_servicio)
    REFERENCES SERVICIO (id_servicio)
);

CREATE TABLE MILLA (
    id_milla NUMBER(5) PRIMARY KEY,
    cantidad UNIDAD,
    fk_usuario NUMBER(5),
    CONSTRAINT FK_USUARIO_MILLA FOREIGN KEY (fk_usuario)
    REFERENCES usuario (id_usuario)
);

CREATE TABLE TARJETA_DEBITO (
    id_trajeta_debito NUMBER(5) PRIMARY KEY,
    numero VARCHAR(15),
    banco VARCHAR(15),
    fecha_vencimiento DATE,
    fk_usuario NUMBER(5),
    CONSTRAINT FK_USUARIO_TARJETADEBITO FOREIGN KEY (fk_usuario)
    REFERENCES USUARIO (id_usuario)
);

CREATE TABLE TARJETA_CREDITO (
    id_tarjeta_credito NUMBER(5) PRIMARY KEY,
    numero VARCHAR(15),
    banco VARCHAR(15),
    tipo VARCHAR(15),
    fk_usuario NUMBER(5),
    CONSTRAINT FK_USUARIO_TRAJETACREDITO FOREIGN KEY (fk_usuario)
    REFERENCES USUARIO (id_usuario)
);

CREATE TABLE PAGO (
    id_pago NUMBER(5) PRIMARY KEY,
    monto UNIDAD,
    fecha DATE,
    millas_restantes NUMBER(10),
    fk_millas NUMBER(5),
    fk_tarjetadebito NUMBER(5),
    fk_tarjetacredito NUMBER(5),
    fk_reservaestancia NUMBER(5),
    fk_reservavuelo NUMBER(5),
    fk_seguro NUMBER(5),
    fk_reservacarro NUMBER(5),
    CONSTRAINT FK_MILLAS_PAGO FOREIGN KEY (fk_millas)
    REFERENCES MILLA (id_milla),
    CONSTRAINT FK_TARJETADEBITO_PAGO FOREIGN KEY (fk_tarjetadebito)
    REFERENCES TARJETA_DEBITO (id_trajeta_debito),
    CONSTRAINT FK_TARJETACREDITO_PAGO FOREIGN KEY (fk_tarjetacredito)
    REFERENCES TARJETA_CREDITO (id_tarjeta_credito),
    CONSTRAINT FK_RESERVAESTANCIA_PAGO FOREIGN KEY (fk_reservaestancia)
    REFERENCES RESERVA_ESTANCIA (id_reserva_estancia),
    CONSTRAINT FK_RESERVAVUELO_PAGO FOREIGN KEY (fk_reservavuelo)
    REFERENCES RESERVA_VUELO (id_reserva_vuelo),
    CONSTRAINT FK_SEGURO_PAGO FOREIGN KEY (fk_seguro)
    REFERENCES SEGURO (id_seguro),
    CONSTRAINT FK_RESERVACARRO_PAGO FOREIGN KEY (fk_reservacarro)
    REFERENCES RESERVA_CARRO (id_reserva_carro)
);
