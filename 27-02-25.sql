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

select last_name, job_id,department_id, hire_date, salary
from employees

order by salary
fetch FIRST 5 ROWS ONLY;


select concat(concat(last_name, '''s job category is '), job_id) "job"
from employees
where substr(job_id,4) ='REP';
select last_name
from employees
where last_name like '_an%';

select last_name
from employees
where substr(last_name,2,2)='an';

select last_name
from employees
where substr(last_name,-2)='en';


