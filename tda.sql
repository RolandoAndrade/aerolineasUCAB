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
