select last_name, first_name from employees;

select last_name, job_id, hire_date from employees;

select last_name, job_id,hire_date  from employees
where hire_date in ('13-JAN-01','28-SEP-05');

select last_name, job_id,hire_date  from employees
where first_name like 'A%';

