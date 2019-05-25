--Reading settings
.mode columns
.headers on
.nullvalue NULL

SELECT numero, cartaoCidadao, nome, duracao
FROM Sala
JOIN (
    SELECT numeroSala, cartaoCidadao, nome, duracao
    FROM ReservaDeSala
    NATURAL JOIN(
        SELECT idReserva, Reserva.ccUtilizador as cartaoCidadao, Pessoa.nome as nome, duracao
        FROM Reserva
        JOIN Pessoa 
        ON Reserva.ccUtilizador = Pessoa.cartaoCidadao
    )
)
ON numero = numeroSala;
