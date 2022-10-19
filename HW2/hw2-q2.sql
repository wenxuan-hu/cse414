-- the result  cose 1472 lines;

--select count(*) from (

--select distinct
select distinct
c.name as name,
f1.flight_num as f1_flight_num,
f1.origin_city as f1_origin_city,
f1.dest_city as f1_dest_city,
f1.actual_time as f1_actual_time,
f2.flight_num as f2_flight_num,
f2.origin_city as f2_origin_city,
f2.dest_city as f2_dest_city,
f2.actual_time as f2_actual_time,
(f1.actual_time + f2.actual_time) as actual_time

from flights as f1, flights as f2 , carriers as c
where f1.origin_city="Seattle WA" and
f2.dest_city="Boston MA" and
f2.origin_city = f1.dest_city and
f1.carrier_id=f2.carrier_id and
f1.month_id = f2.month_id and
f1.day_of_month=f2.day_of_month and
f1.carrier_id=c.cid and
f1.month_id = 7 and
f1.day_of_month=15 and
(f1.actual_time+f2.actual_time) < 420;
--(f1.actual_time+f2.actual_time) < 420 );
