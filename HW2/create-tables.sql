--  ******************************************************
--  Author            : Wenxuan Hu
--  Last modified     : 2021-10-18 21:15
--  Email             : huwe0427@uw.edu
--  Student Number    : 2027482
--  Filename          : creat-tables.sql
--  Description       :
--    Copyright [2021] <Copyright Wenxuan Hu>
--  ******************************************************

PRAGMA foreign_keys=ON;
.mode column
.header on
create table FLIGHTS (
        fid int primary KEY, 
         month_id int,        -- 1-12
         day_of_month int,    -- 1-31 
         day_of_week_id int,  -- 1-7, 1 = Monday, 2 = Tuesday, etc
         carrier_id varchar(7), 
         flight_num int,
         origin_city varchar(34), 
         origin_state varchar(47), 
         dest_city varchar(34), 
         dest_state varchar(46), 
         departure_delay int, -- in mins
         taxi_out int,        -- in mins
         arrival_delay int,   -- in mins
         canceled int,        -- 1 means canceled
         actual_time int,     -- in mins
         distance int,        -- in miles
         capacity int, 
         price int,            -- in $
         foreign key (carrier_id) REFERENCES CARRIERS(cid),
         foreign key (month_id) REFERENCES months(mid),
         foreign key (day_of_week_id) REFERENCES weekdays(did)
         );


create table CARRIERS (
  cid varchar(7) primary KEY, 
  name varchar(83)
);

create table MONTHS (
  mid int primary KEY,
  month varchar(9)
);

create table WEEKDAYS (
  did int primary key, 
  day_of_week varchar(9)
);


