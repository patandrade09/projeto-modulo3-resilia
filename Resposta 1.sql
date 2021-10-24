 select * from drivers where forename = "Ayrton" and surname = "Senna";
 -- Quantas corridas o Ayrton Senna venceu? --
SELECT 
    r.driverId, r.position, count(*) as corridasTotais 
FROM
   results AS r
        where driverId = 102 and position = 1 group by driverId;

        
        
