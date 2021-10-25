-- qual o piloto mais velho da F1?

SELECT 
    drivers.forename, drivers.surname, drivers.dob, driverId
FROM
    drivers
ORDER BY dob asc
LIMIT 1;


