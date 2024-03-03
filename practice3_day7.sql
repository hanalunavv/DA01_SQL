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
