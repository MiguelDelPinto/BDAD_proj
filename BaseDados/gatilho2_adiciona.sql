DROP TRIGGER IF EXISTS impedeRequisicaoDeExemplar;

CREATE TRIGGER impedeRequisicaoDeExemplar
BEFORE INSERT ON RequisicaoDeExemplar
FOR EACH ROW
BEGIN
     SELECT CASE
     WHEN
     ((
        SELECT  possivelRequisitar
        FROM    Exemplar
        WHERE
                Exemplar.idExemplar = NEW.idExemplar AND Exemplar.possivelRequisitar = 1
     ) ISNULL)
     THEN raise(ABORT, 'Não é possivel requisitar o exemplar.')
     END;
END;
