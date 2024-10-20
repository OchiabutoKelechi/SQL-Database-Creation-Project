# SQL Database Creation Project

## Project Overview

This project demonstrates the design, manipulation, and analysis of a sales database using SQL Server Management Studio (SSMS). The Customer database contains a key table titled Sales, which captures detailed information on sales transactions. The project demonstrates advanced SQL skills, including database creation, data manipulation, and in-depth analysis using a variety of SQL queries.

## Database and Table Design
The Sales table was designed to store vital information for sales transactions, allowing for detailed analysis across multiple dimensions. The table includes the following columns:

- ID: Unique identifier for each transaction.
- ProductCategory: The category of the product sold.
- TransactionDate: Date of the transaction.
- TransactionQuantity: Number of units sold in the transaction.
- ProductID: Identifier for the product.
- ProductType: Type or classification of the product.
- UnitPrice: Price per unit of the product.
- TransactionTime: The time when the transaction took place.
- LocationName: Name of the location where the transaction occurred.
- LocationID: Unique identifier for the location.
- MonthName: Name of the month in which the transaction occurred.
- DayName: Day of the week the transaction took place.
- TotalSales: The total value of the transaction is calculated as TransactionQuantity * UnitPrice.
Time of Day: The part of the day (morning, afternoon, evening) the transaction occurred, derived using a CASE statement.

## SQL Queries Used During Table Creation
During the creation of the Sales table, the following SQL queries were utilized:

- CREATE: To create the table structure with the defined columns.
- INSERT: For adding transactional data into the table.
- WHERE: To filter data based on specific conditions.
- AND: Used with the WHERE clause to apply multiple conditions.
- BETWEEN: To select transactions within a specific date range or other numeric ranges.
- ALTER: To modify the structure of the table by adding or removing columns.
- DROP: Used to delete columns or tables when no longer needed.
- DELETE: To remove specific records from the table.
- UPDATE: To update existing records, such as adjusting prices or correcting data.
- SET: Paired with UPDATE to set the new values for columns.
- DATENAME and DATEPART: Functions used to extract the month name and day name from the TransactionDate for time-based analysis.
- HOUR: Extracted the hour from the TransactionTime to help categorize transactions into specific times of the day.
- CASE: Used to create the TimeofDay column, categorizing transactions based on the time (e.g., morning, afternoon, evening).

## SQL Queries Used for Data Analysis
After creating and populating the Sales table, the following queries were used for data analysis:

- SUM: To calculate total sales revenue, total units sold, or other aggregated metrics.
- ORDER BY: To sort results, such as sorting transactions by date, location, or sales amount.
- GROUP BY: To aggregate data by different categories, such as total sales per product category, location, or time of day.
- RANK: Used to rank products, locations, or categories based on total sales or transaction counts.
- COUNT: To count the number of transactions, products sold, or occurrences of specific categories.
- DISTINCT COUNT: To count unique occurrences, such as the number of unique customers, locations, or products sold.

## Analytical Objectives
The goal of this project was to perform detailed sales analysis, uncovering insights that can drive business decisions. The analysis focused on the following areas:

1) Sales Performance by Product and Location: Identifying the best-performing products and locations by analyzing total sales and quantities sold.
2) Time-Based Sales Trends: Using DATEPART, DATENAME, and TimeofDay to analyze sales trends by month, day of the week, and time of day, allowing the business to understand peak sales periods.
3) Revenue and Ranking: Utilizing SUM and RANK functions to rank products, locations, and categories based on revenue generation.
4) Transaction Analysis: Leveraging COUNT and DISTINCT COUNT to analyze the number of transactions, unique products sold, and unique customers.
5) Filtering and Sorting Data: Using WHERE, ORDER BY, and BETWEEN to narrow down data for specific time ranges or locations, and organize the results meaningfully.

## Tools and Technologies
1) SQL Server Management Studio (SSMS): Used for database creation, manipulation, and querying.
2) SQL: Various SQL queries were employed to manage data and perform the analysis, demonstrating versatility in handling large datasets.
   
``` SQL
-- Creating a new Database called "CUSTOMER"
Create database Customer
```

```sql
-- Creating a new Table called "SALES" inside the 'Customer' database

Create table Sales
(
ProductCategory varchar (30),
TransactionQuantity int ,
ProductType varchar (30),
UnitPrice int,
TransactionDate date,
TransactionTime time (0)
)
```

