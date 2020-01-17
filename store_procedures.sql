CREATE OR REPLACE FUNCTION aceptar_o_rechazar(probabilidadSi NUMBER) RETURN BOOLEAN
IS
BEGIN
    RETURN dbms_random.value < probabilidadSi;
END;
/
CREATE OR REPLACE PROCEDURE insertarAsientos(avion NUMBER, cantidad NUMBER, clase VARCHAR, precio NUMBER, inicio NUMBER)
IS 
BEGIN
    FOR i IN 1..cantidad LOOP
    INSERT INTO ASIENTO VALUES (id_asiento.nextVal, i+inicio, clase,UNIDAD(precio ,'dolares', 'monetaria', 'usd'), avion);
    END LOOP;
END;
/
CREATE OR REPLACE FUNCTION GenerarAleatorio RETURN NUMBER
IS
BEGIN
    RETURN ABS(MOD(dbms_random.random,5000))+1000;
END;
/
CREATE OR REPLACE FUNCTION getAeropuerto(aeropuertoId INTEGER) RETURN AEROPUERTO%RowType
IS
    registro AEROPUERTO%RowType;
BEGIN
    SELECT * INTO registro FROM AEROPUERTO WHERE id_aeropuerto = aeropuertoId;
    RETURN registro;
END;
/
CREATE OR REPLACE FUNCTION devolverNombres(x NUMBER) RETURN VARCHAR
IS
    registro USUARIO%RowType;
    nombre VARCHAR(50);
BEGIN
    SELECT p_nombre ||' '|| s_nombre INTO nombre FROM USUARIO WHERE x = id_usuario;
    dbms_output.put_line(nombre);
    RETURN nombre;
END;
/
CREATE OR REPLACE FUNCTION devolverApellidos(x NUMBER) RETURN VARCHAR
IS
    registro USUARIO%RowType;
    nombre VARCHAR(50);
BEGIN
    SELECT p_apellido ||' '|| s_apellido INTO nombre FROM USUARIO WHERE x = id_usuario;
    dbms_output.put_line(nombre);
    RETURN nombre;
END;
/
CREATE OR REPLACE FUNCTION devolverFlota(aerolinea_id NUMBER) RETURN VARCHAR
IS
    flota VARCHAR(50);
    total VARCHAR(100);
    CURSOR Cflota IS SELECT DISTINCT MA.nombre ||' '|| M.nombre 
                            FROM MARCA MA, MODELO M, AEROLINEA A, AVION AV 
                            WHERE A.id_aerolinea = AV.aerolinea_id
                            AND   M.id_modelo = AV.modelo_id
                            AND   MA.id_marca = m.marca_id
                            AND   A.id_aerolinea = aerolinea_id;
BEGIN
    OPEN Cflota;
    FETCH Cflota INTO flota;
    WHILE(Cflota%FOUND)
    LOOP
        total:=total||flota||CHR(10);
        FETCH Cflota INTO flota;
    END LOOP;
    RETURN total;
END;
/
CREATE OR REPLACE FUNCTION contarAviones(x NUMBER,y VARCHAR, z VARCHAR, m VARCHAR) RETURN NUMBER
IS
    registro NUMBER;
BEGIN
    SELECT COUNT(A.id_avion) INTO registro
        FROM AVION A, MODELO B, MARCA C, AEROLINEA D
        WHERE D.id_aerolinea = x
        AND C.nombre = y
        AND B.nombre = z
        AND A.serie_modelo = m
        AND A.aerolinea_id = D.id_aerolinea
        AND B.id_modelo = A.modelo_id
        AND C.id_marca = B.marca_id;
    RETURN registro;
END;
/
CREATE OR REPLACE FUNCTION contarAsiento(x number) RETURN VARCHAR
IS
    registro NUMBER;
    cantidad VARCHAR(100);
