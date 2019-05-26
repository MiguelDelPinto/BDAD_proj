--Reading settings
.mode columns
.headers on
.nullvalue NULL
.width 25 17

DROP VIEW IF EXISTS publicacoesRequisitadas;

CREATE VIEW publicacoesRequisitadas AS
    SELECT idPublicacao, nome as nomePublicacao, numRequisicoes
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

SELECT realizador as Criador, MAX(numRequisicoes) as NumeroRequisicoes
FROM Filme
NATURAL JOIN publicacoesRequisitadas 
UNION
SELECT developer as criador, MAX(numRequisicoes) as numRequisicoes
FROM Software
NATURAL JOIN publicacoesRequisitadas
UNION
SELECT nome as criador, MAX(numRequisicoes) as numRequisicoes
FROM (
    SELECT idPublicacao, nome
    FROM Album
    NATURAL JOIN (    
        SELECT idPublicacao, nome
        FROM Interpreta
        NATURAL JOIN Artista
    )
)
NATURAL JOIN publicacoesRequisitadas
UNION
SELECT nome as criador, MAX(numRequisicoes) as numRequisicoes
FROM (
    SELECT idPublicacao, nome
    FROM Livro
    NATURAL JOIN (
        SELECT idPublicacao, nome
        FROM Autoria
        NATURAL JOIN Autor
    )
) 
NATURAL JOIN publicacoesRequisitadas;
