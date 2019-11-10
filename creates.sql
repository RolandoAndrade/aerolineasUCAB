----------------------------------------------------------TDAS------------------------------------------------------------------
-------------------------------------------------------TDA UNIDAD---------------------------------------------------------------

CREATE OR REPLACE TYPE UNIDAD AS OBJECT( 
    valor NUMBER(10,5), 
    nombre VARCHAR2(30), --Nombre oficial de la unidad ej: Kilogramo, Metro, Segundo
    tipo VARCHAR2(15),   --Tipo al que pertenece la unidad: Distancia, Tiempo, Velocidad, Monetaria
    simbolo VARCHAR2(5),
    MEMBER FUNCTION convertir(tipoP VARCHAR2, simboloP VARCHAR2) RETURN NUMBER
);

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
                END IF; 
            END; 
            END IF; 
        END; 
END;



--------------------------------------------------------FIN TDA UNIDAD----------------------------------------------------------
---------------------------------------------------------TDA RESERVA------------------------------------------------------------

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

---------------------------------------------------FIN TDA RESRVA---------------------------------------------------------------
------------------------------------------------------TDA LUGAR-----------------------------------------------------------------

CREATE OR REPLACE TYPE LUGAR AS OBJECT (
    pais VARCHAR(50),
    ciudad VARCHAR(50),
    calle VARCHAR(50),
    nombre VARCHAR(50),
    codigo_postal VARCHAR(50),
    zona_horaria VARCHAR(50),
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

----------------------------------------------------FIN TDA LUGAR---------------------------------------------------------------
------------------------------------------------------FIN TDAS------------------------------------------------------------------

----------------------------------------------------CREATES---------------------------------------------------------------------

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
    nombre VARCHAR(35),
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
    nombre VARCHAR(50),
    abreviatura VARCHAR(5),
    latitud UNIDAD,
    longitud UNIDAD,
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
    correo VARCHAR(50),
    contrasenia VARCHAR(15),
    foto BLOB DEFAULT EMPTY_BLOB(),
    p_nombre VARCHAR(15),
    s_nombre VARCHAR(15),
    p_apellido VARCHAR(15),
    s_apellido VARCHAR(15),
    telefono VARCHAR(50)
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
    nombre VARCHAR(50),
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
    nombre VARCHAR(50),
    logo BLOB DEFAULT EMPTY_BLOB()
);

CREATE TABLE SERVICIO (
    id_servicio NUMBER(5) PRIMARY KEY,
    nombre VARCHAR(50),
    precio UNIDAD
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
    numero NUMBER(15),
    banco VARCHAR(15),
    fecha_vencimiento DATE,
    fk_usuario NUMBER(5),
    CONSTRAINT FK_USUARIO_TARJETADEBITO FOREIGN KEY (fk_usuario)
    REFERENCES USUARIO (id_usuario)
);

CREATE TABLE TARJETA_CREDITO (
    id_tarjeta_credito NUMBER(5) PRIMARY KEY,
    numero NUMBER(15),
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

----------------------------------------------------------FIN CREATES-----------------------------------------------------------
-------------------------------------------------------CREANDO SECUENCIAS PARA LOS IDS------------------------------------------

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
CREATE SEQUENCE numero INCREMENT BY 1 START WITH 1 MINVALUE 1; 



--------------------------------------------------------para poder crear blobs, despues del AS deben poner la direccion --------
-------------------------------------------------------donde tienen la imagen---------------------------------------------------

CREATE OR REPLACE DIRECTORY IMAGES AS 'C:\Users\Usuario\Documents\Universidad\septimo\Base de Datos 2\proyecto\imagenes';

GRANT READ, WRITE ON DIRECTORY IMAGES TO system;

------------------------------------------prueba insertando una imagen en una tabla que ya no existe----------------------------
--------------------------------------------la prueba funciono asi se insertan blob en la bd------------------------------------
SET serveroutput ON
DECLARE 
    V_blob BLOB;
    V_bfile BFILE;
BEGIN 
    INSERT INTO MODELO(id_modelo,nombre,tipo,foto) VALUES (3,'PRUEBA','A',EMPTY_BLOB()) RETURNING foto INTO V_blob;
    V_bfile := BFILENAME('IMAGES', 'boeing737max9.jpg');
    DBMS_LOB.OPEN(V_bfile, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(V_blob, V_bfile, SYS.DBMS_LOB.GETLENGTH(V_bfile));
    COMMIT;
END;

--------------------------------------------fin de prueba----------------------------------------------------------------------

select * from modelo
