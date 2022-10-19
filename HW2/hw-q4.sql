-- expect 12 lines;

select c.name 
from flights as f, carriers as a
where c.cid=f.carrier_id;
