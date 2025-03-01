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

select trunc(45.94558,2), trunc(45.923,0),trunc(54,-2)
from dual;

select ceil(45.94558) 
from dual;

select floor(45.94558) 
from dual;

select mod(200, 100)
from dual;




--test--

--1--
select last_name, salary
from employees
where salary not between 5000 and 12000;

--2--
select last_name,department_id
from employees
where department_id=20
or department_id=50
order by last_name;

---3---or
select last_name as employee, salary as monthly_salay
from employees
where salary between 5000 and 12000 and department_id in (20,50);


--4--
select  last_name,salary,commission_pct
from employees
order by salary desc, commission_pct desc;

--5--
select last_name, salary, commission_pct
from employees
where commission_pct = 0.2;


--6--
select employee_id as employee_number, last_name, salary, round(salary+salary*0.155)  as New_Salary
from employees;


select * from employees;