```sql
-- Adding an ID column to the table as a Primary Key

Alter table Sales
Add ID int Primary Key Identity (1,1)
```
```sql
--- Inserting Data into the Sales table

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Coffee', 3, 'Gourmet Brewed Coffe', 4, '5/12/2023', '8:06:11')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 4, 'Brewed Chai Tea', 4, '5/15/2023', '14:17:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Backery', 5, 'Biscoit', 4, '01/11/2023', '13:05:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 5, 'Hot Chocolate', 7, '01/19/2023', '11:01:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 5, 'Drinking Chocolate', 7, '01/18/2023', '8:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 5, 'Brewed Black Tea', 9, '01/1/2023', '7:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 3, 'Brewed Green Tea', 6, '03/02/2023', '7:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Bakery', 3, 'Scones', 5, '01/17/2023', '14:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Bakery', 3, 'Patry', 4, '05/25/2023', '16:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Bakery', 4, 'Scones', 3, '05/1/2023', '17:20:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Bakery', 7, 'Patery', 5, '04/09/2023', '9:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Bakery', 5, 'Scones', 3, '04/7/2023', '18:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Bakery', 4, 'Patery', 4, '01/12/2023', '19:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Bakery', 2, 'Patery', 4, '02/12/2023', '10:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 2, 'Brewed Chai Tea', 4, '1/17/2023', '9:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 2, 'Brewed Chai Tea', 4, '02/13/2023', '8:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 2, 'Brewed Green Tea', 4, '01/13/2023', '13:11:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 2, 'Brewed Chai Tea', 4, '04/13/2023', '7:06:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 4, 'Brewed Chai Tea', 4, '02/13/2023', '9:17:05')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Coffee', 5, 'Gourmet Brewed Coffe', 4, '2/4/2023', '9:06:11')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 2, 'Brewed Chai Tea', 4, '01/14/2023', '7:59:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Coffee', 3, 'Gourmet brewed coffee', 5, '02/19/2023', '9:02:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Coffee', 5, 'Gourmet brewed coffee', 5, '04/23/2023', '13:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Coffee', 2, 'Gourmet brewed coffee', 5, '01/13/2023', '16:11:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Coffee', 2, 'Gourmet brewed coffee', 5, '05/16/2023', '13:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 3, 'Brewed Black Tea', 4, '04/1/2023', '12:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Coffee', 2, 'Gourmet brewed coffee', 5, '05/4/2023', '10:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 3, 'Brewed Black Tea', 4, '03/11/2023', '8:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 4, 'Brewed Chai Tea', 4, '03/17/2023', '7:09:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 4, 'Brewed Green Tea', 4, '03/16/2023', '15:23:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 5, 'Brewed Green Tea', 4, '03/02/2023', '13:17:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 5, 'Brewed Chai Tea', 4, '03/04/2023', '07:9:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 3, 'Brewed Green Tea', 4, '03/04/2023', '08:23:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 3, 'Brewed Green Tea', 4, '03/04/2023', '09:23:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 2, 'Hot Chocolate', 6, '04/2/2023', '8:23:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 4, 'Hot Chocolate', 6, '02/08/2023', '19:30:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 1, 'Hot Chocolate', 6, '03/23/2023', '16:23:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 2, 'Hot Chocolate', 6, '03/21/2023', '14:23:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 5, 'Hot Chocolate', 6, '03/18/2023', '07:23:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 1, 'Hot Chocolate', 6, '02/22/2023', '7:30:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 2, 'Hot Chocolate', 6, '03/19/2023', '16:23:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 3, 'Hot Chocolate', 6, '2/6/2023', '17:23:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 4, 'Hot Chocolate', 6, '03/29/2023', '11:59:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 6, 'Hot Chocolate', 6, '02/25/2023', '10:29:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 5, 'Hot Chocolate', 6, '02/17/2023', '08:29:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 5, 'Hot Chocolate', 6, '1/12/2023', '9:29:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 4, 'Hot Chocolate', 6, '01/1/2023', '17:20:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 3, 'Hot Chocolate', 6, '01/23/2023', '19:29:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 2, 'Hot Chocolate', 6, '04/15/2023', '13:29:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 2, 'Hot Chocolate', 6, '02/27/2023', '12:29:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Drinking Chocolate', 3, 'Hot Chocolate', 6, '05/25/2023', '19:29:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 3, 'Brewed Green Tea', 4, '03/25/2023', '08:29:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 3, 'Brewed Green Tea', 4, '02/27/2023', '09:20:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 3, 'Brewed Chai Tea', 4, '02/28/2023', '09:12:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Tea', 5, 'Brewed Chai Tea', 4, '02/07/2023', '7:12:15')

Insert into Sales (ProductCategory, TransactionQuantity, ProductType, UnitPrice, TransactionDate, TransactionTime) 
values ('Coffee', 3, 'Gourmet Brewed Coffe', 4, '2/6/2023', '12:06:11')
```

