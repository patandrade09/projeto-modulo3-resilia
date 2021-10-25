-- qual a nacionalidade e nascimento das mulheres participantes da fórmula 1 e seus respectivos nomes em ordem ascendente?
SELECT 
    drivers.forename, drivers.dob, drivers.nationality
FROM
    drivers
WHERE
    sexo = 'Feminino'
ORDER BY forename ASC;

