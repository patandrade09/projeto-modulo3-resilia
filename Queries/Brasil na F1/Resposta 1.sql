 -- Quantas corridas o Ayrton Senna venceu? --
SELECT 
   d.forename, d.surname, r.driverId, r.position, count(*) as corridasTotais 
   from
   drivers d 
   inner join
   results r
   on d.driverId = r.driverId
   where r.driverId = 102 and r.position = 1 group by r.driverId;


