--Reading settings
.mode columns
.headers on
.nullvalue NULL
.width 15 15 10

SELECT cartaoCidadao, nomeManutencao, numAtos
FROM (
    SELECT distinct Funcionario.cartaoCidadao as cartaoCidadao, AtoDeManutencao.nomeManutencao as nomeManutencao
    FROM Funcionario, AtoDeManutencao
    WHERE Funcionario.cartaoCidadao = AtoDeManutencao.ccFuncionario
)
NATURAL JOIN (
    SELECT ccFuncionario as cartaoCidadao, nomeManutencao, COUNT(*) as numAtos
    FROM AtoDeManutencao
    GROUP BY ccFuncionario, nomeManutencao
);