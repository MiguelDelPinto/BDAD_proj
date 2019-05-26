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
		    WHERE ccFuncionario IS NOT NULL
                    GROUP BY ccFuncionario
                )
            )
            ON cartaoCidadao = ccFuncionario
        )
     WHERE ccFuncionario is NULL;
END;

