use university
go
/*
select ID, grade, ntile(8) over ( order by grade asc ) as g_rank
	from takes; */
select ID, name, dept_name, sum(tot_cred) Total_Credits
	from student
		group by cube(ID, name, dept_name)