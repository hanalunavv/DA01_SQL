--EX1
select NAME from CITY
WHERE POPULATION>120000 AND (COUNTRYCODE like 'USA')
--EX2
select * from CITY
where COUNTRYCODE like 'JPN'
--EX3
select CITY,STATE from STATION
--EX4 
select distinct CITY from STATION
where CITY like 'A%' or CITY like 'E%' or CITY like 'I%' or CITY like 'O%' or CITY like 'U%'
--Ex5
select distinct CITY from STATION
where CITY like '%A' or CITY like '%E' or CITY like '%I' or CITY like '%O' or CITY like '%U'
--EX6
select distinct CITY from STATION
where CITY not like 'A%' and CITY not like 'E%' and CITY not like 'I%' and CITY not like 'O%' and CITY not like 'U%'
--EX7
select name from Employee
Order by name
--Ex8
select name from Employee
where salary>2000 and months<10
Order by employee_id 
--EX9
Select product_id from Products
where low_fats='Y' and recyclable='Y'
--EX10
select name from Customer
where referee_id!=2 or referee_id is null
--Ex11
select name,area,population from world
where area>=3000000 or population>=25000000
--EX12
select distinct author_id as id from Views
where author_id=viewer_id
order by author_id
--Ex13
SELECT part,assembly_step from parts_assembly
where finish_date is null
--Ex14
select * from lyft_drivers
where yearly_salary<=30000 or yearly_salary>=70000
--Ex15
select advertising_channel from uber_advertising
where money_spent>100000 and year=2019



