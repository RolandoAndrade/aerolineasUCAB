CREATE or REPLACE PACKAGE PAGAR_RESERVA IS
    PROCEDURE pagar(usuarioid INTEGER, reservaid INTEGER, tipo VARCHAR);
    FUNCTION millas_suficientes(usuarioid INTEGER, monto UNIDAD) RETURN BOOLEAN;
    FUNCTION monto_aleatorio(precio NUMBER) RETURN UNIDAD;
    FUNCTION seleccionar_tipo_pago(usuarioid INTEGER, tipo VARCHAR) RETURN INTEGER;
    PROCEDURE cambiar_estado_reserva(reservaid INTEGER, tipo VARCHAR);
    PROCEDURE pagar_tarjeta(usuarioid INTEGER, reservaid INTEGER, monto UNIDAD, tipo VARCHAR);
    FUNCTION obtener_monto(reservaid INTEGER, tipo VARCHAR) RETURN UNIDAD;
    PROCEDURE pagar_millas(usuarioid INTEGER, reservaid INTEGER, monto UNIDAD, tipo VARCHAR);
    FUNCTION millas_restantes(usuarioid INTEGER) RETURN UNIDAD;
END;
/
CREATE OR REPLACE PACKAGE BODY PAGAR_RESERVA IS

    FUNCTION millas_restantes(usuarioid INTEGER) RETURN UNIDAD
    IS
        restantes UNIDAD;
    BEGIN
        SELECT M.cantidad INTO restantes
        FROM MILLA M
        WHERE usuario_id = usuarioid;
        RETURN restantes;
    END;

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
    
    FUNCTION seleccionar_tipo_pago(usuarioid INTEGER, tipo VARCHAR) RETURN INTEGER
    IS
    BEGIN
        IF tipo = 'tcc' THEN
            FOR I IN (SELECT * FROM TARJETA_CREDITO WHERE usuario_id = usuarioid ORDER BY dbms_random.value)
            LOOP
                RETURN i.id_tarjeta_credito;
            END LOOP;
        ELSE
            FOR I IN (SELECT * FROM TARJETA_DEBITO WHERE usuario_id = usuarioid ORDER BY dbms_random.value)
            LOOP
                RETURN i.id_trajeta_debito;
            END LOOP;
        END IF;
        RETURN NULL;
    END;
    
    PROCEDURE cambiar_estado_reserva(reservaid INTEGER, tipo VARCHAR)
    IS
    BEGIN
        dbms_output.put_line('*Cambiando el estado de la reserva a pagado');
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
        tcc INTEGER;
        tdd INTEGER;
        restantes UNIDAD;
    BEGIN
        valor := monto.valor;
        WHILE valor>0
        LOOP
            dbms_output.put_line('*Pagando, monto restante: $'||valor);
            tcc := NULL;
            tdd := NULL;
            axmonto := monto_aleatorio(valor);
            dbms_output.put_line('  q: ¿Desea pagar con crédito o débito?');
            IF aceptar_o_rechazar(0.5) THEN
                dbms_output.put_line('  r: $'||axmonto.valor||' a crédito');
                tcc := seleccionar_tipo_pago(usuarioid, 'tcc');
            ELSE
                dbms_output.put_line('  r: $'||axmonto.valor||' a débito');
                tdd := seleccionar_tipo_pago(usuarioid, 'tdd');
            END IF; 
            
            valor := valor - axmonto.valor;
            restantes := millas_restantes(usuarioid);
            IF tipo = 'vuelo' THEN
                INSERT INTO PAGO VALUES(id_pago.nextval,axmonto,SYSTIMESTAMP,restantes,null,tdd,tcc,null, reservaid, null,null);
            END IF;
        END LOOP;
    END;
    
    PROCEDURE pagar_millas(usuarioid INTEGER, reservaid INTEGER, monto UNIDAD,tipo VARCHAR)
    IS
        restantes UNIDAD;
        idmilla INTEGER;
    BEGIN
        IF tipo = 'vuelo' THEN
            UPDATE MILLA M
            SET M.cantidad.valor = M.cantidad.valor - monto.convertir('monetaria','milla')
            WHERE usuario_id = usuarioid;
            SELECT M.cantidad, M.id_milla INTO restantes, idmilla
            FROM MILLA M
            WHERE usuario_id = usuarioid;
            INSERT INTO PAGO VALUES(id_pago.nextval,monto,SYSTIMESTAMP,restantes,idmilla,null,null,null, reservaid, null,null);
        END IF;
        dbms_output.put_line('*Pagando con '||monto.convertir('monetaria','milla')||' millas. Millas restantes: '||restantes.valor);
    END;
    
    PROCEDURE pagar(usuarioid INTEGER, reservaid INTEGER, tipo VARCHAR)
    IS
        monto UNIDAD;
    BEGIN
        dbms_output.put_line('-----------EL USUARIO PROCEDE A PAGAR------------');
        monto := obtener_monto(reservaid, tipo);
        IF millas_suficientes(usuarioid, monto) THEN
            dbms_output.put_line('q: ¿Desea pagar con millas?');
            IF aceptar_o_rechazar(0.5) THEN
                dbms_output.put_line('r: Sí');
                pagar_millas(usuarioid,reservaid,monto,tipo);
            ELSE
                dbms_output.put_line('r: No');
                pagar_tarjeta(usuarioid,reservaid,monto,tipo);
            END IF;
        ELSE
            dbms_output.put_line('i: Como no se tiene suficientes millas, se procede a pagar con tarjeta de crédito');
            pagar_tarjeta(usuarioid,reservaid,monto,tipo);
        END IF;
        cambiar_estado_reserva(reservaid, tipo);
        dbms_output.put_line('i: Pagado');
    END;
END;
