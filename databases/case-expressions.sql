--
-- case expressions
--


select report_code, year, month, day, wind_speed,
case 
  when wind_speed >= 40 then 'HIGH'
  when wind_speed >= 30 and wind_speed < 40 then 'MODERATE'
  else 'LOW'
end as wind_severity
from STATION_DATA;

-- simplifiny the expression

select report_code, year, month, day, wind_speed,
case 
  when wind_speed >= 40 then 'HIGH'
  when wind_speed >= 30 then 'MODERATE'
  else 'LOW'
end as wind_severity
from STATION_DATA;

-- another example

select report_code, year, month, day, wind_speed,
case 
  when wind_speed >= 40 then 'HIGH'
  when wind_speed >= 30 then 'MODERATE'
  when wind_speed > 0 then 'LOW'
end as wind_severity
from STATION_DATA;

-- grouping by

select report_code, year, month, day, wind_speed,
case 
  when wind_speed >= 40 then 'HIGH'
  when wind_speed >= 30 then 'MODERATE'
  when wind_speed > 0 then 'LOW'
end as wind_severity,

count(*) as record_count

from STATION_DATA
group BY wind_severity;


---

select year, 
month, 
sum(precipitation) as torn
sum(precipitation) as non_torn
from STATION_DATA
where year >= 1990
group by year, month;

-- 

select year, 
month, 
sum(CASE WHEN tornado = 1 then precipitation else 0 end) as tornado_precipitation,
sum(CASE when tornado = 0 then precipitation else 0 end) as non_tornado_precipitation
from STATION_DATA
where year >= 1990
group by year, month;

--

select year, 
month, 
sum(CASE WHEN year = 2000 then precipitation else 0 end) as current_year,
sum(CASE when year = 1999 then precipitation else 0 end) as previous_year
from STATION_DATA
where year = 2000 or year = 1999
group by year, month;


---

select report_code, year, 
case
    when month BETWEEN 1 and 3 then 'Q1'
    when month BETWEEN 4 and 6 then 'Q2'
    when month BETWEEN 7 and 9 then 'Q3'
    when month BETWEEN 10 and 12 then 'Q4'
end as quarter, 
temperature
from STATION_DATA;

---

SELECT
year,

CASE
    WHEN month BETWEEN 1 and 3 THEN 'Q1'
    WHEN month BETWEEN 4 and 6 THEN 'Q2'
    WHEN month BETWEEN 7 and 9 THEN 'Q3'
    WHEN month BETWEEN 10 and 12 THEN 'Q4'
END as quarter,

ROUND(AVG(temperature),2) as avg_temp

FROM STATION_DATA
GROUP BY 1,2