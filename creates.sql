CREATE OR REPLACE TYPE UNIDAD AS OBJECT( 
    valor NUMBER(10,5), 
    nombre VARCHAR2(30), --Nombre oficial de la unidad ej: Kilogramo, Metro, Segundo
    tipo VARCHAR2(15),   --Tipo al que pertenece la unidad: Distancia, Tiempo, Velocidad, Monetaria
    simbolo VARCHAR2(5),
    MEMBER FUNCTION convertir(tipoP VARCHAR2, simboloP VARCHAR2) RETURN NUMBER
);
/
CREATE OR REPLACE TYPE BODY UNIDAD AS 
    MEMBER FUNCTION convertir(tipoP VARCHAR2, simboloP VARCHAR2) RETURN NUMBER IS 
        BEGIN   
            IF (tipo != tipoP) THEN 
                raise_application_error(-20010, 'No se puede convetir puesto que las unidades no corresponden al mismo tipo'); 
            ELSE  
            BEGIN 
                IF (tipoP = 'distancia') THEN  --Por defecto es KM
                    IF (simboloP = 'nmi') THEN  
                        RETURN ROUND(valor * 0.539957,2); 
                    ELSIF (simboloP = 'ft') THEN  
                        RETURN ROUND(valor * 3280.8,2); 
                    ELSIF (simboloP = 'm') THEN  
                        RETURN ROUND(valor * 1000,2);
                    END IF;
                ELSIF (tipoP = 'velocidad') THEN --Por defecto es KM/H
                    IF (simboloP = 'mach') THEN
                        RETURN ROUND(valor * 0.00081699346405229,2);
                    END IF;
                ELSIF (tipoP = 'monetaria') THEN  --Por defecto es USD, aunque hay un caso donde es MILLA
                    IF (simboloP = 'ves') THEN
                        RETURN ROUND(valor*28000,2);
                    ELSIF (simboloP = 'eur') THEN
                        RETURN ROUND(valor*0.91,2);
                    ELSIF (simboloP = 'cny') THEN
                        RETURN ROUND(valor*106.87,2);
                    ELSIF (simboloP = 'milla' AND simboloP = 'usd') THEN
                        RETURN ROUND(valor*3/5,2);
                    END IF;
                ELSIF (tipoP = 'tiempo') THEN  --Por defecto es horas
                    IF (simboloP = 'min') THEN
                        RETURN ROUND(valor*60,2);
                    ELSIF (simboloP = 'seg') THEN
                        RETURN ROUND(valor*3600,2);
                    END IF;
                ELSIF (tipoP = 'coordenada') THEN  --Por defecto es grados
                    IF (simboloP = 'rad') THEN
                        RETURN ROUND(valor*3.14159265/180,5);
                    END IF;    
                END IF; 
            END; 
            END IF; 
        END; 
END;
/
CREATE OR REPLACE TYPE RESERVA AS OBJECT (
    fecha_inicio DATE,
    fecha_fin DATE,
    monto UNIDAD,
    estado VARCHAR(15),
    MEMBER FUNCTION validar_fecha(fecha_inicioP DATE, fecha_finP DATE) RETURN DATE
);
/
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
/

CREATE OR REPLACE TYPE LUGAR AS OBJECT (
    pais VARCHAR(50),
    ciudad VARCHAR(50),
    calle VARCHAR(50),
    nombre VARCHAR(50),
    codigo_postal VARCHAR(50),
    zona_horaria VARCHAR(50),
    MEMBER FUNCTION convertir_zonaH(zona_horaria VARCHAR) RETURN DATE
);
/
------------------------falta crear la funcion canvertir hora-------------------------------------------------------------------
CREATE OR REPLACE TYPE BODY LUGAR AS
    MEMBER FUNCTION convertir_zonaH(zona_horaria VARCHAR) RETURN DATE
    IS 
    BEGIN
        RETURN NULL;
    END;
END;

---------------------------------------------------------fin tda----------------------------------------------------------------

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
    reserva_vuelo RESERVA,
    vuelo_id INTEGER,
    usuario_id INTEGER,
    CONSTRAINT FK_VUELO_RESERVAVUELO FOREIGN KEY (vuelo_id)
    REFERENCES VUELO (id_vuelo),
    CONSTRAINT FK_USUARIO_RESERVAVUELO FOREIGN KEY (usuario_id)
    REFERENCES USUARIO (id_usuario)
);

CREATE TABLE RESERVA_CARRO (
    id_reserva_carro INTEGER PRIMARY KEY,
    reseva_carro RESERVA NOT NULL, 
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
    precio UNIDAD
);

CREATE TABLE SEGURO(
    id_seguro INTEGER PRIMARY KEY,
    reserva_seguro RESERVA NOT NULL,
    adeguradora_id INTEGER NOT NULL,
    CONSTRAINT FK_ASEGURADORA_SEGURO FOREIGN KEY (adeguradora_id)
    REFERENCES ASEGURADORA (id_aseguradora)
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

CREATE SEQUENCE id_marca INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_modelo INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_aerolinea INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_avion INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_asiento INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_disponibilidad INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_vuelo INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_reserva_vuelo INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_carro INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_proveedor_carro INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_aeropuerto INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_hotel INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_habitacion INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_caracteristica INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_apartamento INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_reserva_carro INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_usuario INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_huesped INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_reserva_estancia INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_seguro INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_seguro_servicio INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_aseguradora INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_servicio INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_milla INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_tarjeta_debito INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_tarjeta_credito INCREMENT BY 1 START WITH 1 MINVALUE 1; 
CREATE SEQUENCE id_pago INCREMENT BY 1 START WITH 1 MINVALUE 1; 


----------------------------------------------------------------------------------------------------------

CREATE OR REPLACE DIRECTORY IMAGES AS 'C:\Users\Usuario\Documents\Universidad\septimo\Base de Datos 2\proyecto\imagenes';

GRANT READ, WRITE ON DIRECTORY IMAGES TO system;

----------------------------------------------------------------------------------------------------------------------------------

