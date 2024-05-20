# Car-Sales

### Project Overview
This is a beginner SQL project which analyzes data on new and used cars. The analysis was done using over 115,000 rows of data on fields like model make of the car, the year, its condition or status, the car's mileage, price, and MSRP.

### Data Sources
Cars Data: The dataset used for this analysis is called "Used and New Cars Datasets", and was borrowed from Kaggle.com

### Tools 
- MySQL - Data Analysis
- SQL Query Syntax

### Data Analysis / Exploration
Some of the questions asked when working with this dataset:

- What is the average price of all cars that are classified as 'New'?
- What is the total count of all the cars seperated by brand name? (e.x. Toyota: 5,000 cars)
- What is the total count of all cars seperated by their status / production year?
- Which cars are more expensive than $80,000?

### Functions used in this analysis

#### Aggregate Functions:
- AVG(): Used to calculate average price of all cars
- MAX(): Finding the maximum price 
- MIN(): Finding the minimum price
- SUM(): Adding the total mileage of all of the cars
- COUNT(): Used to count the year, status, and model of the cars

#### String Function:
- SUBSTRING(): Extracted the model name to perform the total count, total mileage, and inventory based on model year

#### Conditional Function:
- CASE(): Used this conditional function in order to filter cars that are greater than $80,000 as 'Very Expensive' and ones that don't fit the criteria as 'Affordable'

### Example Queries
```
select  `Year`, count(`Year`) as UniqueYear
from cars_data.car_data
group by  `Year`;
```

```
select substring_index(substring(Model, 6, 40), ' ', 1), count(Model) as TotalCarCount
from cars_data.car_data
group by substring_index(substring(Model, 6, 40), ' ', 1);
```

### Findings and Results:
- The most expensive car sold was for a new car was $350,995
- Based on brand name, Mercedes had the most cars in its inventory at 10,100
- Model year of cars that were the available the most were from the year 2023

