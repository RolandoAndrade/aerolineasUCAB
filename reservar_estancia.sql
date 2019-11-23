CREATE OR REPLACE PACKAGE RESERVACION_HOSPEDAJE IS
    PROCEDURE reservar_hospedaje;
    PROCEDURE seleccionar_fecha(fecha_inicio IN OUT TIMESTAMP, fecha_fin IN OUT TIMESTAMP);
    PROCEDURE ubicacion(ubica IN OUT LUGAR);
    FUNCTION reservar_hospedaje_desde(usuarioid INTEGER, reservaid INTEGER, ubica LUGAR) RETURN BOOLEAN;
    PROCEDURE finalizar_reserva(reservaid INTEGER);
    PROCEDURE cancelar_reserva(reservaid INTEGER);
    PROCEDURE puntuar(carroid INTEGER);
END;
/
CREATE OR REPLACE PACKAGE BODY RESERVACION_HOSPEDAJE IS
    PROCEDURE reservar_hospedaje
    IS
    BEGIN
        NULL;
    END;
    
    PROCEDURE seleccionar_fecha(fecha_inicio IN OUT TIMESTAMP, fecha_fin IN OUT TIMESTAMP)
    IS
    BEGIN
        NULL;
    END;
    
    PROCEDURE ubicacion(ubica IN OUT LUGAR)
    IS
    BEGIN
        NULL;
    END;
    
    FUNCTION reservar_hospedaje_desde(usuarioid INTEGER, reservaid INTEGER, ubica LUGAR) RETURN BOOLEAN
    IS
    BEGIN
        NULL;
    END;
    
    PROCEDURE finalizar_reserva(reservaid INTEGER)
    IS
    BEGIN
        NULL;
    END;
    
    PROCEDURE cancelar_reserva(reservaid INTEGER)
    IS
    BEGIN
        NULL;
    END;
    
    PROCEDURE puntuar(carroid INTEGER)
    IS
    BEGIN
        NULL;
    END;
END;