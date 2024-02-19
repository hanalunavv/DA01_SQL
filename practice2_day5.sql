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
SELECT user_id, 
EXTRACT(day FROM max(post_date)- min(post_date))  AS days_between
FROM posts
WHERE post_date BETWEEN '01/01/2021' AND '12/31/2021'
GROUP BY user_id
having COUNT(DISTINCT post_id)>=2
--EX7
SELECT 
card_name,
MAX(issued_amount) - MIN(issued_amount) as different
FROM monthly_cards_issued
GROUP BY card_name 
ORDER BY card_name DESC
--EX8
SELECT 
manufacturer,
Abs(SUM(cogs - total_sales)) as total_loss,
COUNT((cogs - total_sales)>0) as drug_count
FROM pharmacy_sales
WHERE (cogs - total_sales)>0 /* where cogs>total_sales*/
GROUP BY manufacturer
ORDER BY total_loss DESC
/* cogs = cost of goods sold */
--EX9
select *
from Cinema
where not(description like 'boring' ) and  id %2!=0
order by rating DESC
--EX10
select teacher_id,
count(distinct subject_id) as cnt
from Teacher
group by teacher_id
--EX11
select user_id,
count(distinct follower_id) as followers_count
from Followers
group by  user_id
order by user_id\
--EX12
select class
from Courses 
group by class
having Count(student)>=5
