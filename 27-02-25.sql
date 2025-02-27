select last_name, first_name from employees;

select last_name, job_id, hire_date from employees;

select last_name, job_id,hire_date  from employees
where hire_date in ('13-JAN-01','28-SEP-05');

select last_name, job_id,hire_date  from employees
where first_name like 'A%';

select last_name, job_id,hire_date  from employees
where hire_date not in ('13-JAN-01','28-SEP-05');

select employee_id, last_name, job_id,salary from employees
where salary >=10000 or job_id like 'IT_PROG';

select employee_id, last_name, job_id,salary from employees
where salary >=10000 or job_id like 'IT_PROG';

select last_name, job_id,department_id, hire_date
from employees
where department_id=60
or department_id=80
and salary > 10000
order by hire_date desc, last_name desc;

