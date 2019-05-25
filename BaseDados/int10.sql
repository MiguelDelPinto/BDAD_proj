--Reading settings
.mode columns
.headers on
.nullvalue NULL
.width 20 5

SELECT Nome as nomeUtilizador, cast(strftime('%Y.%m%d', 'now') - strftime('%Y.%m%d', dataNascimento) as int) as idade
FROM Pessoa
NATURAL JOIN Utilizador
WHERE ( idade BETWEEN 18 AND 25);




