--Reading settings
.mode columns
.headers on
.nullvalue NULL

SELECT * FROM ReservaDeSala NATURAL JOIN Reserva

INSERT INTO Reserva (motivo, data, hora, duracao, ccUtilizador)
VALUES ('Clube de Politica', '2019-04-13', '10:00', 2, 15166638);

INSERT INTO ReservaDeSala (idReserva, numeroSala)
VALUES (4, 4)

