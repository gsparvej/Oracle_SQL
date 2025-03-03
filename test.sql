
--1--
select first_name, hire_date
from employees
where hire_date like '%02' or hire_date like '%05';


--1--or
select first_name, hire_date
from employees
where to_char(hire_date,'yy')between 02 and 05;

--1--0rr
select first_name, hire_date
from employees
where hire_date between '01-jan-2002' and '31-dec-2005';

--2--
select first_name, hire_date,job_id
from employees
where job_id like 'IT_PROG' or job_id like 'SA_MAN' ;


--2--or
select first_name, hire_date,job_id
from employees
where job_id in ('IT_PROG' , 'SA_MAN') ;


--3--
select employee_id,hire_date
from employees
where hire_date> '01-jan-08';


--4--
select *
from employees
where employee_id like 150 or  employee_id like 160;


--5--
select first_name, salary, commission_pct, hire_date
from employees
where salary<10000;



