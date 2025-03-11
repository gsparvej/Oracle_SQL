select last_name,job_id,salary
from employees
where last_name ='taylor';


select last_name,job_id,salary
from employees
where hire_date> (
                    select hire_date
                    from employees
                    where last_name='Chen'

)
and salary < (
                    select salary 
                    from employees
                    where hire_date='21-SEP-05'
)
;

select employee_id,last_name, salary
from employees
where salary > (
            select avg(salary)
            from employees)
            order by 3;




select round(avg(salary))
            from employees;
            
            
            
select employee_id, last_name
from employees
where department_id in(
                select department_id
                from employees
                where last_name like '%u%'
);


select department_id
                from employees
                where last_name = '%u%';
            
            
            
select last_name,department_id, job_id
from employees 
NATURAL JOIN departments
where department_id in(
 select  department_id from departments
 where location_id=1700)
 order by 1
;

select last_name, salary
from employees
where manager_id in(
    select employee_id
    from employees
    where last_name='King'
);



select employee_id
from employees
where last_name= 'King';

select last_name,department_id, job_id
from employees 
where department_id in(
 select  department_id from departments
 where location_id=1700)
 order by 1
;
select  department_id from departments
 where location_id=1700;


NATURAL JOIN locations
where location_id=1700;

            
SELECT
    * FROM departments;
    
    SELECT
    * FROM locations;
    