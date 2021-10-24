-- Qual a participação em porcentagem de homens x mulheres em todas as corridas de todas as temporadas?
SELECT drivers.sexo AS sexo, count(*) /842 * 100 AS Porcentagem
FROM drivers
GROUP BY drivers.sexo
ORDER BY drivers.sexo ASC;