/* Michael Stauffer
 * CST-217
 * 02/23/19
 * Index and View Creation Assignment Query */

use AdventureWorks2016CTP3;

/* Create view joining data from Sales.Customer and Sales. Store tables. */
go
create view CustomerStoreView
with SchemaBinding
as
select c.CustomerID,
		s.BusinessEntityID,
		s.Name,
		s.SalesPersonID,
		c.TerritoryID,
		c.AccountNumber
	from Sales.Customer c,
		 Sales.Store s
		 where c.StoreID = s.BusinessEntityID
go 

/* Create unique clustered index for view. */
create unique clustered index cix_CustomerStoreView
on CustomerStoreView (BusinessEntityID, CustomerID, Name);
go

/* Initialize start and end time. */
declare @StartTime datetime 
declare @EndTime datetime 
select @StartTime = getdate() 

/* Retrieve from CustomerStoreView view */
select * from CustomerStoreView;

/* Mark end time and display rutime */
select @EndTime = getdate()
select DateDiff(MS, @StartTime, @EndTime) as [Duration in millisecs];

/* Display showplan for view */
go
set showplan_all on;
go
select *
from CustomerStoreView;
go
set showplan_all off;
go