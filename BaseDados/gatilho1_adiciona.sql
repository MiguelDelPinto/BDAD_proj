DROP TRIGGER IF EXISTS adicionaFuncionarioManutencao;

CREATE TRIGGER adicionaFuncionarioManutencao
AFTER INSERT ON AtoDeManutencao
FOR EACH ROW
WHEN (NEW.ccFuncionario IS NULL)
BEGIN
    UPDATE AtoDeManutencao
    SET ccFuncionario = 
        (
            SELECT cartaoCidadao
            FROM Funcionario
            JOIN (
                SELECT ccFuncionario, MIN(numAtos)
                FROM(
                    SELECT ccFuncionario, COUNT(*) as numAtos
                    FROM AtoDeManutencao
                    GROUP BY idExemplar
                )
            )
            ON cartaoCidadao = ccFuncionario
        );
END;
