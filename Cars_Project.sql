# selecting all the data from the 'cars_data' database
select *
from cars_data.car_data;

select Model, `Year`, `Status`, Price
from cars_data.car_data
where `Status` = 'New';

# finding the average price of all cars that are classified as 'New'
select avg(Price)
from cars_data.car_data
where `Status` = 'New';

# finding the maximum and the minimum price of a new car
select max(Price)
from cars_data.car_data
where `Status` = 'New';

select min(Price)
from cars_data.car_data
where `Status` = 'New';

# grouping by Model to try find the exact count
select substring_index(substring(Model, 6, 40), ' ', 1), count(Model) as TotalCarCount
from cars_data.car_data
group by substring_index(substring(Model, 6, 40), ' ', 1);

# calculating total mileage
select Mileage
from cars_data.car_data
where Mileage != 'Not available';

select sum(substring_index(Mileage, ' ', 1)) as TotalMileage
from cars_data.car_data
where Mileage != 'Not available';

# filtering by the price between $20,000 and $30,000
select Model, `Year`, `Status`, Price
from cars_data.car_data
where Price >= 20000 and Price <= 30000;

# getting a count of all of the years
select  `Year`, count(`Year`) as UniqueYear
from cars_data.car_data
group by  `Year`;

# getting a count of all of the Status
select `Status`, count(`Status`) as UniqueStatus
from cars_data.car_data
group by `Status`;

# finding the count of all of the Acura's by Year
select substring_index(substring(Model, 6, 40), ' ', 1) as ModelMake, `Year`, count(Model) as TotalCarCount
from cars_data.car_data
group by ModelMake, `Year`;

# find the number of cars greater than 1000
# cannot use where clause 'with' aliases instead only use 'having'
select substring_index(substring(Model, 6, 40), ' ', 1) as ModelMake, `Year`, count(Model) as TotalCarCount
from cars_data.car_data
group by ModelMake, `Year`
having TotalCarCount > 1000;

# using a case statement to filter prices that are the most and least expensive
select Model, Price,
case 
	when Price > 80000 then 'Very Expensive'
    else 'Affordable'
end as PriceFilter
from cars_data.car_data;
    
