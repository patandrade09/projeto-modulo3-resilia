-- Ranking de vitórias dos pilotos brasileiros na história da Fórmula 1
SELECT 
    drivers.forename,
    drivers.surname,
    COUNT(results.position) AS total_Wins
FROM
    drivers
        INNER JOIN
    results ON drivers.driverId = results.driverId
WHERE
    nationality = 'Brazilian'
        AND position = 1
GROUP BY drivers.forename , drivers.surname , results.position
ORDER BY total_Wins desc;