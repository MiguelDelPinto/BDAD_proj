--Reading settings
.mode columns
.headers on
.nullvalue NULL
.width 32 17

SELECT nome as Nome, numRequisicoes as NumeroRequisicoes
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
ORDER BY numRequisicoes DESC LIMIT 10;
