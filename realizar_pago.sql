CREATE or REPLACE PACKAGE PAGAR_RESERVA IS
    PROCEDURE pagar(usuarioid INTEGER, reservaid INTEGER, tipo VARCHAR);
    FUNCTION millas_suficientes(usuarioid INTEGER, monto UNIDAD) RETURN BOOLEAN;
    FUNCTION pagar_con_millas(usuarioid INTEGER, reservaid INTEGER) RETURN BOOLEAN;
    FUNCTION calcula_distancia(aeropuerto1 INTEGER, aeropuerto2 INTEGER) RETURN UNIDAD;
    FUNCTION monto_aleatorio(precio NUMBER) RETURN UNIDAD;
    FUNCTION seleccionar_tipo_pago(usuarioid INTEGER) RETURN INTEGER;
    PROCEDURE cambiar_estado_reserva(reservaid INTEGER);
    PROCEDURE pagar_tarjeta(usuarioid INTEGER, reservaid INTEGER);
    FUNCTION obtener_monto(reservaid INTEGER, tipo VARCHAR) RETURN UNIDAD;
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
    
    FUNCTION pagar_con_millas(usuarioid INTEGER, reservaid INTEGER) RETURN BOOLEAN
    IS
    BEGIN
        NULL;
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
    
    PROCEDURE cambiar_estado_reserva(reservaid INTEGER)
    IS
    BEGIN
        NULL;
    END;
    
    PROCEDURE pagar_tarjeta(usuarioid INTEGER, reservaid INTEGER)
    IS
    BEGIN
        NULL;
    END;
    
    PROCEDURE pagar(usuarioid INTEGER, reservaid INTEGER, tipo VARCHAR)
    IS
        monto UNIDAD;
    BEGIN
        monto := obtener_monto(reservaid, tipo);
        
    END;
END;