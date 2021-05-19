SELECT year,
count(*) AS record_count

FROM STATION_DATA
WHERE tornado = 1
GROUP BY year;

---

SELECT year,
month,
count(*) AS record_count
FROM STATION_DATA
WHERE tornado = 1
GROUP BY 1,2;

---

SELECT year, month, count(*) AS record_count
FROM STATION_DATA
WHERE tornado = 1
GROUP BY year, month
ORDER BY year DESC, month;


--- 

SELECT year, month, count(*) AS record_count
FROM STATION_DATA
WHERE tornado = 1
GROUP BY year, month
ORDER BY year DESC, month;


---

select year, 
round(sum(snow_depth),2) as total_snow
from STATION_DATA
WHERE year >= 2005
GROUP BY year;

---

SELECT year,
sum(precipitation) as total_precipitation
from STATION_DATA
group BY year
HAVING sum(precipitation) > 30;

---

select year, 
sum(precipitation) as total_precipitation
from STATION_DATA
where tornado = 1
GROUP BY year
ORDER BY year;

---
-- select the year and max snow depth, but only years where the max snow depth is at least 50

select year, 
max(snow_depth) as max_snow
from STATION_DATA
GROUP BY year
having max(snow_depth) > 50
order by year;