BEGIN
    SELECT COUNT(ASI.id_asiento) INTO registro
    FROM AVION AV, ASIENTO ASI
    WHERE AV.id_avion = ASI.avion_id
    AND AV.id_avion = x
    AND ASI.clase = 'primera clase';
    IF (registro > 0) THEN
        cantidad := registro || '  asientos de primera clase'||CHR(10);
    END IF;
    registro := 0;
    SELECT COUNT(ASI.id_asiento) INTO registro
    FROM AVION AV, ASIENTO ASI
    WHERE AV.id_avion = ASI.avion_id
    AND AV.id_avion = x
    AND ASI.clase = 'economy extra';
    IF (registro > 0) THEN
        cantidad := cantidad|| registro || '  asientos de economy extra'||CHR(10);
    END IF;
    registro := 0;
    SELECT COUNT(ASI.id_asiento) INTO registro
    FROM AVION AV, ASIENTO ASI
    WHERE AV.id_avion = ASI.avion_id
    AND AV.id_avion = x
    AND ASI.clase = 'cabina prin';
    IF (registro > 0) THEN
        cantidad := cantidad||registro || '  asientos de cabina principal'||CHR(10);
    END IF;
    RETURN cantidad;
END;
/
CREATE OR REPLACE FUNCTION concaternarVuelos(x NUMBER, y DATE) RETURN VARCHAR
IS
    registro1 VARCHAR(100);
    registro2 VARCHAR(100);
BEGIN
    SELECT A.lugar_aeropuerto.ciudad ||' ('||A.abreviatura||'), '||A.lugar_aeropuerto.pais ||' - ' INTO registro1
        FROM VUELO V, AEROPUERTO A
        WHERE V.id_vuelo = x
        AND A.id_aeropuerto = V.aeropuerto_sale;
    SELECT A.lugar_aeropuerto.ciudad ||' ('||A.abreviatura||'), '||A.lugar_aeropuerto.pais ||' '|| TO_CHAR(y,'DY Mon DD YYYY') INTO registro2
        FROM VUELO V, AEROPUERTO A
        WHERE V.id_vuelo = x
        AND A.id_aeropuerto = V.aeropuerto_llega;
    registro1:=registro1 || registro2;    
    RETURN registro1;   
END;
/
CREATE OR REPLACE FUNCTION traerSale(x NUMBER) RETURN VARCHAR
IS
    registro1 VARCHAR(50);
BEGIN
    SELECT A.lugar_aeropuerto.pais ||' ('||A.abreviatura||')' INTO registro1
        FROM VUELO V, AEROPUERTO A
        WHERE V.id_vuelo = x
        AND A.id_aeropuerto = V.aeropuerto_sale;
    RETURN registro1;

END;
/
CREATE OR REPLACE FUNCTION traerLlega(x NUMBER) RETURN VARCHAR
IS
    registro1 VARCHAR(50);
BEGIN
    SELECT A.lugar_aeropuerto.pais ||' ('||A.abreviatura||')' INTO registro1
        FROM VUELO V, AEROPUERTO A
        WHERE V.id_vuelo = x
        AND A.id_aeropuerto = V.aeropuerto_llega;
    RETURN registro1;
END;
/
CREATE OR REPLACE FUNCTION traerDuracion(x NUMBER) RETURN VARCHAR
IS
    aux NUMBER(5,2);
    aux2 NUMBER(5,2);
    registro VARCHAR(15);
BEGIN
    SELECT V.duracion.valor INTO aux
    FROM VUELO V
    WHERE V.id_vuelo = x;
    aux2:= TRUNC(aux); 
    registro:= aux2||'h ';
    aux:= aux - TRUNC(aux);
    aux:= TRUNC(aux*60);
    registro:= registro||aux ||'m';
    RETURN registro;
END;
/
CREATE OR REPLACE FUNCTION traerPago(x NUMBER,y NUMBER, z NUMBER, m NUMBER, n NUMBER) RETURN VARCHAR
IS
    registro VARCHAR(50);
    aux NUMBER(5);
    aux2 NUMBER(5);
