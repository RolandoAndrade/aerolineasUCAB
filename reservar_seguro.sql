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
        UPDATE SEGURO S
        SET S.reserva_seguro.monto.value = S.reserva_seguro.monto.value + monto.value
        WHERE S.id_seguro = seguroid;
    END;
    
    PROCEDURE agregar_servicios(seguroid INTEGER)
    IS
    	iter NUMBER;
    BEGIN
    	iter := (dbms_random.value + 5)*2;
    	FOR I IN (SELECT * FROM SERVICIO ORDER BY dbms_random.value)
    	LOOP
    		INSERT INTO SEGURO_SERVICIO(seguroid,I.id_servicio);
    		subir_precio(seguroid,I.precio);
    		iter:=iter-1;
    		IF iter<0 THEN
    			BREACK;
    		END IF;
    	END LOOP;
        
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
