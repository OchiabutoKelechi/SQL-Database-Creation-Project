
/* Creating A New Table Called 'SALES'*/

Create table Sales
(
ProductCategory varchar (30),
TransactionQuantity int ,
ProductType varchar (30),
UnitPrice int,
TransactionDate date,
TransactionTime time (0)
)

/* Adding an ID column to the table as a Primary Key*/

Alter table Sales
Add ID int Primary Key Identity (1,1)


/* Inserting Data into the Table*/

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

/* Adding A DAYNAME column*/
Select ID, TransactionQuantity,
ProductCategory, ProductType,
UnitPrice, TransactionDate,
TransactionTime, DATENAME(weekday, TransactionDate) as DayName from Sales

/* Adding TIMEOFDAY using CASE statement column*/
Select 
	Case 
		When DATEPART(HOUR, TransactionTime)<12 then 'Morning'
		When DATEPART(HOUR, TransactionTime)<16 then 'Afternoon'
		Else 'Evening'
		End as TimeofDay from Sales

Select * from Sales

/* Adding DAYNAME and TIMEOFDAY column simultaneously*/
Select ID, ProductCategory, 
TransactionQuantity, 
ProductType, TransactionDate, 
TransactionTime, 
DATENAME(Month, TransactionDate) AS MonthName, DATENAME(Weekday, TransactionDate) as Dayname From Sales

/* Adding DAYNAME and TIMEOFDAY column simultaneously*/
Select ID, ProductCategory, 
TransactionQuantity, 
ProductType, UnitPrice, TransactionDate, LocationName,
TransactionTime, 
DATENAME(WEEKDAY, TransactionDate) AS DayName, 
Case 
		When DATEPART(HOUR, TransactionTime)<12 then 'Morning'
		When DATEPART(HOUR, TransactionTime)<16 then 'Afternoon'
		Else 'Evening'
		End as TimeofDay from Sales

/* Adding TIMEOFDAY using ORDERBY statement column*/
Select 
	Case 
		When DATEPART(HOUR, TransactionTime)<12 then 'Morning'
		When DATEPART(HOUR, TransactionTime)<16 then 'Afternoon'
		Else 'Evening'
		End as TimeofDay from Sales
		order by TimeofDay

Select * from Sales	

/*Updating columns with data errors*/

Update Sales
Set ProductCategory = 'Bakery'
where ProductCategory = 'Backery'

Update Sales
Set ProductType = 'Pastery'
where ProductType = 'Patery'

Update Sales
Set ProductType = 'Pastery'
where ProductType = 'Patry'

/* Checking for distinct Values in the ProductType and ProductCategory columns to confirm the corrected data errors*/

Select distinct ProductType from Sales

Select count(distinct ProductCategory) from Sales

/* Adding LOCATIONAME Column by Altering the Table*/

Alter table Sales
Add LocationName varchar(20)

/* Updating the LOCATIONAME to the LocationName Column by assinging LocationNames*/
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

Select * from Sales

/* Adding LOCATIONID Column by Altering the Table*/

Alter Table Sales
Add LocationID varchar (20)

/* Updating LOCATIONID column by assinging LocationID values*/

Update Sales
Set LocationID = 'L1'
Where LocationName= 'Astoria'

Update Sales
Set LocationName = 'Hells Kitchen'
Where ID = '204'

Update Sales
Set LocationID = 'L2'
Where LocationName= 'Lower Manhattan'

/* Dropping LocationID column due to error*/

Alter Table Sales
Drop column LocationID

Select * from Sales

Select distinct (ProductCategory) from Sales

/* Adding PRODUCTID Column by Altering the Table*/

Alter Table Sales
Add ProductID varchar (20)

/* Updating PRODUCTID Column by assigning ProductID values */

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

Select * from Sales

-- Deleting a Row from the table due to a mistake --

Delete from Sales 
where ID = '203'

--Adding a MONTHNAME Column to the table-- 

Alter Table Sales
Add MonthName varchar (20)

-- Updating the MONTHNAME column which will automatically Extract the MonthNames from the TransactionDate column--

Update Sales
Set MonthName= DATENAME(Month, TransactionDate)

--Adding a DAYNAME Column to the table-- 

Alter Table Sales
Add DayName varchar (20)

-- Updating the DAYNAME column which will automatically Extract the Weekday Names from the TransactionDate column--

Update Sales
Set DayName = DATENAME(Weekday, TransactionDate) From Sales

Select * from Sales

--Adding a TOTALSALES Column to the table-- 

Alter Table Sales
ADD TotalSales int

-- Updating the TOTALSALES column which will automatically Multiply the TransactionQuantity and UnitPrice columns--

Update Sales
Set TotalSales = TransactionQuantity * UnitPrice

/* I ADDED EXTRA 318 ROWS TO THE TABLE, HENCE, I'M BEGINNING TO UPDATE THE NEWLY ADDED ROWS*/


-- Updating the PRODUCTID column using 'WHERE, AND, and BETWEEN' Conditions--  

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

Select * from Sales

-- Correcting a Misspelling in the ProductCategory-- 

Update Sales
Set ProductCategory = 'Bakery'
Where ProductCategory = 'Backery'

Select * from Sales

-- Updating the LOCATIONNAME column using 'WHERE, AND, and BETWEEN' Conditions--  

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

/* ADDED ADDITIONAL 527 COLUMNS TO THE TABLE*/

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

-- Updating the PRODUCTID column using 'WHERE, AND, IN, and BETWEEN' Conditions--  

Update Sales
Set LocationName = 'Astoria'
Where ID Between 517 And 1046
And UnitPrice in (7, 9)

Update Sales
Set LocationName = 'Lower Manhattan'
Where ID Between 517 And 1046
And UnitPrice in (5)

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

-- Deleting a row because of a misspelling in the ProductType name --

Delete from Sales
Where ProductType= 'Biscoit'

-- Updating the MONTHNAME column for the additional rows using 'WHERE, AND, and BETWEEN' Conditions-- 

Update Sales
Set MonthName= DATENAME(Month, TransactionDate)
Where ID Between 520 And 1046

-- Updating the DAYNAME column for the additional rows using 'WHERE, AND, and BETWEEN' Conditions-- 

Update Sales
Set DayName = DATENAME(Weekday, TransactionDate) From Sales
Where ID Between 520 And 1046

-- Updating the TOTALSALES column for the additional rows using 'WHERE, AND, and BETWEEN' Conditions-- 
Update Sales
Set TotalSales = TransactionQuantity * UnitPrice
Where ID Between 520 And 1046