BEGIN
   aux := m;
        IF aux IS NOT NULL THEN
            SELECT T.numero INTO registro
                FROM PAGO P, RESERVA_VUELO RV, TARJETA_DEBITO T
                WHERE RV.id_reserva_vuelo = P.reservavuelo_id
                AND T.id_trajeta_debito = P.tarjetadebito_id
                AND RV.id_reserva_vuelo = x
                AND P.tarjetadebito_id = m
                AND P.id_pago = y;
                registro:= 'TDD - '||registro;
            RETURN registro;
        END IF;
    aux:=z;    
        IF aux IS NOT NULL THEN
        SELECT T.tipo||' '||T.numero INTO registro
                FROM PAGO P, RESERVA_VUELO RV, TARJETA_CREDITO T
                WHERE RV.id_reserva_vuelo = P.reservavuelo_id
                AND T.id_tarjeta_credito = P.tarjetacredito_id
                AND RV.id_reserva_vuelo = x
                AND P.tarjetacredito_id = z
                AND P.id_pago = y;
                registro:= 'TDC - '||registro;
            RETURN registro;
        END IF;
    aux:=n;
        IF aux IS NOT NULL THEN
        SELECT P.millas_restantes.valor INTO registro
                FROM PAGO P, RESERVA_VUELO RV, MILLA M
                WHERE RV.id_reserva_vuelo = P.reservavuelo_id
                AND M.id_milla = P.millas_id
                AND RV.id_reserva_vuelo = x
                AND P.millas_id = n
                AND P.id_pago = y;
                registro:= 'Club Premiumm Millas - '||registro||' millas restantes';
            RETURN registro;
        END IF;
END;
/
CREATE OR REPLACE FUNCTION asientosDisponibles(vueloid INTEGER) RETURN INTEGER
IS
    disponibles INTEGER;
BEGIN
    SELECT COUNT(*) INTO disponibles
    FROM DISPONIBILIDAD
    WHERE vuelo_id = vueloid
    AND usuario_id IS NULL;
    IF disponibles IS NULL OR disponibles = 0 THEN
        dbms_output.put_line('e: Todos los asientos están ocupados');
        RETURN 0;
    END IF;
    RETURN disponibles ;
END;
/
CREATE OR REPLACE FUNCTION getVuelo(vueloid INTEGER) RETURN VUELO%RowType
IS
    registro VUELO%RowType;
BEGIN
    SELECT * INTO registro
    FROM VUELO
    WHERE id_vuelo = vueloid;
    RETURN registro;
END;
/
CREATE OR REPLACE FUNCTION chocaConOtrosVuelosUsuario(vueloid INTEGER, usuarioid INTEGER) RETURN NUMBER
IS
    vuelon VUELO%RowType;
    vuelov VUELO%RowType;
BEGIN
    vuelon := getVuelo(vueloid);
    FOR vuelov IN (SELECT V.* FROM VUELO V, DISPONIBILIDAD D
                   WHERE V.id_vuelo = D.vuelo_id AND D.usuario_id = usuarioid)
    LOOP
        IF (vuelon.fecha_salida BETWEEN vuelov.fecha_salida AND vuelov.fecha_salida+vuelov.duracion.valor/24)
        OR (vuelov.fecha_salida BETWEEN vuelon.fecha_salida AND vuelon.fecha_salida+vuelon.duracion.valor/24) THEN
            RETURN 1;
        END IF;
    END LOOP;
    RETURN 0;
END;
/
CREATE OR REPLACE FUNCTION getUsuarioAleatorio RETURN INTEGER
IS
BEGIN
    FOR I IN (SELECT * FROM USUARIO ORDER BY dbms_random.value)
    LOOP
        RETURN I.id_usuario;
    END LOOP;
    RETURN NULL;
