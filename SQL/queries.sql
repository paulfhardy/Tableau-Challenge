select count(*) from oct2020citibike;
select count(*) from all2020citibike;
select count(*) from all2018citibike;

select start_station_id, count(*)
from oct2020citibike
group by start_station_id;

select extract(month from starttime), count(*)
from all2020citibike
group by extract(month from starttime);

create table all2020_weekly_tripstarts as (
select 
	extract(week from starttime) AS week_number, 
	extract(month from starttime) AS month_number,
	count(*) AS trip_starts
from all2020citibike
	group by extract(week from starttime),
	extract(month from starttime)
);
create table all2018_weekly_tripstarts as (
select 
	extract(week from starttime) AS week_number, 
	extract(month from starttime) AS month_number,
	count(*) AS trip_starts
from all2018citibike
	group by extract(week from starttime),
	extract(month from starttime)
);
create table all2018_weekday_tripstarts_by_hour as (
select 
	extract(hour from starttime) AS hourofday, 
	count(*) AS trip_starts
from all2018citibike
	where extract(dow from starttime)  > 0 AND
	extract(dow from starttime)  < 6
	group by extract(hour from starttime)
);

create table all2018_weekend_tripstarts_by_hour as (
select 
	extract(hour from starttime) AS hourofday, 
	count (*) AS trip_starts
from all2018citibike
	where extract(dow from starttime)  = 0 OR
	extract(dow from starttime)  = 6
	group by extract(hour from starttime)
);

create table all2020_bikeid_usage as (
select 
	bikeid,
	sum(tripduration)/60/60 AS usage_hours 
from all2020citibike
	group by bikeid
);

create table all2018_bikeid_usage as (
select 
	bikeid,
	sum(tripduration)/60/60 AS usage_hours 
from all2018citibike
	group by bikeid
);
