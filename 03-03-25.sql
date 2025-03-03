select employee_id,hire_date,round(hire_date,'month'),trunc(hire_date,'month')
from employees
where hire_date like '%05';