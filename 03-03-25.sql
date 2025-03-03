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

