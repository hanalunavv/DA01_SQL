--EX1
select distinct CITY
from STATION
where ID %2=0
--EX2
select count(CITY) - count(distinct CITY) from STATION
--EX3
select ceil(avg(salary) - avg(replace(salary, '0', '')))
from EMPLOYEES
--EX4
SELECT 
ROUND((CAST(SUM(item_count*order_occurrences)/SUM(order_occurrences) as Decimal)),1) as mean
FROM 
items_per_order
--EX5
SELECT candidate_id
FROM candidates
where skill in ('Python','Tableau', 'PostgreSQL')
GROUP BY candidate_id
having count (DISTINCT skill) = 3
ORDER BY candidate_id 
--EX6
