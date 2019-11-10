CREATE OR REPLACE PACKAGE RESEVACION_VUELOS IS
    PROCEDURE reservar_vuelos;
    FUNCTION usuario_aleatorio RETURN INTEGER;
    FUNCTION hay_vuelo(aeropuerto1 INTEGER, aeropuerto2 INTEGER) RETURN INTEGER;
    FUNCTION origen_destino_aleatorio(aeropuerto1 IN OUT INTEGER, aeropuerto2 IN OUT INTEGER) RETURN INTEGER;
    FUNCTION vuelo_vuelta(aeropuerto1 INTEGER, aeropuerto2 INTEGER) RETURN INTEGER;
    PROCEDURE asignar_asiento(vuelo INTEGER, usuario INTEGER); 
    FUNCTION calcular_precio(vuelo INTEGER) RETURN UNIDAD;
    PROCEDURE actualizar_millas_usuario(usuario INTEGER,vuelo INTEGER);
    PROCEDURE cancelar_reserva(reserva INTEGER);
END;