END;
/
CREATE OR REPLACE FUNCTION random_fecha(minima TIMESTAMP, maxima TIMESTAMP) RETURN TIMESTAMP
IS
    hora TIMESTAMP;
BEGIN
    SELECT minima + dbms_random.value*(maxima-minima)
    INTO hora
    FROM DUAL;
    RETURN hora;
END;
/
CREATE OR REPLACE FUNCTION chocaConOtrosVuelosAvion(fechainicio TIMESTAMP, duracion UNIDAD, avionid INTEGER) RETURN NUMBER
IS
    vuelov VUELO%RowType;
BEGIN
    FOR vuelov IN (SELECT V.* FROM VUELO V, DISPONIBILIDAD D, ASIENTO A WHERE V.id_vuelo = D.vuelo_id AND
    D.asiento_id = A.id_asiento AND A.avion_id = avionid)
    LOOP
        IF (fechainicio BETWEEN vuelov.fecha_salida AND vuelov.fecha_salida+vuelov.duracion.valor/24)
        OR (vuelov.fecha_salida BETWEEN fechainicio AND fechainicio+duracion.valor/24) THEN
            RETURN 1;
        END IF;
    END LOOP;
    RETURN 0;
END;
/
CREATE OR REPLACE FUNCTION chocaConReservasCarro(fecha TIMESTAMP, carroid INTEGER) RETURN NUMBER
IS
BEGIN
    FOR reservac IN (SELECT * FROM RESERVA_CARRO WHERE carroid = carro_id)
    LOOP
        IF (fecha BETWEEN reservac.reserva_carro.fecha_inicio AND reservac.reserva_carro.fecha_fin) AND
        reservac.reserva_carro.estado != 'cancelada'
        THEN
            RETURN 1;
        END IF;
    END LOOP;
    RETURN 0;
END;
/
CREATE OR REPLACE PROCEDURE devolverDinero(usuarioid INTEGER, monto UNIDAD)
IS
BEGIN
    dbms_output.put_line('*Devolviendo dinero en millas');
    UPDATE MILLA M
    SET M.cantidad.valor = ROUND(M.cantidad.valor + monto.convertir('monetaria','milla'),2)
    WHERE usuario_id = usuarioid;
END;
/
CREATE OR REPLACE PROCEDURE icHotel(hotel NUMBER, titulo VARCHAR, descripcion VARCHAR)
IS 
BEGIN
    INSERT INTO CARACTERISTICA VALUES (id_caracteristica.nextVal, titulo, descripcion,null,null,hotel);
END;
/
CREATE OR REPLACE PROCEDURE icHabitacion(habitacion NUMBER, titulo VARCHAR, descripcion VARCHAR)
IS 
BEGIN
    INSERT INTO CARACTERISTICA VALUES (id_caracteristica.nextVal, titulo, descripcion,null,habitacion,null);
END;
/            
CREATE OR REPLACE FUNCTION chocaConReservasApartamento(fechai TIMESTAMP, fechaf TIMESTAMP, apartamentoid INTEGER) RETURN NUMBER
IS
BEGIN
    FOR reservac IN (SELECT * FROM RESERVA_ESTANCIA WHERE apartamento_id = apartamentoid)
    LOOP
        IF ((fechai BETWEEN reservac.reserva_estacia.fecha_inicio AND reservac.reserva_estacia.fecha_fin)
        OR (fechaf BETWEEN reservac.reserva_estacia.fecha_inicio AND reservac.reserva_estacia.fecha_fin))
        AND
        reservac.reserva_estacia.estado != 'cancelada'
        THEN
            RETURN 1;
        END IF;
    END LOOP;
    RETURN 0;
