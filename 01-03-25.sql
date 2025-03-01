select * from countries;

select last_name, job_id, employee_id,department_id
from employees
where department_id=60
or department_id=80
and salary>=10000;
select &1st_col, first_name, job_id
from employees;

select &1st_col,job_id,employee_id,department_id,salary
from employees
where salary>=&salary_renge
order by salary desc;
select &1st_col, job_id,employee_id, department_id,salary
from employees
where substr(job_id,4)='REP' and salary >9000
order by  employee_id desc,salary;

select round(45.94558,2), round(45.923,0),round(45.923,-1)
from dual;

select round(45.94558,2), round(45.923,0),round(54,-1)
from dual;

select round(45.94558,2), round(45.923,0),round(54,-2)
from dual;



