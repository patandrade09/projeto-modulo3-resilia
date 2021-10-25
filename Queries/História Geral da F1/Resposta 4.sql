/* Quais as 5 construtoras que obtiveram mais vitórias na história da F1? */
SELECT 
    A.NAME AS CONSTRUTORA, SUM(WINS)
FROM
    constructors A
        INNER JOIN
    ConstructorStandings B ON A.constructorId = B.constructorId
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5