END;
/
CREATE OR REPLACE FUNCTION chocaConReservasHabitacion(fechai TIMESTAMP, fechaf TIMESTAMP, habitacionid INTEGER) RETURN NUMBER
IS
BEGIN
    FOR reservac IN (SELECT * FROM RESERVA_ESTANCIA WHERE habitacion_id = habitacionid)
    LOOP
        IF ((fechai BETWEEN reservac.reserva_estacia.fecha_inicio AND reservac.reserva_estacia.fecha_fin)
        OR (fechaf BETWEEN reservac.reserva_estacia.fecha_inicio AND reservac.reserva_estacia.fecha_fin))
        AND
        reservac.reserva_estacia.estado != 'cancelada'
        THEN
            RETURN 1;
        END IF;
    END LOOP;
    RETURN 0;
END;
/
CREATE OR REPLACE FUNCTION distanciaEntreAeropuertos(aeropuerto1 INTEGER,aeropuerto2 INTEGER) RETURN UNIDAD
IS
        R INTEGER; -- RADIO DE LA TIERRA
        lat1 NUMBER(10,5); -- LATITUD 1
        lat2 NUMBER(10,5); -- LATITUD 2
        lon1 NUMBER(10,5); -- LONGITUD 1
        lon2 NUMBER(10,5); -- LONGITUD 2
        dLat NUMBER(10,5); -- DELTA LATITUD
        dLon NUMBER(10,5); -- DELTA LONGITUD
        aero1 AEROPUERTO%RowType;
        aero2 AEROPUERTO%RowType;
        a NUMBER(10,5);
        c NUMBER(10,5);
BEGIN
    R:=6371000;
    aero1 := getAeropuerto(aeropuerto1);
    aero2 := getAeropuerto(aeropuerto2);
    lat1 := aero1.latitud.convertir('coordenada','rad');
    lat2 := aero2.latitud.convertir('coordenada','rad');
    lon1 := aero1.longitud.convertir('coordenada','rad');
    lon2 := aero2.longitud.convertir('coordenada','rad');
    dLat := lat2 - lat1;
    dLon := lon2 - lon1;
    a:=SIN(dLat/2)*SIN(dLat/2)+COS(lat1)*COS(lat2)*SIN(dLon/2)*SIN(dLon/2);
    c:=2*ATAN(SQRT(a)/SQRT(1-a))/1000;
    RETURN UNIDAD(R*c,'kilometros','distancia','km');
    -- FORMULA DE https://www.movable-type.co.uk/scripts/latlong.html
END;
/
CREATE OR REPLACE FUNCTION distanciaDelVuelo(vueloid INTEGER) RETURN UNIDAD
IS
    vuelo1 VUELO%RowType;
    distancia UNIDAD;
BEGIN
    vuelo1 := getVuelo(vueloid);
    distancia := distanciaEntreAeropuertos(vuelo1.aeropuerto_sale,vuelo1.aeropuerto_llega);
    IF vuelo1.vuelo_id IS NOT NULL THEN
        vuelo1:=getVuelo(vuelo1.vuelo_id);
        distancia.valor := distancia.valor + distanciaEntreAeropuertos(vuelo1.aeropuerto_sale,vuelo1.aeropuerto_llega).valor;
    END IF;
    RETURN distancia;
END;
/
CREATE OR REPLACE FUNCTION getSeguroDe(reservavueloid INTEGER) RETURN INTEGER
IS
    ret INTEGER;
BEGIN
    SELECT id_seguro INTO ret FROM SEGURO WHERE reservavuelo_id = reservavueloid;
    RETURN ret;
END;
/
CREATE OR REPLACE FUNCTION getCarroDe(reservavueloid INTEGER) RETURN INTEGER
IS
    ret INTEGER;
BEGIN
    SELECT id_reserva_carro INTO ret FROM RESERVA_CARRO WHERE reservavuelo_id = reservavueloid;
    RETURN ret;
END;
/
CREATE OR REPLACE FUNCTION getEstanciaDe(reservavueloid INTEGER) RETURN INTEGER
IS
    ret INTEGER;
