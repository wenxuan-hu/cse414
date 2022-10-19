-- expect 6 lines

select c.name as name, count(f.fid), count(f.canceled = 1)  
--() as percentage
from carriers as c, flights as f
where
c.cid = f.carrier_id and
f.origin_city="Seattle WA" 
group by c.cid
having 
1000.0*count(f.canceled = 1)/ count(f.fid) > 5;




----select f1.carrier_id, count(f2.fid),  (((count(f2.fid))*1.0)/(count(f1.fid)*1.0)) as percentage
----from flights as f1 left outer join (select * from flights as f where f.canceled= 0 ) as f2 on f1.fid=f2.fid 
--from (flights as f1) left outer join (select * from flights as f where f.canceled= 1) as f2 on f1.fid=f2.fid 
--where
----f1.fid=f2.fid and
--f1.origin_city="Seattle WA" and
--f2.origin_city="Seattle WA" 
--group by f1.carrier_id
--having ((count(f2.fid)*1.0)/(count(f1.fid)*1.0)) >= 0.005;
