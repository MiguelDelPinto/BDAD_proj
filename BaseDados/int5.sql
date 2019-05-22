DROP VIEW IF EXISTS atosDoFuncionario;
DROP VIEW IF EXISTS numAtosDoFuncionario;

CREATE VIEW atosDoFuncionario AS
    SELECT distinct Funcionario.cartaoCidadao as cartaoCidadao, AtoDeManutencao.nomeManutencao as nomeManutencao
    FROM Funcionario, AtoDeManutencao
    WHERE Funcionario.cartaoCidadao = AtoDeManutencao.ccFuncionario;    

CREATE VIEW numAtosDoFuncionario AS
    SELECT ccFuncionario as cartaoCidadao, nomeManutencao, COUNT(*) as numAtos
    FROM AtoDeManutencao
    GROUP BY ccFuncionario, nomeManutencao;

SELECT  cartaoCidadao, nomeManutencao, numAtos
FROM atosDoFuncionario
JOIN numAtosDoFuncionario
ON atosDoFuncionario.cartaoCidadao = numAtosDoFuncionario.cartaoCidadao
   AND
   atosDoFuncionario.nomeManutencao = numAtosDoFuncionario.nomeManutencao;
