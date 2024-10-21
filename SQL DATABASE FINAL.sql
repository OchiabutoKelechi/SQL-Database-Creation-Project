select * from Sales
-- Calculating Total Sales--
Select sum(TotalSales) from Sales

-- Calculating TotalSales while formatting it with Dollar symbol--
Select FORMAT (sum(TotalSales), 'C0', 'en-US') AS TotalSales from Sales

-- Calculating Transaction Quantity--
Select sum(TransactionQuantity) as TransactionQuantity  from Sales

--Calculating number of Distinct ProductCategory
Select count (distinct ProductCategory) as ProductCategory from Sales

--Checking for the Names of Distinct ProductCategory
Select distinct ProductCategory as ProductCategory from Sales

--Calculating number of Distinct ProductType
Select count (distinct ProductType) as ProductType from Sales

--Checking for the Names of Distinct ProductType
Select distinct ProductType as ProductType from Sales

-- Updating the table by correcting a misspelling in on of the ProductTypes
Update Sales
Set ProductType = 'Pastry'
where ProductType in ('Pastery','Patry', 'Patery')

-- Adding TIMEOFDAY column to the table
Alter Table Sales
Add TimeofDay varchar (20)

-- Extracting the TIMEOFDAY from the TransactionTime column
Update Sales
Set TimeOfDay = Case
		When Datepart(Hour,TransactionTime) < 12  then 'Morning'
		When DatePart(Hour, TransactionTime) < 16 then 'Afternoon'
		Else 'Evening'
		End as TIMEOFDAYY

--Calculating number of LocationNames LocationName
Select count (distinct LocationName) as	LocationName from Sales

--Checking for the Names of Distinct LocationName
Select distinct LocationName as LocationName from Sales

--Calculating number of MonthName ProductType
Select count (distinct MonthName) as MonthName from Sales

--Checking for the Names of Distinct MonthNames
Select distinct MonthName as MonthName from Sales

--Calculating number of Distinct DayName ProductType
Select count (distinct DayName) as DayName from Sales

--Checking for the Names of Distinct DayNames
Select distinct DayName as DayName from Sales

-- Checking for the Store that made the highest Sales using JOIN
Select l.LocationName, sum(s.TotalSales) TotalSales from Sales s
Join Location l on l.LocationID = s.LocationID
Where l.LocationName in ('Astoria', 'Lower Manhattan', 'Hells Kitchen')
Group by l.LocationName
Order  by l.LocationName


-- Checking for which Month generated the highest Sales
Select MonthName, sum(TotalSales) as TotalSales from Sales
Where MonthName in ('January', 'February', 'March', 'April', 'May')
Group By MonthName
Order by TotalSales desc

-- Checking for which ProductType generated the highest Sales using <> Operator
Select ProductType, sum(TotalSales) as TotalSales from Sales
Where ProductType <> 'Null'
Group By ProductType
Order by TotalSales desc

-- Checking for which ProductType generated the highest Sales in each Store Location 
Select ProductType, LocationName, sum(TotalSales) as TotalSales from Sales
Where LocationName in ( 'Astoria', 'Lower Manhattan', 'Hells Kitchen') 
Group By ProductType, LocationName
Order by ProductType, LocationName desc

-- Checking for which ProductCategory generated the highest Sales in each Store Location
Select ProductCategory, LocationName, sum(TotalSales) as TotalSales from Sales
Where LocationName in ( 'Astoria', 'Lower Manhattan', 'Hells Kitchen') 
Group By ProductCategory, LocationName
Order by ProductCategory desc

-- Calculating the ProductCtegory that generated the highest sales in each store location
Select ProductCategory, LocationName, sum(TotalSales) as TotalSales, Rank() over (ORDER BY Sum(TotalSales) desc) as SalesRank from Sales
Where LocationName in ( 'Astoria', 'Lower Manhattan', 'Hells Kitchen') 
Group By ProductCategory, LocationName
Order by LocationName desc

-- Ranking the ProductCategories that generated the highest Sales using JOIN and RANK
Select c.ProductCategory, sum(s.TotalSales) Sales, 
Rank() Over (Order by Sum(TotalSales) Desc) as SalesRank from Sales s
Join dbo.Category c on c.ProductID = s.ProductID
where c.ProductCategory in ('Bakery', 'Coffee', 'Tea', 'Drinking Chocolate')
Group by c.ProductCategory
Order by Sales desc

-- Ranking the ProductType that generated the highest Sales
Select ProductType, sum(TotalSales) as TotalSales,
Rank() Over (Order by  Sum(TotalSales) desc) as SalesRank from Sales
Group By ProductType
Order By TotalSales Desc

-- Ranking the MonthName that generated the highest Sales
Select MonthName, sum(TotalSales) as TotalSales,
Rank() Over (Order by  Sum(TotalSales) desc) as SalesRank from Sales
Group By MonthName
Order By TotalSales Desc

-- Ranking the DayName that generated the highest Sales
Select DayName, sum(TotalSales) as TotalSales,
Rank() Over (Order by  Sum(TotalSales) desc) as SalesRank from Sales
Group By DayName
Order By TotalSales Desc

-- Ranking the TimeofDay that generated the highest Sales
Select TimeofDay, sum(TotalSales) as TotalSales,
Rank() Over (Order by  Sum(TotalSales) desc) as SalesRank from Sales
Group By TimeofDay
Order By TotalSales Desc

-- Counting TransactionQuantity by LocationName
Select LocationName, Sum(TransactionQuantity) TransactionQuantity, 
Rank() Over (Order by  Sum(TransactionQuantity) desc) as SalesRank from Sales
Group by LocationName
Order by TransactionQuantity desc

-- Counting TransactionQuantity by	ProductCategory
Select ProductCategory, Sum(TransactionQuantity) TransactionQuantity from Sales
Group by ProductCategory
Order by ProductCategory desc

-- Counting TransactionQuantity by	MonthName
Select MonthName, Sum(TransactionQuantity) TransactionQuantity from Sales
Group by MonthName
Order by TransactionQuantity desc

-- Counting TransactionQuantity by	DayName
Select DayName, Sum(TransactionQuantity) TransactionQuantity from Sales
Group by DayName
Order by TransactionQuantity desc

-- Counting TransactionQuantity by ProductType
Select ProductType, Sum(TransactionQuantity) TransactionQuantity from Sales
Group by ProductType
Order by TransactionQuantity desc

select * from Sales

