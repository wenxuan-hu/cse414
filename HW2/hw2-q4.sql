-- expect 12 lines;

select distinct c.name 
from flights as f, carriers as c
where c.cid=f.carrier_id 
group by f.month_id, f.day_of_month, f.carrier_id 
having count(f.fid)>1000;
