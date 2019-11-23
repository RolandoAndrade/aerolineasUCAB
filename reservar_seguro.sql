CREATE OR REPLACE PACKAGE RESERVACION_SEGURO IS
    PROCEDURE reservar_seguro(reservaid INTEGER);
    PROCEDURE subir_precio(seguroid INTEGER, monto UNIDAD);
    PROCEDURE agregar_servicios(seguroid INTEGER);
END;
/
CREATE OR REPLACE PACKAGE BODY RESERVACION_SEGURO IS
    PROCEDURE subir_precio(seguroid INTEGER, monto UNIDAD)
    IS
    BEGIN
        NULL;
    END;
    
    PROCEDURE agregar_servicios(seguroid INTEGER)
    IS
    BEGIN
        NULL;
    END;
    
    PROCEDURE reservar_seguro(reservaid INTEGER)
    IS
        reserv RESERVA_VUELO%RowType;
        fechafin TIMESTAMP;
    BEGIN
        SELECT * INTO reserv FROM RESERVA_VUELO WHERE id_reserva_vuelo = reservaid;
        SELECT fecha_salida INTO fechafin FROM VUELO WHERE id_vuelo = reserv.vuelo_id;
    END;
END;
