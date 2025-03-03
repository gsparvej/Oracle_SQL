select employee_id,hire_date,round(hire_date,'month'),trunc(hire_date,'month')
from employees
where hire_date like '%05';

select last_name,hire_date
from employees
where hire_date< to_date('May 24, 2004','fxMonth dd, YYYY');

