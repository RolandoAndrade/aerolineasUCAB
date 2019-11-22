CREATE OR REPLACE PACKAGE RESERVACION_CARRO IS
    PROCEDURE reservar_carro;
    PROCEDURE seleccionar_fecha(fecha_inicio IN OUT TIMESTAMP, fecha_fin IN OUT TIMESTAMP);
    PROCEDURE recogida_devolucion(recogida IN OUT LUGAR, devolucion IN OUT LUGAR);
    PROCEDURE reservar_carro_desde(usuarioid INTEGER, reservaid INTEGER, recogida LUGAR, devolucion LUGAR);
END;
/
CREATE OR REPLACE PACKAGE BODY RESERVACION_CARRO IS
    
    PROCEDURE seleccionar_fecha(fecha_inicio IN OUT TIMESTAMP, fecha_fin IN OUT TIMESTAMP)
    IS
        axfecha TIMESTAMP;
    BEGIN
        fecha_inicio:=random_fecha(SYSTIMESTAMP-300,SYSTIMESTAMP+300);
        fecha_fin:=random_fecha(SYSTIMESTAMP-300,SYSTIMESTAMP+300);
        IF NOT RESERVA.validar_fecha(fecha_inicio,fecha_fin) THEN
            axfecha := fecha_inicio;
            fecha_inicio := fecha_fin;
            fecha_fin := axfecha;
        END IF;
    END;

    PROCEDURE recogida_devolucion(recogida IN OUT LUGAR, devolucion IN OUT LUGAR)
    IS
        rec LUGAR;
        dev LUGAR;
    BEGIN
        FOR I IN (SELECT * FROM CARRO ORDER BY dbms_random.value)
        LOOP
            rec := I.lugar_carro;
            BREAK;
        END LOOP;
        FOR I IN (SELECT * FROM CARRO C WHERE C.lugar_carro.ciudad = rec.ciudad ORDER BY dbms_random.value)
        LOOP
            dev := I.lugar_carro;
            BREAK;
        END LOOP;
    END;

    PROCEDURE reservar_carro_desde(usuarioid INTEGER, reservaid INTEGER, recogida LUGAR, devolucion LUGAR)
    IS
        carroid INTEGER;
    BEGIN
        carroid := NULL;
        FOR I IN (SELECT * FROM CARRO C WHERE C.lugar_carro.nombre = rec.nombre ORDER BY dbms_random.value)
        LOOP
            carroid := I.id_carro;
            BREAK;
        END LOOP;

    END;

    PROCEDURE reservar_carro
    IS
        usuarioid INTEGER;
        fecha_inicio TIMESTAMP;
        fecha_fin TIMESTAMP;
        recogida LUGAR;
        devolucion LUGAR;
        
    BEGIN
        usuarioid := getUsuarioAleatorio();
        seleccionar_fecha(fecha_inicio,fecha_fin);
        recogida_devolucion(recogida, devolucion);
        reservar_carro_desde(usuarioid, null, recogida,devolucion);
    END;

END;