```sql
-- Adding DAYNAME column (temporarily)
Select ID, TransactionQuantity,
ProductCategory, ProductType,
UnitPrice, TransactionDate,
TransactionTime, DATENAME(weekday, TransactionDate) as DayName from Sales
```

```sql
-- Adding TIMEOFDAY using CASE statement column (temporarily)
Select 
	Case 
		When DATEPART(HOUR, TransactionTime)<12 then 'Morning'
		When DATEPART(HOUR, TransactionTime)<16 then 'Afternoon'
		Else 'Evening'
		End as TimeofDay from Sales
```

```sql
-- Adding DAYNAME and TIMEOFDAY column simultaneously (temporarily)
Select ID, ProductCategory, 
TransactionQuantity, 
ProductType, TransactionDate, 
TransactionTime, 
DATENAME(Month, TransactionDate) AS MonthName, DATENAME(Weekday, TransactionDate) as Dayname From Sales
```

```sql
-- Adding DAYNAME and TIMEOFDAY column simultaneously (temporarily)
Select ID, ProductCategory, 
TransactionQuantity, 
ProductType, UnitPrice,
TransactionDate, LocationName,
TransactionTime, 
DATENAME(WEEKDAY, TransactionDate) AS DayName, 
Case 
		When DATEPART(HOUR, TransactionTime)<12 then 'Morning'
		When DATEPART(HOUR, TransactionTime)<16 then 'Afternoon'
		Else 'Evening'
		End as TimeofDay from Sales
```

```sql
-- Adding TIMEOFDAY using ORDERBY statement column (temporarily)
Select 
	Case 
		When DATEPART(HOUR, TransactionTime)<12 then 'Morning'
		When DATEPART(HOUR, TransactionTime)<16 then 'Afternoon'
		Else 'Evening'
		End as TimeofDay from Sales
		order by TimeofDay
```

```sql
-- Updating columns with data errors
Update Sales
Set ProductCategory = 'Bakery'
where ProductCategory = 'Backery'

Update Sales
Set ProductType = 'Pastery'
where ProductType = 'Patery'

Update Sales
Set ProductType = 'Pastery'
where ProductType = 'Patry'
```

```sql
-- Checking for distinct Values in the ProductType and ProductCategory columns to confirm the corrected data errors

Select distinct ProductType from Sales

Select count(distinct ProductCategory) from Sales
```

```sql
-- Adding LOCATIONAME column to the table
Alter table Sales
Add LocationName varchar(20)
```

```sql
-- Updating the LOCATIONAME column by assinging LocationNames*
Update Sales
Set LocationName = 'Astoria'
where ID between 91 and 99

Update Sales
Set LocationName = 'Hells Kitchen'
where ID between 21 and 40

Update Sales
Set LocationName = 'Lower Manhattan'
where ID between 41 and 70

Update Sales
Set LocationName = 'Lower Manhattan'
where ID between 170 and 200

Update Sales
Set LocationName = 'Hells Kitchen'
where ID between 201 and 202

Update Sales
Set LocationName = 'Lower Manhattan'
where ID between 81 and 90

Update Sales
Set LocationName = 'Hells Kitchen'
where ID between 71 and 80
```

```sql
-- Adding LOCATIONID column by altering the table
Alter Table Sales
Add LocationID varchar (20)
```

```sql
-- Updating LOCATIONID column by assinging LocationID values
Update Sales
Set LocationID = 'L1'
Where LocationName= 'Astoria'

Update Sales
Set LocationName = 'Hells Kitchen'
Where ID = '204'

Update Sales
Set LocationID = 'L2'
Where LocationName= 'Lower Manhattan'
```

```sql
-- Dropping LocationID column due to error
Alter Table Sales
Drop column LocationID
```

 ```sql
-- Adding PRODUCTID Column by altering the table
Alter Table Sales
Add ProductID varchar (20)
```

```sql
-- Updating PRODUCTID Column by assigning ProductID values
Update Sales
Set ProductID = 'P1'
where ProductCategory = 'Bakery' 

Update Sales
Set ProductID = 'P2'
where ProductCategory = 'Coffee'

Update Sales
Set ProductID = 'P3'
where ProductCategory = 'Tea'

Update Sales
Set ProductID = 'P4'
where ProductCategory = 'Drinking Chocolate'
```

