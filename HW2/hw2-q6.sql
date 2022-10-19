-- expect 3 lines;

select c.name as carrier, max(f.price) as max_price 
from carriers as c, flights as f
where c.cid = f.carrier_id and
((f.origin_city="Seattle WA" and f.dest_city="New York NY") or 
(f.dest_city="Seattle WA" and f.origin_city="New York NY"))
group by f.carrier_id
order by max(f.price);

