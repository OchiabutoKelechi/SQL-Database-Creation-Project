# SQL Database Creation and Analysis Project

## Project Overview
This project demonstrates the design, creation, manipulation, and analysis of a multi-table sales database using SQL Server Management Studio (SSMS). The database, named Customer, contains three interconnected tables; Sales, Category, and Location, designed to store and manage transactional data, product categories, and store locations. This project highlights advanced SQL skills, including  database creation, multi-table queries, data manipulation, data aggregation, relationship management, and in-depth analysis using a variety of SQL queries to extract business insights from the data.

## Database and Table Design
The project involved the design and creation of three main tables: Sales, Category, and Location. Each table serves a specific purpose within the database and allows for comprehensive analysis of sales data across products, locations, and categories.

#### 1) Sales Table:
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
- Time of Day: The part of the day (morning, afternoon, evening) the transaction occurred, derived using a CASE statement.

#### 2) Location Table:
- LocationName: Name of the store or sales location.
- LocationID: Unique identifier for the location, linked to the Sales table.

#### 3) Category Table:
- ProductCategories: Name of the product category.
- ProductID: Unique identifier for the product, linked to the Sales table.

## SQL Queries Utilized for Table Creation and Data Management
The following SQL queries were employed to design and manage the three tables:

- CREATE: Used to define the structure of the Sales, Category, and Location tables, specifying column names and data types.
- INSERT: Populated the tables with transactional, product, and location data.
- WHERE: Applied to filter data based on specific conditions, such as selecting transactions within a certain date range or location.
- AND: Combined multiple conditions in the WHERE clause for precise filtering.
- BETWEEN: Extracted data within specific ranges, such as date ranges for sales transactions.
- ALTER: Modified the table structure, such as adding or modifying columns during the table development process.
- DROP: Removed unnecessary columns or tables as needed.
- DELETE: Removed specific records from the tables, particularly when cleaning erroneous or irrelevant data.
- UPDATE: Modified existing data, for instance, correcting product prices or adjusting transaction details.
- SET: Used with UPDATE to assign new values to columns.
- DATENAME and DATEPART: Extracted specific parts of the date, such as the month name and day of the week, from the TransactionDate.
- HOUR: Extracted the hour from the TransactionTime for time-of-day analysis.
- CASE: Used to create the TimeofDay column, categorizing transactions based on the time of the day i.e. (morning, afternoon, evening).

## SQL Queries Used for Data Analysis
After creating the Sales, Category, and Location tables and populating them with data, advanced SQL queries were used to analyze sales trends and performance across locations and product categories. 
The following queries were employed for data analysis:

- SUM: To calculate total sales revenue, total units sold, or other aggregated metrics.\
- JOIN: Utilized to combine data from the Sales, Location, and Category tables, allowing for comprehensive analysis of product categories and locations alongside transaction data.
- ORDER BY: To sort data by different columns, such as total sales, transaction dates, or product categories.
- GROUP BY: To aggregate data by categories, such as total sales per product category, location, or time of day.
- RANK: Used to rank products, locations, or categories based on total sales or transaction counts.
- COUNT: To count the number of transactions, products sold, or occurrences of specific categories.
- DISTINCT COUNT: To count unique occurrences, such as the number of unique customers, locations, or products sold.


## Key Analytical Insights
The main objectives of this project were to extract actionable insights regarding sales performance, location effectiveness, and product category trends. 
The key insights derived from the analysis include:

1) Sales Performance by Location and Product Category: Using SUM, JOIN, and GROUP BY, the analysis revealed which locations and product categories generated the highest sales. This data can be used for optimizing inventory and sales strategies.
2) Time-Based Sales Trends: By leveraging DATENAME, DATEPART, and CASE, the analysis uncovered sales patterns based on the day of the week, month, and time of day, providing insights into peak sales periods. These insights are valuable for planning promotions, staffing, and resource allocation.
3) Ranking of Locations and Products: With the RANK query, locations and products were ranked based on sales and transaction volume, allowing the identification of top-performing locations and best-selling products.
4) Transaction Analysis: Using COUNT and DISTINCT COUNT, the total number of transactions was analyzed, along with unique products sold and unique locations with sales activity. This provided insights into the diversity of products and the geographic spread of sales.

## Tools and Technologies

1) SQL Server Management Studio (SSMS): Used for database creation, manipulation, management, and querying.
2) SQL Queries: A wide range of SQL queries was applied to manipulate and analyze the data, demonstrating proficiency in handling large and multi-table databases, and extracting meaningful business insights.
   
``` SQL
-- Creating a new Database called "CUSTOMER"
Create database Customer
```

```sql
-- Creating a new Table called "SALES" inside the 'Customer' database

Create table Sales
(
ProductCategory varchar (30),
TransactionQuantity int,
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
-- Creating a new table called LOCATION

Create Table Location
(
LocationName varchar (20),
LocationID VARCHAR (20)
)
```

```sql
-- Inserting data into the LOCATION table

Insert into Location (LocationName, LocationID) VALUES ('Astoria', 'L1')

Insert into Location (LocationName, LocationID) VALUES ('Hells Kitchen', 'L3')

Insert into Location (LocationName, LocationID) VALUES ('Lower Manhattan', 'L2')
```

```sql
-- Creating new table called CATEGORY
Create table Category
(
ProductCategory varchar (20),
ProductID Varchar (20)
)
```

```sql
--- Insering data into the CATEGORY table

Insert into Category (ProductCategory, ProductID) values ('Bakery', 'P1')

Insert into Category (ProductCategory, ProductID) values ('Coffee', 'P2')

Insert into Category (ProductCategory, ProductID) values ('Tea', 'P3')

Insert into Category (ProductCategory, ProductID) values ('Drinking Chocolate', 'P4')
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

##### I ADDED EXTRA 318 ROWS TO THE TABLE, HENCE, I'M BEGINNING TO UPDATE THE NEWLY ADDED ROWS


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

##### ADDED ADDITIONAL 527 ROWS TO THE TABLE

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

# Data Analysis

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
-- Checking for the Store that generated the highest Sales using JOIN query
Select l.LocationName, sum(s.TotalSales) Sales from Sales s
Join dbo.Location l on l.LocationID = s.LocationID
Where l.LocationName in ('Astoria', 'Hells Kitchen', 'Lower Manhattan')
Group by l.LocationName
Order by Sales desc
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
-- Calculating the ProductCategories that generated the highest Sales using JOIN and RANK
Select c.ProductCategory, sum(s.TotalSales) Sales, 
Rank() Over (Order by Sum(TotalSales) Desc) as SalesRank from Sales s
Join dbo.Category c on c.ProductID = s.ProductID
where c.ProductCategory in ('Bakery', 'Coffee', 'Tea', 'Drinking Chocolate')
Group by c.ProductCategory
Order by Sales desc
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
This project highlights the ability to design and manage a multi-table database and perform advanced data analysis using SQL. By integrating data from the Sales, Category, and Location tables and applying a variety of SQL queries such as JOIN, GROUP BY, SUM, and RANK, the project successfully provides comprehensive insights into sales performance, product categories, and location effectiveness. These insights can be used to guide data-driven business decisions regarding inventory management, marketing strategies, and resource allocation to improve business operations.
