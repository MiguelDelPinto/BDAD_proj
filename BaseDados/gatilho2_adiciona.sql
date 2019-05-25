DROP TRIGGER IF EXISTS impedeReservaSalaOcupada;

CREATE TRIGGER impedeReservaSalaOcupada
BEFORE INSERT ON ReservaDeSala
FOR EACH ROW
BEGIN
     SELECT CASE
     WHEN
     (
          SELECT strftime('%h', Data) + strftime('%h', Hora)
	  FROM Reserva NATURAL JOIN ReservaDeSala
	  WHERE
	       NEW.idReserva <> idReserva AND NEW.numeroSala = numeroSala
     ) BETWEEN
            (
	      SELECT strftime('%h', Data) + strftime('%h', Hora)
	      FROM Reserva NATURAL JOIN ReservaDeSala
	      WHERE
	           NEW.idReserva = idReserva	
	     )
	     AND
	     (
	       SELECT strftime('%h', Data) + strftime('%h', Hora) + Duracao
	       FROM Reserva NATURAL JOIN ReservaDeSala
	       WHERE
	            NEW.idReserva = idReserva
	     )
     THEN raise(ABORT, 'A sala ja se encontra reservada nessa data.')
END;