BEGIN
    SELECT id_reserva_estancia INTO ret FROM RESERVA_ESTANCIA WHERE reservavuelo_id = reservavueloid;
    RETURN ret;
END;
/
CREATE OR REPLACE FUNCTION fecha_reporte(fechareal TIMESTAMP, fechaestimada TIMESTAMP, salelugar VARCHAR) RETURN VARCHAR
IS
BEGIN
    IF fechareal IS NOT NULL THEN
        RETURN TO_CHAR(fechareal,'HH:MI PM')||' '||salelugar;
    END IF;
    RETURN TO_CHAR(fechaestimada,'HH:MI PM')||' '||salelugar;
END;
/
CREATE OR REPLACE FUNCTION traerfechanull(fechareal TIMESTAMP) RETURN VARCHAR
IS
BEGIN
    IF fechareal IS NOT NULL THEN
        RETURN TO_CHAR(fechareal,'Mon DD YYYY');
    END IF;
    RETURN 'No tiene retorno';
END;
/

CREATE OR REPLACE FUNCTION getLogoAerolinea(vueloid INTEGER) RETURN BLOB
IS
BEGIN
    FOR I IN (SELECT R.*
              FROM AVION A, ASIENTO S, DISPONIBILIDAD D, AEROLINEA R
              WHERE A.id_avion = S.avion_id AND
              S.id_asiento = D.asiento_id AND
              vuelo_id = vueloid AND
              A.aerolinea_id = R.id_aerolinea)
    LOOP
        RETURN I.logo;
    END LOOP;
    RETURN NULL;
END;

/

CREATE OR REPLACE FUNCTION getAeropuertoReporte(aeropuertoid INTEGER) RETURN VARCHAR
IS
    registro AEROPUERTO%RowType;
BEGIN
    registro:= getAeropuerto(aeropuertoid);
    RETURN registro.lugar_aeropuerto.ciudad||' ('||registro.abreviatura||'), '||registro.lugar_aeropuerto.pais;
END;
/
CREATE OR REPLACE FUNCTION getFechaDespegue(vueloid INTEGER) RETURN VARCHAR
IS
    registro VUELO%RowType;
BEGIN
    registro:=getVuelo(vueloid);
    IF registro.fecha_salida_real IS NOT NULL THEN
        RETURN TO_CHAR(registro.fecha_salida_real,'DD Mon yyyy HH:MI PM');
    END IF;
    RETURN TO_CHAR(registro.fecha_salida,'DD Mon yyyy HH:MI PM');
END;
/
CREATE OR REPLACE FUNCTION getFechaLLegada(vueloid INTEGER) RETURN VARCHAR
IS
    registro VUELO%RowType;
BEGIN
    registro:=getVuelo(vueloid);
    IF registro.fecha_llegada_real IS NOT NULL THEN
        RETURN TO_CHAR(registro.fecha_llegada_real,'DD Mon yyyy HH:MI PM');
    ELSIF registro.fecha_salida_real IS NOT NULL THEN
        RETURN TO_CHAR(registro.fecha_salida_real+registro.duracion.valor,'DD Mon yyyy HH:MI PM');
    END IF;
    RETURN 'Por calcular';
END;
/
CREATE OR REPLACE FUNCTION getPuntuacionDelApartamento(apartamentoid INTEGER) RETURN NUMBER
IS
    punt NUMBER;
BEGIN
    SELECT AVG(puntuacion) INTO punt 
    FROM RESERVA_ESTANCIA 
    WHERE apartamento_id = apartamentoid 
    AND puntuacion>0;
    RETURN punt;
END;
/
CREATE OR REPLACE FUNCTION getPuntuacionDelHotel(hotelid INTEGER) RETURN NUMBER
IS
    punt NUMBER;
BEGIN
    SELECT AVG(puntuacion) INTO punt 
    FROM RESERVA_ESTANCIA R, HABITACION H
    WHERE 
    habitacion_id = H.id_habitacion AND
    hotel_id = hotelid
    AND puntuacion>0;
    RETURN punt;
