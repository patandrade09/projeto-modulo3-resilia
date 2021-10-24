-- Quantas corridas cada mulher correu na F1?
SELECT 
    drv.driverId, driverRef, forename, surname, count(rs.raceId) 'racesTotal'
FROM
    `results` rs
        INNER JOIN
    `drivers` drv ON rs.driverId = drv.driverId
WHERE
    sexo = 'Feminino'
GROUP BY drv.driverId
ORDER BY sum(raceId) DESC;

