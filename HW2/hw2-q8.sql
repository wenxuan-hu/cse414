-- expects 22 lines

select c.name as name, sum(f.departure_delay) as delay
from carriers as c, flights as f
where c.cid=f.carrier_id
group by f.carrier_id;
