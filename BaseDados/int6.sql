--Reading settings
.mode columns
.headers on
.nullvalue NULL

SELECT nome, numRequisicoes
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
ORDER BY numRequisicoes LIMIT 10;
