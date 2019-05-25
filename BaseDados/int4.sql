--Reading settings
.mode columns
.headers on
.nullvalue NULL

SELECT *
FROM Sala
WHERE numero NOT IN(
    SELECT numeroSala
    FROM ReservaDeSala
);