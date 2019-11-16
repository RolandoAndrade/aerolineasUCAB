CREATE OR REPLACE PACKAGE RESERVACION_VUELOS IS
    PROCEDURE reservar_vuelos;
    FUNCTION usuario_aleatorio RETURN INTEGER;
    FUNCTION hay_vuelo(aeropuerto1 INTEGER, aeropuerto2 INTEGER, usuarioid INTEGER, fecha TIMESTAMP) RETURN INTEGER;
    FUNCTION origen_destino_aleatorio(aeropuerto1 IN OUT INTEGER, aeropuerto2 IN OUT INTEGER, usuarioid INTEGER) RETURN INTEGER;
    FUNCTION vuelo_vuelta(vueloida INTEGER, aeropuerto1 INTEGER, aeropuerto2 INTEGER, usuarioid INTEGER, fecha TIMESTAMP) RETURN INTEGER;
    PROCEDURE asignar_asiento(vueloid INTEGER, usuarioid INTEGER); 
    FUNCTION calcular_precio(vueloid INTEGER, vueltaid INTEGER) RETURN UNIDAD;
    PROCEDURE actualizar_millas_usuario(usuarioid INTEGER,vueloid INTEGER);
    PROCEDURE cancelar_reserva(reservaid INTEGER);
    PROCEDURE reservatriple(reservaid INTEGER);
    PROCEDURE agregar_seguro(reservaid INTEGER);
    FUNCTION abrir_vuelo(vuelov INTEGER) RETURN INTEGER;
