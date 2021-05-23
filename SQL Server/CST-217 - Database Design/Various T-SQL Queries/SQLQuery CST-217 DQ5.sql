use university;
select distinct name
from student
where ID not in (select ID              
                 from takes
			     where grade = 'C' or grade = 'C+' or grade = 'F');