--Reading settings
.mode columns
.headers on
.nullvalue NULL
.width 12

SELECT round(avg(duracao),2) as DuracaoMedia
FROM Reserva;
