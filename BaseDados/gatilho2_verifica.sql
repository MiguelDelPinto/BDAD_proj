--Reading settings
.mode columns
.headers on
.nullvalue NULL

SELECT * FROM RequisicaoDeExemplar;

INSERT INTO Exemplar
    (possivelRequisitar, idSala, idPublicacao) VALUES
    (0, 2, 1);

INSERT INTO RequisicaoDeExemplar (idExemplar, idRequisicao)
VALUES (15, 1);

SELECT * FROM RequisicaoDeExemplar;
