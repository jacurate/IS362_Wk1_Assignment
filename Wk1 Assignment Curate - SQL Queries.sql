SELECT count(tailnum) FROM flights.planes where speed is not null;
SELECT min(speed) FROM flights.planes where speed is not null; 
SELECT max(speed) FROM flights.planes where speed is not null; 
SELECT sum(distance) FROM flights.flights where year = 2013 and month = 1;
SELECT sum(distance) FROM flights.flights where year = 2013 and month = 1 and tailnum = "";
SELECT sum(distance) FROM flights.flights where year = 2013 and month = 7 and day = 5;

SELECT sum(flights.distance), planes.manufacturer
FROM flights.flights join flights.planes
on flights.tailnum = planes.tailnum
where flights.year = 2013 and flights.month = 7 and flights.day = 5
group by planes.manufacturer
order by planes.manufacturer;

SELECT sum(flights.distance), planes.manufacturer
FROM flights.flights left join flights.planes
on flights.tailnum = planes.tailnum
where flights.year = 2013 and flights.month = 7 and flights.day = 5
group by planes.manufacturer
order by planes.manufacturer; 

select count(flights.flight), planes.manufacturer
from flights.flights 
join flights.planes on flights.tailnum = planes.tailnum 
join flights.airports on flights.dest = airports.faa
where flights.year = 2013 
and flights.month = 6
and planes.manufacturer = "BOEING"
and airports.faa = "LAX"; 