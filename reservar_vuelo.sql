CREATE OR REPLACE PACKAGE RESERVACION_VUELOS IS
    PROCEDURE reservar_vuelos;
    FUNCTION usuario_aleatorio RETURN INTEGER;
    FUNCTION hay_vuelo(aeropuerto1 INTEGER, aeropuerto2 INTEGER) RETURN INTEGER;
    FUNCTION origen_destino_aleatorio(aeropuerto1 IN OUT INTEGER, aeropuerto2 IN OUT INTEGER) RETURN INTEGER;
    FUNCTION vuelo_vuelta(aeropuerto1 INTEGER, aeropuerto2 INTEGER) RETURN INTEGER;
    PROCEDURE asignar_asiento(vuelo INTEGER, usuario INTEGER); 
    FUNCTION calcular_precio(vuelo INTEGER) RETURN UNIDAD;
    PROCEDURE actualizar_millas_usuario(usuario INTEGER,vuelo INTEGER);
    PROCEDURE cancelar_reserva(reserva INTEGER);
END;

/
CREATE OR REPLACE PACKAGE BODY RESERVACION_VUELOS AS

    PROCEDURE asignar_asiento(vuelo INTEGER, usuario INTEGER)
    IS
    BEGIN
        NULL;
    END;    
    
    FUNCTION usuario_aleatorio RETURN INTEGER
    IS
        CURSOR usuarios IS 
        SELECT id_usuario
        FROM USUARIO 
        ORDER BY dbms_random.value;
        usuarioid INTEGER;
    BEGIN
        OPEN usuarios;
        FETCH usuarios INTO usuarioid;
        IF usuarios%found THEN
            RETURN usuarioid;
        END IF;
        RETURN -1;
    END;  
    
    FUNCTION hay_vuelo(aeropuerto1 INTEGER, aeropuerto2 INTEGER) RETURN INTEGER
    IS
    BEGIN
        NULL;
    END;  
    
    FUNCTION origen_destino_aleatorio(aeropuerto1 IN OUT INTEGER, aeropuerto2 IN OUT INTEGER) RETURN INTEGER
    IS
        CURSOR vuelos IS
        SELECT id_aeropuerto
        FROM AEROPUERTO
        ORDER BY dbms_random.value;
    BEGIN
        OPEN vuelos;
        FETCH vuelos INTO aeropuerto1;
        WHILE vuelos%FOUND
        LOOP
            IF aeropuerto1 IS NOT NULL OR aeropuerto2 IS NOT NULL THEN
                hay_vuelo(aeropuerto1, aeropuerto2);
            END IF;
            IF aeropuerto2 IS NULL THEN
                FETCH vuelos INTO aeropuerto2;
                CONTINUE;
            END IF;
            aeropuerto2 := aeropuerto1;
            FETCH vuelos INTO aeropuerto1;
        END LOOP;
        CLOSE vuelos;
        RETURN -1;
    END;
    
    FUNCTION vuelo_vuelta(aeropuerto1 INTEGER, aeropuerto2 INTEGER) RETURN INTEGER
    IS
    BEGIN
        NULL;
    END;  
 
    FUNCTION calcular_precio(vuelo INTEGER) RETURN UNIDAD
    IS
    BEGIN
        NULL;
    END;
    
    PROCEDURE actualizar_millas_usuario(usuario INTEGER,vuelo INTEGER)
    IS
    BEGIN
        NULL;
    END;  
    
    PROCEDURE cancelar_reserva(reserva INTEGER)
    IS
    BEGIN
        NULL;
    END;   
    
    PROCEDURE reservar_vuelos
    IS
        usuarioid INTEGER;
        origen INTEGER;
        destino INTEGER;
    BEGIN
        FOR I IN 1..750
        LOOP
            usuarioid := usuario_aleatorio;
        END LOOP;
    END;    
END;

