--EX1
Select Name
From STUDENTS
Where Marks>75
Order By Right(name,3), ID ASC
--EX2
select 
user_id,
concat(upper(substring(name,1,1)),lower(substring(name,2))) as  name
from Users
order by user_id
--Ex3
SELECT 
manufacturer,
concat('$',ROUND(SUM(total_sales)/1000000),' ','million' )  As sale 
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC, manufacturer
--EX4
SELECT  
Extract(month from submit_date) as month,
product_id as product,
ROUND(AVG(stars),2) as avg_stars
FROM reviews
GROUP BY product_id, Extract(month from submit_date)
ORDER BY Extract(month from submit_date),product_id
--Ex5
SELECT 
sender_id,
COUNT (sender_id) as message_count
FROM messages
WHERE EXTRACT(month from sent_date) = '8' and EXTRACT(year from sent_date) = '2022'
GROUP BY sender_id
ORDER BY COUNT(sender_id) DESC
LIMIT 2
--EX6
SELECT 
sender_id,
COUNT (sender_id) as message_count
FROM messages
WHERE EXTRACT(month from sent_date) = '8' and EXTRACT(year from sent_date) = '2022'
GROUP BY sender_id
ORDER BY COUNT(sender_id) DESC
LIMIT 2
--Ex7
SELECT activity_date AS day, 
COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date >='2019-06-27' and activity_date <='2019-07-27'
GROUP BY activity_date
ORDER BY day
--Ex8
select 
count(id) as number_employees
from employees
where (extract(month from joining_date) between '1' and '7') and extract(year from joining_date) = '2022'
--Ex9
select 
Position('a' in first_name) as number
from worker
where first_name = 'Amitah'
--Ex10
select 
substring(title,length(winery)+2,4) as year,
concat(winery,' ',substring(title,length(winery)+2,4)) as Wine_name
from winemag_p2
where  country = 'Macedonia'







 




