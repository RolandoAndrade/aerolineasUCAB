CREATE or REPLACE PACKAGE PAGAR_RESERVA IS
    PROCEDURE pagar(usuarioid INTEGER, reservaid INTEGER);
    FUNCTION millas_suficientes(usuarioid INTEGER) RETURN BOOLEAN;
    FUNCTION pagar_con_millas(usuarioid INTEGER, reservaid INTEGER) RETURN BOOLEAN;
    FUNCTION calcula_distancia(aeropuerto1 INTEGER, aeropuerto2 INTEGER) RETURN UNIDAD;
    FUNCTION monto_aleatorio(precio NUMBER) RETURN UNIDAD;
    FUNCTION seleccionar_tipo_pago(usuarioid INTEGER) RETURN INTEGER;
    PROCEDURE cambiar_estado_reserva(reservaid INTEGER);
    PROCEDURE pagar_tarjeta(usuarioid INTEGER, reservaid INTEGER);
END;
/
CREATE OR REPLACE PACKAGE BODY PAGAR_RESERVA IS

    FUNCTION millas_suficientes(usuarioid INTEGER) RETURN BOOLEAN
    IS
    BEGIN
        NULL;
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
    BEGIN
        NULL;
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
    
    PROCEDURE pagar(usuarioid INTEGER, reservaid INTEGER)
    IS
    BEGIN
        NULL;
    END;
END;