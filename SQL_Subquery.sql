SELECT Name
FROM people
WHERE Job IN (
    SELECT Job
    FROM income
    WHERE Income > 50000
);