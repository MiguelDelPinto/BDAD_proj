--Reading settings
.mode columns
.headers on
.nullvalue NULL

SELECT Nome, count(*)
FROM Pessoa
JOIN Requisicao
ON Requisicao.ccUtilizador = Pessoa.cartaoCidadao
GROUP BY Nome
