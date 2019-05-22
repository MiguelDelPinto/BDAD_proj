SELECT *
FROM Sala
WHERE numero NOT IN(
    SELECT numeroSala
    FROM ReservaDeSala
);