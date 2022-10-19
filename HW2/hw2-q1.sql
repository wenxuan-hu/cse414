-- totally 3 lines in result;

select distinct f.flight_num as flight_num
from flights as f, carriers as c
where f.origin_city = "Seattle WA" and
      f.dest_city="Boston MA" and
      f.day_of_week_id = 1 and
      c.name = "Alaska Airlines Inc." and
      c.cid = f.carrier_id;
