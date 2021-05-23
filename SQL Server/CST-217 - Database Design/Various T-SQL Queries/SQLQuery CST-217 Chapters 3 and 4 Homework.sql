select * from instructor;

with dept_total (dept_name, value) as
(select dept_name, sum(salary)
from instructor
group by dept_name),
dept_total_avg(value) as
(select avg(value)
from dept_total)
select dept_name
from dept_total, dept_total_avg
where dept_total.value >= dept_total_avg.value;

SELECT dept_name FROM instructor 
GROUP BY dept_name
HAVING SUM(salary)>=
(SELECT avg (sum.sal_sum) from 
(select dept_name, sum(salary) as sal_sum from instructor group by dept_name) as sum
); 