END;
/
CREATE OR REPLACE PACKAGE BODY RESERVACION_VUELOS AS

    PROCEDURE agregar_seguro(reservaid INTEGER)
    IS
    BEGIN
        dbms_output.put_line('q: ¿Desea reservar un seguro?');
        IF aceptar_o_rechazar(0.5) THEN
            dbms_output.put_line('r: Sí');
        ELSE
            dbms_output.put_line('r: No');
        END IF;
    END;

    PROCEDURE reservatriple(reservaid INTEGER)
    IS
    BEGIN
        dbms_output.put_line('q: ¿Desea hacer una reserva triple?');
        IF aceptar_o_rechazar(0.1) THEN
            dbms_output.put_line('  r: Sí');
        ELSE
            dbms_output.put_line('  r: No');
        END IF;
    END;
    
    PROCEDURE asignar_asiento(vueloid INTEGER, usuarioid INTEGER)
    IS
        dispon INTEGER;   
        CURSOR vuelos IS
        SELECT id_disponibilidad
        FROM DISPONIBILIDAD
        WHERE vuelo_id = vueloid
        AND usuario_id IS NULL
        ORDER BY dbms_random.value;
    BEGIN
        dbms_output.put_line('*Asignando asiento al usuario en vuelo '||vueloid);
        OPEN vuelos;
        FETCH vuelos INTO dispon;
        IF vuelos%FOUND THEN
            UPDATE DISPONIBILIDAD
            SET usuario_id = usuarioid
            WHERE id_disponibilidad = dispon;
        END IF;
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
        dbms_output.put_line('  -Verificando si hay vuelos o escalas que no choquen con los horarios de vuelos del usuario entre '||
        getAeropuerto(aeropuerto1).lugar_aeropuerto.ciudad||' y '||getAeropuerto(aeropuerto2).lugar_aeropuerto.ciudad);
        OPEN vuelos;
        FETCH vuelos INTO vueloid;
        IF vuelos%FOUND THEN
            dbms_output.put_line('      c: Se eligió el vuelo '||vueloid||' que sale el '||getVuelo(vueloid).fecha_salida);
            RETURN vueloid;
        END IF;
        CLOSE vuelos;
        OPEN vuelos2;
        FETCH vuelos2 INTO vueloid;
        IF vuelos2%FOUND THEN
            RETURN vueloid;
        END IF;
        CLOSE vuelos2;
        dbms_output.put_line('      e: No hay vuelos disponibles que cumplan con las condiciones');
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
    
    FUNCTION abrir_vuelo(vuelov INTEGER) RETURN INTEGER
    IS
        vuel VUELO%RowType;
        vuelvuel VUELO%RowType;
        duracion UNIDAD;
        avi AVION%RowType;
        CURSOR aviones IS
        SELECT AV.*
        FROM DISPONIBILIDAD D, ASIENTO A, AVION AV
        WHERE D.vuelo_id = vuelov
        AND D.asiento_id = A.id_asiento
        AND AV.id_avion = A.avion_id;
    BEGIN
        OPEN aviones;
        FETCH aviones INTO avi;
        IF aviones%FOUND THEN
            vuel := getVuelo(vuelov);
            vuelvuel := NULL;
            IF vuel.vuelo_id != -1 THEN
                vuelvuel := getVuelo(vuel.vuelo_id);
                duracion := ASIGNACION_VUELOS.duracion_vuelo(vuelvuel.aeropuerto_llega, vuelvuel.aeropuerto_sale, avi.velocidad_max);
                ASIGNACION_VUELOS.abrir_vuelo(vuelvuel.aeropuerto_sale, vuelvuel.aeropuerto_llega, vuelvuel.fecha_salida+30, duracion,avi.id_avion,null);
            END IF;
            duracion := ASIGNACION_VUELOS.duracion_vuelo(vuel.aeropuerto_llega, vuel.aeropuerto_sale, avi.velocidad_max);
            ASIGNACION_VUELOS.abrir_vuelo(vuel.aeropuerto_sale, vuel.aeropuerto_llega, vuel.fecha_salida+30+1/2, duracion,avi.id_avion, id_vuelo.currval);
            RETURN id_vuelo.currval;
        END IF;
        CLOSE aviones;
        RETURN -1;
    END;
    
    FUNCTION vuelo_vuelta(vueloida INTEGER, aeropuerto1 INTEGER, aeropuerto2 INTEGER, usuarioid INTEGER, fecha TIMESTAMP) RETURN INTEGER
    IS
        vuelov INTEGER;
    BEGIN
        dbms_output.put_line('*Buscando vuelo de vuelta que se realice como mínimo un dia después');
        vuelov:= hay_vuelo(aeropuerto2,aeropuerto1,usuarioid,fecha);
        IF vuelov = -1 THEN
            dbms_output.put_line('q: Parece que no hay ningún vuelo, ¿Desea solicitar que se abra alguno?');
            IF aceptar_o_rechazar(0.5) THEN
                dbms_output.put_line('  r: Abre un vuelo, que debe ser ida y vuelta');
                RETURN abrir_vuelo(vueloida);
            ELSE
                dbms_output.put_line('  r: No hace falta, es un vuelo de solo ida');
                RETURN -1;
            END IF;
        END IF;
        
        dbms_output.put_line('q: Elegir modalidad del vuelo');
        IF aceptar_o_rechazar(0.3) THEN
            dbms_output.put_line('  r: Ida');
            RETURN vuelov;
        ELSE
            dbms_output.put_line('  r: Ida y Vuelta');
        END IF;
        RETURN -1;
    END;  
 
    FUNCTION calcular_precio(vueloid INTEGER,vueltaid INTEGER, userid INTEGER) RETURN UNIDAD
    IS
        precio NUMBER(10,5);
        monto NUMBER(10,5);
        CURSOR reservaciones IS
        SELECT precio.valor
        FROM DISPONIBILIDAD 
        WHERE vuelo_id = vueloid AND userid = usuario_id;
        
        CURSOR reservaciones2 IS
        SELECT precio.valor
        FROM DISPONIBILIDAD 
        WHERE vuelo_id = vueloid AND userid = usuario_id;
    BEGIN
        dbms_output.put_line('*Calculando precio de la reserva');
        precio:=0;
        OPEN reservaciones;
        FETCH reservaciones INTO monto;
        WHILE reservaciones%FOUND
        LOOP
            precio:=precio+monto;
            FETCH reservaciones INTO monto;
        END LOOP;
        CLOSE reservaciones;
        OPEN reservaciones2;
        FETCH reservaciones2 INTO monto;
        WHILE reservaciones2%FOUND
        LOOP
            precio:=precio+monto*0.3;
            FETCH reservaciones2 INTO monto;
        END LOOP;
        CLOSE reservaciones2;
        IF asientosDisponibles(vueloid)<20 THEN
            precio:=precio*1.5;
            dbms_output.put_line('  i: Se obtuvo un aumento al haber pocos asientos disponibles');
        END IF;
        IF asientosDisponibles(vueloid)>70 THEN
            precio:=precio*0.5;
            dbms_output.put_line('  i: Se obtuvo un descuento al haber muchos asientos disponibles');
        END IF;
        NULL;
    END;
    
    PROCEDURE actualizar_millas_usuario(usuarioid INTEGER,vueloid INTEGER)
    IS
    BEGIN
        NULL;
    END;  
    
    PROCEDURE cancelar_reserva(reservaid INTEGER)
    IS
    BEGIN
        NULL;
    END;   
    
    PROCEDURE reservar_vuelos
    IS
        usuarioid INTEGER;
        origen INTEGER;
        destino INTEGER;
        reservaid INTEGER;
        axReserva RESERVA;
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
            vueltaid :=vuelo_vuelta(vueloid,origen,destino,usuarioid,getVuelo(vueloid).fecha_salida);
            asignar_asiento(vueloid,usuarioid);
           
            IF vueltaid != -1 THEN
                asignar_asiento(vueltaid,usuarioid);
                axReserva := RESERVA(getVuelo(vueloid).fecha_salida, 
                getVuelo(vueltaid).fecha_salida, calcular_precio(vueloid,vueltaid,userid),
                'sin pagar');
            ELSE
                axReserva := RESERVA(getVuelo(vueloid).fecha_salida, 
                null, calcular_precio(vueloid,vueltaid,userid),'sin pagar');
            END IF;
            dbms_output.put_line('*Creada reserva');
            INSERT INTO RESERVA_VUELO VALUES(id_reserva_vuelo.nextval,axReserva,vueloid,usuarioid);
            --Pagar
        END LOOP;
    END;       
END;

SELECT * FROM DISPONIBILIDAD;
SELECT asientosDisponibles(id_vuelo) FROM VUELO;

EXEC RESERVACION_VUELOS.reservar_vuelos;