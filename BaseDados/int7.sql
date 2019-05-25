--Reading settings
.mode columns
.headers on
.nullvalue NULL

DROP VIEW IF EXISTS publicacoesRequisitadas;
DROP VIEW IF EXISTS artistaAlbum;
DROP VIEW IF EXISTS autorLivro;

CREATE VIEW publicacoesRequisitadas AS
    SELECT idPublicacao, nome, numRequisicoes
    FROM Publicacao
    NATURAL JOIN (
        SELECT idPublicacao, numRequisicoes
        FROM Exemplar
        NATURAL JOIN(
            SELECT idExemplar, COUNT(*) as numRequisicoes
            FROM RequisicaoDeExemplar
            GROUP BY idExemplar
        )
    )
    ORDER BY numRequisicoes;
    
CREATE VIEW artistaAlbum AS
    SELECT idPublicacao, nome
    FROM Album
    NATURAL JOIN (    
        SELECT idPublicacao, nome
        FROM Interpreta
        NATURAL JOIN Artista
    );
    
CREATE VIEW autorLivro AS
    SELECT idPublicacao, nome
    FROM Livro
    NATURAL JOIN (
        SELECT idPublicacao, nome
        FROM Autoria
        NATURAL JOIN Autor
    );

--SELECT realizador as criador, numRequisicoes 
--FROM Filme
--NATURAL JOIN publicacoesRequisitadas 
--ORDER BY numRequisicoes LIMIT 1
--UNION
--SELECT developer as criador, numRequisicoes
--FROM Software
--NATURAL JOIN publicacoesRequisitadas
--ORDER BY numRequisicoes LIMIT 1
--UNION
--SELECT nome as criador, numRequisicoes
--FROM artistaAlbum
--NATURAL JOIN publicacoesRequisitadas
--ORDER BY numRequisicoes LIMIT 1
--UNION
--SELECT nome as criador, numRequisicoes
--FROM autorLivro
--NATURAL JOIN publicacoesRequisitadas
--ORDER BY numRequisicoes LIMIT 1;