CREATE OR REPLACE PACKAGE CANCELAR_VUELO IS
   FUNCTION obtenerHora(vueloid NUMBER) RETURN NUMBER;
   FUNCTION obtenerMinuto(vueloid NUMBER) RETURN NUMBER;
   PROCEDURE estadoVuelo;
END;
/
CREATE OR REPLACE PACKAGE BODY RESERVACION_VUELOS AS
    FUNCTION obtenerHora(x NUMBER) RETURN NUMBER
    IS
        aux NUMBER(5);
        str VARCHAR(10);
    BEGIN
        SELECT TRUNC(V.duracion.valor) INTO aux
            FROM VUELO V
            WHERE V.id_vuelo = x;
        str:= TO_CHAR(aux);
        RETURN aux;    
    END;
    
    FUNCTION obtenerMinuto(x NUMBER) RETURN NUMBER
    IS
        aux NUMBER(5,2);
        aux2 NUMBER(5,2);
        str VARCHAR(10);
    BEGIN
        SELECT V.duracion.valor INTO aux
            FROM VUELO V
            WHERE V.id_vuelo = x;
        aux2:= aux - TRUNC(aux);
        aux2:= aux2*60;
        RETURN aUx2; 
    END;
    
    PROCEDURE estadoVuelo
    IS
        registro VUELO%ROWTYPE;
        fechaSystem TIMESTAMP;
        horaSystem VARCHAR(5);
        minutoSystem VARCHAR(5);
        horaVuelo NUMBER(5);
        minutoVuelo NUMBER(5);
        disponible INTEGER;
        reservados INTEGER;
        CURSOR Cvuelo IS SELECT * FROM VUELO;
    BEGIN
        dbms_output.put_line('***********************************');
        dbms_output.put_line('*                                 *');
        dbms_output.put_line('*   CAMBIANDO ESTADOS DE VUELO    *');
        dbms_output.put_line('*                                 *');
        dbms_output.put_line('***********************************');
        OPEN Cvuelo;
        FETCH Cvuelo INTO registro;
        WHILE Cvuelo%FOUND
        LOOP
            SELECT SYSTIMESTAMP INTO fechaSystem
                FROM DUAL;
            horaVuelo:=obtenerHora(registro.id_vuelo);
            minutoVuelo:=obtenerMinuto(registro.id_vuelo);
            horaSystem:= TO_CHAR(fechaSystem, 'HH');
            minutoSystem:= TO_CHAR(fechaSystem, 'MI');
            SELECT COUNT(D.id_disponibilidad) into reservados
                FROM ASIENTO A, DISPONIBILIDAD D
                WHERE D.vuelo_id = registro.id_vuelo
                AND A.id_asiento = D.asiento_id
                AND D.usuario_id = null;
            disponible:=asientosDisponibles(registro.id_vuelo);  
            IF (reservados< disponible/4 ) THEN
            dbms_output.put_line('-----El vuelo '||resgistro.id_vuelo||' fue cancelado-----');
                UPDATE VUELO SET estado = 'Cancelado' 
                      WHERE id_vuelo = registro.id_vuelo;
            END IF;
            IF(TO_CHAR(registro.fecha_salida_real, 'DD/MM/YYYY' ) >= TO_CHAR(fechaSystem, 'DD/MM/YYY' ) AND TO_CHAR(registro.fecha_salida_real,'HH')+horaVuelo >= horaSystem )THEN        
                IF(TO_CHAR(registro.fecha_salida_real,'HH')-horaSystem  BETWEEN -1 AND horaVuelo ) THEN
                dbms_output.put_line('-----El vuelo '||resgistro.id_vuelo||' esta en transito-----');
                    UPDATE VUELO SET estado = 'En Transito' 
                        WHERE id_vuelo = registro.id_vuelo;
                END IF;
            END IF;
            FETCH Cvuelo INTO registro;
        END LOOP;    
    END;
END;


--EXEC estadoVuelo;













