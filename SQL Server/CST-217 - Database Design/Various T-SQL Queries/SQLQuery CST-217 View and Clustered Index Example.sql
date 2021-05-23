
use AdventureWorks2016CTP3;

declare @StartTime datetime 
declare @EndTime datetime 
select @StartTime = getdate() 

/*
go
create view PersonTitleNameView
with SchemaBinding
as

select e.BusinessEntityID,
p.PersonType,
p.FirstName,
p.MiddleName,
p.LastName,
e.JobTitle,
e.BirthDate,
e.MaritalStatus,
e.Gender,
e.HireDate,
e.VacationHours,
e.SickLeaveHours
from HumanResources.Employee e,
Person.Person p
where e.BusinessEntityID = p.BusinessEntityID;
go

create unique clustered index cix_PersonTitleNameView
on PersonTitleNameView (BusinessEntityID,LastName,FirstName);
go
*/


select @EndTime = GetDate() 

select DateDiff(MS,@StartTime, @EndTime) as [Duration in millisecs];

/* use AdventureWorks2016CTP3;
go
set showplan_all on;
go
select *
from PersonTitleNameView;
go
set showplan_all off;
go */