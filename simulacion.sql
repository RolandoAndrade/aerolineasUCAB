CREATE OR REPLACE PROCEDURE simulacion
IS
BEGIN
    ASIGNACION_VUELOS.asignar_vuelos;
    RESERVACION_VUELOS.reservar_vuelos;
    RESERVACION_CARRO.reservar_carro;
    RESERVACION_HOSPEDAJE.reservar_hospedaje;
    --CAMBIAR_ESTADOS.estadoVuelo;
END;

exec simulacion;
select * from pago
 select P.millas_restantes.valor FROM Pago p where reservavuelo_id = 16; 