```sql
-- Deleting a Row from the table due to a mistake
Delete from Sales 
where ID = '203'
```

```sql
--Adding MONTHNAME column to the table
Alter Table Sales
Add MonthName varchar (20)
```

```sql
-- Updating the MONTHNAME column which will automatically Extract the MonthNames from the TransactionDate column
Update Sales
Set MonthName= DATENAME(Month, TransactionDate)
```

```sql
--Adding a DAYNAME column to the table
Alter Table Sales
Add DayName varchar (20)
```

```sql
-- Updating the DAYNAME column which will automatically Extract the Weekday Names from the TransactionDate column
Update Sales
Set DayName = DATENAME(Weekday, TransactionDate) From Sales
```

```sql
--Adding TOTALSALES column to the table 
Alter Table Sales
Add TotalSales int
```

```sql
-- Updating the TOTALSALES column which will automatically Multiply the TransactionQuantity and UnitPrice columns
Update Sales
Set TotalSales = TransactionQuantity * UnitPrice
```

```sql
-- Updating the table by correcting a misspelling in one of the ProductTypes
Update Sales
Set ProductType = 'Pastry'
where ProductType in ('Pastery', 'Patry', 'Patery')
```

### I ADDED EXTRA 318 ROWS TO THE TABLE, HENCE, I'M BEGINNING TO UPDATE THE NEWLY ADDED ROWS

```sql
-- Updating the PRODUCTID column using 'WHERE, AND, and BETWEEN' conditions 
Update Sales
Set ProductID = 'P3'
Where ProductCategory = 'Tea' and ID Between 201 And 519 

Update Sales
Set ProductID = 'P3'
Where ProductCategory = 'Tea' and ID Between 519 And 1046

Update Sales
Set ProductID = 'P2'
Where ProductCategory = 'Coffee' and ID Between 201 And 519 

Update Sales
Set ProductID = 'P2'
Where ProductCategory = 'Coffee' and ID Between 519 And 1046 

Update Sales
Set ProductID = 'P1'
Where ProductCategory = 'Bakery' and ID Between 519 And 1046

Update Sales
set ProductID = 'P4'
Where ProductCategory = 'Drinking Chocolate' and ID Between 201 And 519

Update Sales
Set ProductID = 'P4'
Where ProductCategory = 'Drinking Chocolate' and ID Between 519 And 1046
```

```sql
-- Correcting a misspelling in the ProductCategory
Update Sales
Set ProductCategory = 'Bakery'
Where ProductCategory = 'Backery'
```

```sql
-- Updating the LOCATIONNAME column using 'WHERE, AND, and BETWEEN' conditions
Update Sales
Set LocationName = 'Hells Kitchen'
where ID Between 202 And 519 
and UnitPrice = 4

Update Sales
Set LocationName = 'Astoria'
where ID Between 202 And 519 
And UnitPrice = 6

Update Sales
Set LocationName = 'Lower Manhattan'
where ID Between 202 And 519 
And UnitPrice = 3

Update Sales
Set LocationName = 'Lower Manhattan'
where ID Between 517 And 1046 
And UnitPrice = 3

Update Sales
Set LocationName = 'Lower Manhattan'
where ID Between 202 And 519 
And UnitPrice = 5

Update Sales
Set LocationName = 'Lower Manhattan'
where ID Between 202 And 519 
And UnitPrice = 9

Update Sales
Set LocationID = 'L3'
where LocationName = 'Hells Kitchen'

Update Sales
Set LocationID = 'L2'
where LocationName = 'Lower Manhattan'

Update Sales
Set LocationID = 'L2'
where LocationName = 'Lower Manhattan'
```

```sql
ADDED ADDITIONAL 527 COLUMNS TO THE TABLE*/
```

```sql
-- Updating LOCATIONNAME column using WHERE, BETWEEN, and AND conditions-- 
Update Sales
Set LocationName = 'Lower Manhattan'
Where ID Between 517 And 1046 
And UnitPrice = 3

Update Sales
Set LocationName = 'Astoria'
Where ID Between 517 And 1046 
And UnitPrice = 6

Update Sales
Set LocationName = 'Astoria'
Where ID Between 517 And 1046 
And UnitPrice = 6

Update Sales
Set LocationName = 'Hells Kitchen'
Where ID Between 517 And 1046 
And UnitPrice = 4

Update Sales
Set LocationName = 'Hells Kitchen'
where ID Between 517 And 1046 
And UnitPrice = 3

Update Sales
Set LocationName = 'Hells Kitchen'
Where ID Between 517 And 1046 
And UnitPrice = 3
```

