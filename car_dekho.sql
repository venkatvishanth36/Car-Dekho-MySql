create schema cars;
use cars;

-- READ DATA--
select*from car_dekho;

-- Total Cars: To get A count of Total Records--
select count(*) from car_dekho;

-- The Manager Ask the employee, how many cars available in 2023?--
select count(*) from car_dekho where year = 2023;

-- The Manager Ask the employee, how many cars available in 2020, 2021, 2021?--
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7
-- Group By--
select count(*) from car_dekho where year in (2020, 2021, 2022) group by year; #7 7 74

-- Client Asked me to Print The Total of All Cars By year, I Don't see all details--
select year, count(*) from car_dekho group by year;

-- Client Asked to Car Dealer Agent, How Many Diesel Cars will Be there in 2020? --
select year, count(*) from car_dekho where year = 2020 and fuel = 'Diesel'; #20

-- Client Requested A Car Dealer Agent, How Many Petrol Cars Will There Be in 2021? --
select year, count(*) from car_dekho where year = 2021 and fuel = 'Petrol'; #5

-- The Manager Told The Employee To Give A Print All The Fuel Cars (petrol, Diesel and CNG) Come By All Year --
select year, count(*) from car_dekho where fuel = 'Petrol' group by year;
select year, count(*) from car_dekho where fuel = 'Diesel' group by year;
select year, count(*) from car_dekho where fuel = 'CNG' group by year;

-- Manager Said There Were A More Than 100 Cars in a Given Year, Which year More Than 100 Cars --
select year, count(*) from car_dekho group by year having count(*)>100; #2017, 1010
select year, count(*) from car_dekho group by year having count(*)<50; 

-- The Manager Said To The Employee All Cars Count Details Between 2015 and 2023: Need A Complete List --
select count(*) from car_dekho where year between 2015 and 2023; #4124

-- The Manager Said To The Employee All Cars Details Between 2015 and 2023: Need A Complete List --
select*from car_dekho where year between 2015 and 2023;

-- END --
