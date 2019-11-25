CREATE OR REPLACE PROCEDURE simulacion
IS
BEGIN
    ASIGNACION_VUELOS.asignar_vuelos;
    RESERVACION_VUELOS.reservar_vuelos;
    RESERVACION_CARRO.reservar_carro;
    RESERVACION_HOSPEDAJE.reservar_hospedaje;
    CAMBIAR_ESTADOS.estadoVuelo;
END;