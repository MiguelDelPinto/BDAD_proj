--Reading settings
.mode columns
.headers on
.nullvalue NULL

SELECT  Pessoa.cartaoCidadao AS ID,
        Pessoa.nome AS Nome, 
        Publicacao, 
        multa AS Multa

FROM    Pessoa  
        NATURAL JOIN(
            SELECT cartaoCidadao, nome AS Publicacao, multa
            FROM Publicacao
            NATURAL JOIN(
                SELECT DISTINCT ccUtilizador AS cartaoCidadao, idPublicacao, multa
                FROM Requisicao
                    NATURAL JOIN(
                        SELECT idRequisicao, idPublicacao
                        FROM RequisicaoDeExemplar
                            NATURAL JOIN Exemplar
                    )
                WHERE multa > 0
            )
        )
        