```sql
-- Updating the PRODUCTID column using 'WHERE, AND, IN, and BETWEEN' Conditions--  
Update Sales
Set LocationName = 'Astoria'
Where ID Between 517 And 1046
And UnitPrice in (7, 9)

Update Sales
Set LocationName = 'Lower Manhattan'
Where ID Between 517 And 1046
And UnitPrice in (5)
```

```sql
-- Updating the LOCATIONID column using 'WHERE, AND, and BETWEEN' Conditions for the newly added rows--  
Update Sales
Set LocationID = 'L1'
Where LocationName =  'Astoria' 
And ID Between 517 And 1046 

Update Sales
Set LocationID = 'L3'
Where LocationName =  'Hells Kitchen' 
And ID Between 517 And 1046 

Update Sales
Set LocationID = 'L2'
Where LocationName =  'Lower Manhattan' 
And ID Between 517 And 1046
```

 ```sql
-- Deleting a row because of a misspelling in the ProductType name 
Delete from Sales
Where ProductType= 'Biscoit'
```

```sql
-- Updating the MONTHNAME column for the additional rows using 'WHERE, AND, and BETWEEN' conditions
Update Sales
Set MonthName= DATENAME(Month, TransactionDate)
Where ID Between 520 And 1046
```

```sql
-- Updating the DAYNAME column for the additional rows using 'WHERE, AND, and BETWEEN' conditions
Update Sales
Set DayName = DATENAME(Weekday, TransactionDate) From Sales
Where ID Between 520 And 1046
```

```sql
-- Updating the TOTALSALES column for the additional rows using 'WHERE, AND, and BETWEEN' Conditions-- 
Update Sales
Set TotalSales = TransactionQuantity * UnitPrice
Where ID Between 520 And 1046
```

```sql
-- Extracting the TIMEOFDAY from the TransactionTime column
Update Sales
Set TimeOfDay = Case
		When Datepart(Hour,TransactionTime) < 12  then 'Morning'
		When DatePart(Hour, TransactionTime) < 16 then 'Afternoon'
		Else 'Evening'
		End as TIMEOFDAYY
```

```sql
-- Final Outcome of the Table
Select ID, ProductCategory, TransactionDate, TransactionQuantity, ProductID, ProductType, UnitPrice, TransactionTime, LocationName, LocationID, MonthName, DayName, TotalSales, TimeofDay from Sales
```

## Data Analysis

