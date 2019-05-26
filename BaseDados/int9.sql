--Reading settings
.mode columns
.headers on
.nullvalue NULL
.width 20 18

SELECT nome as Nome, count(*) as NumeroRequisicoes
FROM Pessoa
JOIN Requisicao
ON Requisicao.ccUtilizador = Pessoa.cartaoCidadao
GROUP BY Nome;
