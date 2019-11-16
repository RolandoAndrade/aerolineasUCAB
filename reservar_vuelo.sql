CREATE OR REPLACE PACKAGE RESERVACION_VUELOS IS
    PROCEDURE reservar_vuelos;
    FUNCTION usuario_aleatorio RETURN INTEGER;
    FUNCTION hay_vuelo(aeropuerto1 INTEGER, aeropuerto2 INTEGER, usuarioid INTEGER, fecha TIMESTAMP) RETURN INTEGER;
    FUNCTION origen_destino_aleatorio(aeropuerto1 IN OUT INTEGER, aeropuerto2 IN OUT INTEGER, usuarioid INTEGER) RETURN INTEGER;
    FUNCTION vuelo_vuelta(aeropuerto1 INTEGER, aeropuerto2 INTEGER, usuarioid INTEGER, fecha TIMESTAMP) RETURN INTEGER;
    PROCEDURE asignar_asiento(vueloid INTEGER, usuarioid INTEGER); 
    FUNCTION calcular_precio(vueloid INTEGER) RETURN UNIDAD;
    PROCEDURE actualizar_millas_usuario(usuarioid INTEGER,vueloid INTEGER);
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
        dbms_output.put_line('q: ¿Desea hacer una reserva triple?');
        IF aceptar_o_rechazar(0.1) THEN
            dbms_output.put_line('r: Sí');
        ELSE
            dbms_output.put_line('r: No');
        END IF;
    END;
    
    PROCEDURE asignar_asiento(vueloid INTEGER, usuarioid INTEGER)
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
    
    FUNCTION hay_vuelo(aeropuerto1 INTEGER, aeropuerto2 INTEGER, usuarioid INTEGER, fecha TIMESTAMP) RETURN INTEGER
    IS
        CURSOR vuelos IS
        SELECT id_vuelo
        FROM VUELO
        WHERE aeropuerto_sale = aeropuerto1 
        AND aeropuerto_llega = aeropuerto2
        AND estado = 'no iniciado'
        AND asientosDisponibles(id_vuelo) >0
        AND chocaConOtrosVuelosUsuario(id_vuelo, usuarioid) = 0
        AND (fecha IS NULL OR fecha_salida+1>fecha)
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
        AND asientosDisponibles(W.id_vuelo)>0
        AND chocaConOtrosVuelosUsuario(V.id_vuelo, usuarioid) = 0
        AND chocaConOtrosVuelosUsuario(W.id_vuelo, usuarioid) = 0
        AND (fecha IS NULL OR V.fecha_salida+1>fecha)
        ORDER BY dbms_random.value;
        
        vueloid INTEGER;
    BEGIN
        dbms_output.put_line('*Verificando si hay vuelos o escalas que no choquen con los horarios de vuelos del usuario entre '||
        getAeropuerto(aeropuerto1).lugar_aeropuerto.ciudad||' y '||getAeropuerto(aeropuerto2).lugar_aeropuerto.ciudad);
        OPEN vuelos;
        FETCH vuelos INTO vueloid;
        IF vuelos%FOUND THEN
            dbms_output.put_line('  c: Se eligió el vuelo '||vueloid||' que sale el '||getVuelo(vueloid).fecha_salida);
            RETURN vueloid;
        END IF;
        CLOSE vuelos;
        OPEN vuelos2;
        FETCH vuelos2 INTO vueloid;
        IF vuelos2%FOUND THEN
            RETURN vueloid;
        END IF;
        CLOSE vuelos2;
        dbms_output.put_line('  e: No hay vuelos disponibles que cumplan con las condiciones');
        RETURN -1;
    END;
    
    FUNCTION origen_destino_aleatorio(aeropuerto1 IN OUT INTEGER, aeropuerto2 IN OUT INTEGER, usuarioid INTEGER) RETURN INTEGER
    IS
        CURSOR vuelos IS
        SELECT id_aeropuerto
        FROM AEROPUERTO
        ORDER BY dbms_random.value;
        
        vueloid INTEGER;
    BEGIN
        dbms_output.put_line('*Seleccionando destinos');
        OPEN vuelos;
        FETCH vuelos INTO aeropuerto1;
        WHILE vuelos%FOUND
        LOOP
            IF aeropuerto1 IS NOT NULL AND aeropuerto2 IS NOT NULL THEN
                vueloid:=hay_vuelo(aeropuerto1, aeropuerto2, usuarioid, NULL);
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
        dbms_output.put_line('  e: No se pudo asignar vuelo al usuario, saltando');
        RETURN -1;
    END;
    
    FUNCTION vuelo_vuelta(aeropuerto1 INTEGER, aeropuerto2 INTEGER, usuarioid INTEGER, fecha TIMESTAMP) RETURN INTEGER
    IS
        vuelov INTEGER;
    BEGIN
        dbms_output.put_line('*Buscando vuelo de vuelta que se realice como mínimo un dia después');
        vuelov:= hay_vuelo(aeropuerto2,aeropuerto1,usuarioid,fecha);
        IF vuelov != -1 THEN
            dbms_output.put_line('q: Elegir modalidad del vuelo');
            IF aceptar_o_rechazar(0.5) THEN
                dbms_output.put_line('r: Ida');
                RETURN vuelov;
            ELSE
                dbms_output.put_line('r: Ida y Vuelta');
                RETURN -1;
            END IF;
        END IF;
        RETURN -1;
    END;  
 
    FUNCTION calcular_precio(vueloid INTEGER) RETURN UNIDAD
    IS
    BEGIN
        NULL;
    END;
    
    PROCEDURE actualizar_millas_usuario(usuarioid INTEGER,vueloid INTEGER)
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
        dbms_output.put_line('******************************');
        dbms_output.put_line('*                            *');
        dbms_output.put_line('*   RESERVACION DE VUELOS    *');
        dbms_output.put_line('*                            *');
        dbms_output.put_line('******************************');
        FOR I IN 1..5
        LOOP
            usuarioid := usuario_aleatorio;
            dbms_output.put_line('-----El usuario '||usuarioid||' desea hacer una reserva-----');
            origen:=NULL;
            destino:=NULL;
            vueloid:=origen_destino_aleatorio(origen,destino,usuarioid);
            reservatriple(usuarioid);
            vueltaid :=vuelo_vuelta(origen,destino,usuarioid,getVuelo(vueloid).fecha_salida);
        END LOOP;
    END;       
END;
SELECT * FROM DISPONIBILIDAD;
SELECT asientosDisponibles(id_vuelo) FROM VUELO;
SELECT RESERVACION_VUELOS.usuario_aleatorio() FROM DUAL;