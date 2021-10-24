-- 11 Em que ano as mulheres começaram a correr?

SELECT 
    drivers.forename, drivers.surname, races.year, races.name, races.date
FROM
    drivers
        INNER JOIN
    results ON drivers.driverId = results.driverId
        INNER JOIN
    races ON races.raceId = results.raceId
WHERE
    sexo = 'Feminino'
ORDER BY year ASC
LIMIT 1