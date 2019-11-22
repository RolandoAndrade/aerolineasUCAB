CREATE or REPLACE PACKAGE PAGAR_RESERVA IS
    PROCEDURE pagar(usuarioid INTEGER, reservaid INTEGER, tipo VARCHAR);
    FUNCTION millas_suficientes(usuarioid INTEGER, monto UNIDAD) RETURN BOOLEAN;
    FUNCTION calcula_distancia(aeropuerto1 INTEGER, aeropuerto2 INTEGER) RETURN UNIDAD;
    FUNCTION monto_aleatorio(precio NUMBER) RETURN UNIDAD;
    FUNCTION seleccionar_tipo_pago(usuarioid INTEGER) RETURN INTEGER;
    PROCEDURE cambiar_estado_reserva(reservaid INTEGER, tipo VARCHAR);
    PROCEDURE pagar_tarjeta(usuarioid INTEGER, reservaid INTEGER, monto UNIDAD, tipo VARCHAR);
    FUNCTION obtener_monto(reservaid INTEGER, tipo VARCHAR) RETURN UNIDAD;
    PROCEDURE pagar_millas(usuarioid INTEGER, reservaid INTEGER, monto UNIDAD, tipo VARCHAR);
END;
/
CREATE OR REPLACE PACKAGE BODY PAGAR_RESERVA IS

    FUNCTION obtener_monto(reservaid INTEGER, tipo VARCHAR) RETURN UNIDAD
    IS
        monto UNIDAD;
    BEGIN
        IF tipo = 'vuelo' THEN
            SELECT R.reserva_vuelo.monto INTO monto FROM RESERVA_VUELO R WHERE id_reserva_vuelo = reservaid;
        END IF;
        RETURN monto;
    END;

    FUNCTION millas_suficientes(usuarioid INTEGER, monto UNIDAD) RETURN BOOLEAN
    IS
        millas NUMBER;
    BEGIN
        SELECT M.cantidad.valor INTO millas FROM MILLA M WHERE usuario_id = usuarioid;
        RETURN millas>monto.convertir('monetaria','milla');
    END;
    
    FUNCTION calcula_distancia(aeropuerto1 INTEGER, aeropuerto2 INTEGER) RETURN UNIDAD
    IS
    BEGIN
        NULL;
    END;
    
    FUNCTION monto_aleatorio(precio NUMBER) RETURN UNIDAD
    IS
        valor NUMBER;
    BEGIN
        valor := dbms_random.value*precio*2;
        IF valor>precio THEN
            valor:=precio;
        END IF;
        RETURN UNIDAD(valor,'dolar','monetaria','usd');
    END;
    
    FUNCTION seleccionar_tipo_pago(usuarioid INTEGER) RETURN INTEGER
    IS
    BEGIN
        NULL;
    END;
    
    PROCEDURE cambiar_estado_reserva(reservaid INTEGER, tipo VARCHAR)
    IS
    BEGIN
        IF tipo = 'vuelo' THEN
            UPDATE RESERVA_VUELO R
            SET R.reserva_vuelo.estado = 'pagado'
            WHERE R.id_reserva_vuelo = reservaid;
        END IF;
    END;
    
    PROCEDURE pagar_tarjeta(usuarioid INTEGER, reservaid INTEGER, monto UNIDAD, tipo VARCHAR)
    IS
        valor NUMBER;
        axmonto UNIDAD;
    BEGIN
        valor := monto.valor;
        WHILE valor>0
        LOOP
            NULL;
        END LOOP;
    END;
    
    PROCEDURE pagar_millas(usuarioid INTEGER, reservaid INTEGER, monto UNIDAD,tipo VARCHAR)
    IS
        restantes UNIDAD;
        idmilla INTEGER;
    BEGIN
        IF tipo = 'vuelo' THEN
            UPDATE MILLA M
            SET M.cantidad.valor = M.cantidad.valor - monto.valor
            WHERE usuario_id = usuarioid;
            SELECT M.cantidad, M.id_milla INTO restantes, idmilla
            FROM MILLA M
            WHERE usuario_id = usuarioid;
            INSERT INTO PAGO VALUES(id_pago.nextval,monto,SYSTIMESTAMP,restantes,idmilla,null,null,null, reservaid, null,null);
        END IF;
    END;
    
    PROCEDURE pagar(usuarioid INTEGER, reservaid INTEGER, tipo VARCHAR)
    IS
        monto UNIDAD;
    BEGIN
        monto := obtener_monto(reservaid, tipo);
        IF millas_suficientes(usuarioid, monto) THEN
            IF aceptar_o_rechazar(0.5) THEN
                pagar_millas(usuarioid,reservaid,monto,tipo);
            ELSE
                pagar_tarjeta(usuarioid,reservaid,monto,tipo);
            END IF;
        ELSE
            pagar_tarjeta(usuarioid,reservaid,monto,tipo);
        END IF;
        cambiar_estado_reserva(reservaid, tipo);
    END;
END;