SELECT * 
FROM STATION_DATA
WHERE year > 2005 and year < 2010;



SELECT * 
FROM STATION_DATA
WHERE report_code = '513A63';

SELECT * 
FROM STATION_DATA
WHERE report_code in ('513A63', '1F8A7B', 'EF616A');

SELECT * 
FROM STATION_DATA
where tornado = 1 and hail = 1;

select * from STATION_DATA
where precipitation IS NOT NULL and precipitation <= 0.5;

-- coalasce swaps NULL to the second, in our case 0
select * from STATION_DATA
where coalesce(precipitation,0) <= 0.5;

-- side by side - coalesce is the quasi ansi standard for handling null values
select precipitation, coalesce(precipitation,0) as COALESCED from STATION_DATA;
select precipitation, coalesce(precipitation, 'N/A') as COALESCED from STATION_DATA;


select * from STATION_DATA
where rain = 1 and temperature < 32
or snow_depth > 0;

-- select all records bewtween 30  and 50 including
select * from STATION_DATA
where temperature >= 30 and temperature <= 50;

-- select all records where station pressure is greater than 100 and tornadao was present
select * from STATION_DATA
where station_number > 1000 
and tornado = 1;

select * from STATION_DATA
where station_pressure is NULL;
