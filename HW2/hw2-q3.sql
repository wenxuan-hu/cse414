-- result cost 1 line

select w.day_of_week as day_of_week, avg(f.arrival_delay) as delay 
from flights as f, weekdays as w
where f.day_of_week_id = w.did
group by f.day_of_week_id
order by avg(f.arrival_delay) DESC
limit 1;
