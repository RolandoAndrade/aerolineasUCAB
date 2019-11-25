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

EXEC  CAMBIAR_ESTADOS.estadoVuelo;
exec RESERVACION_VUELOS.reservar_vuelos;
SELECT * FROM pago
order by reservavuelo_id

select vuelo_id, count(*) AS cantidad from reserva_vuelo group by vuelo_id order by cantidad desc
select count(*) from vuelo;
select * from PAGO WHERE millas_id IS NOT NULL;