/*7-	Quais as 3 construtora que obtiveram mais colisões? */
select cn.constructorId, cn.name, rs.constructorId, rs.statusId, st.status, count(st.status)
from
constructors cn
inner join 
results rs on cn.constructorId = rs.constructorId
inner join 
status st on rs.statusId = st.statusId
where status = 'Collision'
GROUP BY cn.constructorId, rs.statusId
ORDER BY count(st.status) desc
limit 3;