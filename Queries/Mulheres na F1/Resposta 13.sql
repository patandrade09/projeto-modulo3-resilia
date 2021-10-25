SELECT 
    drivers.forename, drivers.surname, results.position
FROM
    drivers
        INNER JOIN
    results ON drivers.driverId = results.driverId
        INNER JOIN
    races ON races.raceId = results.raceId
WHERE
    sexo = 'Feminino'
ORDER BY position DESC
LIMIT 3