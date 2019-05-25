--Reading settings
.mode columns
.headers on
.nullvalue NULL

SELECT round(avg(duracao),2) as duracaoMedia
FROM Reserva;