```sql
-- Calculating Total Sales
Select sum(TotalSales) from Sales

```sql
-- Calculating TotalSales while formatting it with Dollar symbol
Select FORMAT (sum(TotalSales), 'C0', 'en-US') AS TotalSales from Sales
```

```sql
-- Calculating Transaction Quantity
Select sum(TransactionQuantity) as TransactionQuantity  from Sales
```

```sql
--Calculating number of Distinct ProductCategory
Select count (distinct ProductCategory) as ProductCategory from Sales
```

```sql
--Checking for the Names of Distinct ProductCategory
Select distinct ProductCategory as ProductCategory from Sales
```

```sql
--Calculating number of Distinct ProductType
Select count (distinct ProductType) as ProductType from Sales
```

```sql
--Checking for the Names of Distinct ProductType
Select distinct ProductType as ProductType from Sales
```

```sql
-- Updating the table by correcting a misspelling in one of the ProductTypes
Update Sales
Set ProductType = 'Pastry'
where ProductType in ('Pastery', 'Patry', 'Patery')
```

```sql
-- Adding TIMEOFDAY column to the table
Alter Table Sales
Add TimeofDay varchar (20)
```

```sql
--Calculating number of LocationNames LocationName
Select count (distinct LocationName) as	LocationName from Sales
```

```sql
--Checking for the Names of Distinct LocationName
Select distinct LocationName as LocationName from Sales
```

```sql
--Calculating the number of MonthName ProductType
Select count (distinct MonthName) as MonthName from Sales
```

```sql
--Checking for the Names of Distinct MonthNames
Select distinct MonthName as MonthName from the Sales
```

```sql
--Calculating the number of Distinct DayName ProductType
Select count (distinct DayName) as DayName from Sales
```

```sql
--Checking for the Names of Distinct DayNames
Select distinct DayName as DayName from Sales
```

```sql
-- Checking for the Store that made the highest Sales
Select LocationName, sum(TotalSales) as TotalSales from Sales
Where LocationName in ('Astoria', 'Lower Manhattan', 'Hells Kitchen')
Group By LocationName
Order by TotalSales desc
```

```sql
-- Checking for which Month generated the highest Sales
Select MonthName, sum(TotalSales) as TotalSales from Sales
Where MonthName in ('January', 'February', 'March', 'April', 'May')
Group By MonthName
Order by TotalSales desc
```

```sql
-- Checking for which ProductType generated the highest Sales using <> Operator
Select ProductType, sum(TotalSales) as TotalSales from Sales
Where ProductType <> 'Null'
Group By ProductType
Order by TotalSales desc
```

```sql
-- Checking for which ProductType generated the highest Sales in each Store Location
Select ProductType, LocationName, sum(TotalSales) as TotalSales from Sales
Where LocationName in ( 'Astoria', 'Lower Manhattan', 'Hells Kitchen') 
Group By ProductType, LocationName
Order by ProductType, LocationName desc
```

```sql
-- Checking for which ProductCategory generated the highest Sales in each Store Location
Select ProductCategory, LocationName, sum(TotalSales) as TotalSales from Sales
Where LocationName in ( 'Astoria', 'Lower Manhattan', 'Hells Kitchen') 
Group By ProductCategory, LocationName
Order by ProductCategory desc
```

```sql
-- Calculating the ProductCtegory that generated the highest sales in each store location
Select ProductCategory, LocationName, sum(TotalSales) as TotalSales, Rank() over (ORDER BY Sum(TotalSales) desc) as SalesRank from Sales
Where LocationName in ( 'Astoria', 'Lower Manhattan', 'Hells Kitchen') 
Group By ProductCategory, LocationName
Order by LocationName desc
```

```sql
-- Ranking the ProductCategories that generated the highest Sales
Select ProductCategory, sum(TotalSales) as TotalSales,
Rank() Over (Order by  Sum(TotalSales) desc) as SalesRank from Sales
Group By ProductCategory
Order By TotalSales Desc
```

```sql
-- Ranking the ProductType that generated the highest Sales
Select ProductType, sum(TotalSales) as TotalSales,
Rank() Over (Order by  Sum(TotalSales) desc) as SalesRank from Sales
Group By ProductType
Order By TotalSales Desc
```

```sql
-- Ranking the MonthName that generated the highest Sales
Select MonthName, sum(TotalSales) as TotalSales,
Rank() Over (Order by  Sum(TotalSales) desc) as SalesRank from Sales
Group By MonthName
Order By TotalSales Desc
```

```sql
-- Ranking the DayName that generated the highest Sales
Select DayName, sum(TotalSales) as TotalSales,
Rank() Over (Order by  Sum(TotalSales) desc) as SalesRank from Sales
Group By DayName
Order By TotalSales Desc
```

```sql
-- Ranking the TimeofDay that generated the highest Sales
Select TimeofDay, sum(TotalSales) as TotalSales,
Rank() Over (Order by  Sum(TotalSales) desc) as SalesRank from Sales
Group By TimeofDay
Order By TotalSales Desc
```

```sql
-- Counting TransactionQuantity by LocationName
Select LocationName, Sum(TransactionQuantity) TransactionQuantity, 
Rank() Over (Order by  Sum(TransactionQuantity) desc) as SalesRank from Sales
Group by LocationName
Order by TransactionQuantity desc
```

```sql
-- Counting TransactionQuantity by ProductCategory
Select ProductCategory, Sum(TransactionQuantity) TransactionQuantity from Sales
Group by ProductCategory
Order by ProductCategory desc
```

```sql
-- Counting TransactionQuantity by MonthName
Select MonthName, Sum(TransactionQuantity) TransactionQuantity from Sales
Group by MonthName
Order by TransactionQuantity desc
```

```sql
-- Counting TransactionQuantity by DayName
Select DayName, Sum(TransactionQuantity) TransactionQuantity from Sales
Group by DayName
Order by TransactionQuantity desc
```

```sql
-- Counting TransactionQuantity by ProductType
Select ProductType, Sum(TransactionQuantity) TransactionQuantity from Sales
Group by ProductType
Order by TransactionQuantity desc
```

## Conclusion
This project highlights a comprehensive understanding of SQL for database management, data manipulation, and sales analysis. By creating a robust sales table and utilizing advanced SQL queries such as CASE, GROUP BY, ORDER BY, RANK, and SUM, meaningful insights were extracted from the data, providing actionable recommendations for improving business operations.
