
select dv.forename, dv.surname, ps.driverId, ps.duration, ps.time
from drivers dv
inner join 
pitStops ps on dv.driverId = ps.driverId
group by dv.forename, dv.surname, ps.driverId, ps.duration, ps.time
order by ps.time desc
limit 5


