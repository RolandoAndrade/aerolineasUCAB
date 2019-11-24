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
                    ELSIF (simboloP = 'milla' AND simbolo = 'usd') THEN
                        RETURN ROUND(valor*5/3,2);
                    ELSIF (simboloP = 'usd' AND simbolo = 'milla') THEN
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
    fecha_inicio TIMESTAMP,
    fecha_fin TIMESTAMP,
    monto UNIDAD,
    estado VARCHAR(15),
    STATIC FUNCTION validar_fecha(fecha_inicioP TIMESTAMP, fecha_finP TIMESTAMP) RETURN BOOLEAN
);
/
CREATE OR REPLACE TYPE BODY RESERVA AS
    STATIC FUNCTION validar_fecha(fecha_inicioP TIMESTAMP, fecha_finP TIMESTAMP) RETURN BOOLEAN
    IS
    BEGIN
        RETURN fecha_inicioP<fecha_finP;
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
