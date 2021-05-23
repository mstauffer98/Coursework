use university; 
declare @StartTime datetime 
declare @EndTime datetime 
select @StartTime = getdate() 

select * 
from instructor; 


select @EndTime = GetDate() 

select DateDiff(MS,@StartTime, @EndTime) as [Duration in millisecs];