select employee_id,hire_date,round(hire_date,'month'),trunc(hire_date,'month')
from employees
where hire_date like '%05';

select last_name,hire_date
from employees
where hire_date< to_date('May 24, 2004','fxMonth dd, YYYY');

select last_name, job_id, salary,
case job_id when 'IT_PROG' then 1.10*salary
when 'ST_CLEARK' then 1.15*salary
else salary end "salary"
from employees;


select last_name, salary,
case
when salary<5000 then 'Low'
when salary<10000 then 'Mediam'
when salary<20000 then 'Good'
else 'Excellent' end "review"
from employees;

 
 select department_id,Max(salary), MIN(salary)
 from employees
 GROUP BY department_id
 HAVING Max(salary)>10000
 order by 1 desc;
 
 


