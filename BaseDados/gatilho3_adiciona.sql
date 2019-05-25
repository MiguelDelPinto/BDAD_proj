DROP TRIGGER IF EXISTS adicionaExemplar;

CREATE TRIGGER adicionaExemplar
AFTER INSERT ON Exemplar
FOR EACH ROW
BEGIN
    UPDATE Publicacao
    SET quantidade = 
        (
            SELECT quantidade
            FROM( 
                SELECT idPublicacao, COUNT(*) AS quantidade
                FROM Exemplar
                GROUP BY idPublicacao
            )
            WHERE Publicacao.idPublicacao = new.idPublicacao
        )
    WHERE Publicacao.idPublicacao = new.idPublicacao;
END;