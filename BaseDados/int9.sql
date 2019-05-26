--Reading settings
.mode columns
.headers on
.nullvalue NULL
.width 20

SELECT Nome, count(*) as numRequisicoes
FROM Pessoa
JOIN Requisicao
ON Requisicao.ccUtilizador = Pessoa.cartaoCidadao
GROUP BY Nome
