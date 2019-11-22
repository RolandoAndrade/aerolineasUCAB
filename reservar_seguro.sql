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
        
    END;
    
    PROCEDURE reservar_seguro(reservaid INTEGER)
    IS
        reserv RESERVA_VUELO%RowType;
        fechafin TIMESTAMP;
    BEGIN
        SELECT * INTO reserv FROM RESERVA_VUELO WHERE id_reserva_vuelo = reservaid;
        SELECT fecha_salida INTO fechafin FROM VUELO WHERE id_vuelo = reserv.vuelo_id;
        INSERT INTO SEGURO VALUES(id_seguro.nextval,
        	RESERVA(reserv.reserva_vuelo.fecha_inicio,fechafin,
        		UNIDAD(0,'dolar','monetaria','usd'),'sin pagar'));
        agregar_servicios(id_seguro.currval);

    END;
END;
