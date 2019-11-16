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
    PROCEDURE reservatriple(reserva INTEGER);
    PROCEDURE agregar_seguro(reserva INTEGER);
END;
/
CREATE OR REPLACE PACKAGE BODY RESERVACION_VUELOS AS

    PROCEDURE agregar_seguro(reserva INTEGER)
    IS
    BEGIN
        NULL;
    END;

    PROCEDURE reservatriple(reserva INTEGER)
    IS
    BEGIN
        NULL;
    END;
    
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
        CURSOR vuelos IS
        SELECT id_vuelo
        FROM VUELO
        WHERE aeropuerto_sale = aeropuerto1 
        AND aeropuerto_llega = aeropuerto2
        AND estado = 'no iniciado'
        AND asientosDisponibles(id_vuelo) >0;
        ORDER BY dbms_random.value;
        
        CURSOR vuelos2 IS
        SELECT W.id_vuelo
        FROM VUELO V, VUELO W
        WHERE V.aeropuerto_sale = aeropuerto1 
        AND W.aeropuerto_llega = aeropuerto2
        AND V.estado = 'no iniciado'
        AND W.estado = 'no iniciado'
        AND W.vuelo_id = V.id_vuelo
        AND asientosDisponibles(V.id_vuelo) >0
        AND asientosDisponibles(W.id_vuelo)>0;
        ORDER BY dbms_random.value;
        
        vueloid INTEGER;
    BEGIN
        OPEN vuelos;
        FETCH vuelos INTO vueloid;
        IF vuelos%FOUND THEN
            RETURN vueloid;
        END IF;
        CLOSE vuelos;
        OPEN vuelos2;
        FETCH vuelos2 INTO vueloid;
        IF vuelos2%FOUND THEN
            RETURN vueloid;
        END IF;
        CLOSE vuelos2;
        RETURN -1;
    END;  
    
    FUNCTION origen_destino_aleatorio(aeropuerto1 IN OUT INTEGER, aeropuerto2 IN OUT INTEGER) RETURN INTEGER
    IS
        CURSOR vuelos IS
        SELECT id_aeropuerto
        FROM AEROPUERTO
        ORDER BY dbms_random.value;
        
        vueloid INTEGER;
    BEGIN
        OPEN vuelos;
        FETCH vuelos INTO aeropuerto1;
        WHILE vuelos%FOUND
        LOOP
            IF aeropuerto1 IS NOT NULL OR aeropuerto2 IS NOT NULL THEN
                vueloid:=hay_vuelo(aeropuerto1, aeropuerto2);
                IF vueloid != -1 THEN
                    RETURN vueloid;
                END IF;    
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
        RETURN hay_vuelo(aeropuerto2,aeropuerto1);
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
        vueloid INTEGER;
        vueltaid INTEGER;
    BEGIN
        FOR I IN 1..750
        LOOP
            usuarioid := usuario_aleatorio;
            origen:=NULL;
            destino:=NULL;
            vueloid := origen_destino_aleatorio(origen,destino);
            reservatriple(vueloid);
            vueltaid:=vuelo_vuelta(origen,destino);
            agregar_seguro(vueloid);
            asignar_asiento(vueloid,usuarioid);
            --pagar
            actualizar_millas_usuario(usuarioid,vueloid);
            cancelar_reserva(vueloid);
        END LOOP;
    END;    
END;
SELECT * FROM DISPONIBILIDAD;
SELECT asientosDisponibles(id_vuelo) FROM VUELO;
SELECT RESERVACION_VUELOS.usuario_aleatorio() FROM DUAL;