-- expect in 1 line

select sum(f.capacity) as capacity 
from flights as f
where 
((f.origin_city="Seattle WA" and f.dest_city="San Francisco CA") or 
(f.dest_city="Seattle WA" and f.origin_city="San Francisco CA")) and
f.month_id=7 and
f.day_of_month = 10;