END;
/
/
CREATE OR REPLACE FUNCTION devolverCaracteristica(x NUMBER) RETURN VARCHAR
IS
    caracteristica VARCHAR(1000);
    total VARCHAR(1000);
    CURSOR Ccaracteristica IS SELECT C.descripcion 
                        FROM CARACTERISTICA C, HABITACION HA
                        WHERE HA.id_habitacion = C.habitacion_id
                        AND HA.id_habitacion = x;
BEGIN
    OPEN Ccaracteristica;
    FETCH Ccaracteristica INTO caracteristica;
    WHILE(Ccaracteristica%FOUND)
    LOOP
        total:=total|| ', '||caracteristica;
        FETCH Ccaracteristica INTO caracteristica;
    END LOOP;
    RETURN total;
END;
/
CREATE OR REPLACE FUNCTION devolverCaracteristicaA(x NUMBER) RETURN VARCHAR
IS
    caracteristica VARCHAR(1000);
    total VARCHAR(1000);
    CURSOR Ccaracteristica IS SELECT C.descripcion 
                        FROM CARACTERISTICA C, APARTAMENTO HA
                        WHERE HA.id_apartamento = C.apartamento_id
                        AND HA.id_apartamento = x;
BEGIN
    OPEN Ccaracteristica;
    FETCH Ccaracteristica INTO caracteristica;
    WHILE(Ccaracteristica%FOUND)
    LOOP
        total:=total|| ', '||caracteristica;
        FETCH Ccaracteristica INTO caracteristica;
    END LOOP;
    RETURN total;
END;
/
CREATE OR REPLACE FUNCTION traerPagoTotal(x NUMBER) RETURN VARCHAR
IS
    registro1 VARCHAR(50);
    aux NUMBER(2);
BEGIN
    select SUM(p.monto.valor) into registro1
    from reserva_estancia re, pago p
    where RE.id_reserva_estancia = p.reservaestancia_id
    and RE.id_reserva_estancia = x;
    RETURN registro1;
END;
/
CREATE OR REPLACE FUNCTION traerCantidad(x NUMBER, y NUMBER) RETURN VARCHAR
IS
    registro1 VARCHAR(50);
    aux NUMBER(2);
BEGIN
    aux := 2;
    SELECT SUM(HU.cantidad) INTO registro1
    from huesped HU, USUARIO U, reserva_estancia re
    WHERE U.id_usuario = HU.usuario_id
    AND RE.id_reserva_estancia = HU.reservaestancia_id
    AND RE.id_reserva_estancia = X
    AND U.id_usuario = Y;
    IF (registro1 IS NOT NULL) THEN
        RETURN registro1;
    ELSE 
        RETURN aux;
    END IF;
END;

CREATE OR REPLACE FUNCTION traerCantidad(x NUMBER, y NUMBER) RETURN VARCHAR
IS
    registro VARCHAR(100);
BEGIN
    FOR I IN (SELECT * FROM HUESPED WHERE reservaestancia_id=x AND usuario_id=y)
    LOOP
        registro:=registro||I.cantidad||' '||I.tipo||CHR(10);
    END LOOP;
    return registro;
END;

CREATE OR REPLACE FUNCTION traerPagoTotalCarro(x NUMBER) RETURN VARCHAR
IS
    registro1 VARCHAR(50);
BEGIN
    select SUM(p.monto.valor) INTO registro1
    from reserva_carro rc, pago p
    where rc.id_reserva_carro = p.reservacarro_id
    and rc.id_reserva_carro = x;
    RETURN registro1;
END;


CREATE FUNCTION usuarioReserva(res INTEGER) RETURN INTEGER
IS
BEGIN
   FOR I IN (SELECT * FROM HUESPED WHERE reservaestancia_id=res)
   LOOP
    RETURN I.usuario_id;
   END LOOP;
   return 1;
END;