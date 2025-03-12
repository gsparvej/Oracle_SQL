select employee_id, last_name, job_id, salary
from employees
where salary <  (
                select min(salary)
                from employees
                where job_id='IT_PROG'
);

select min(salary)
                from employees
                where job_id='IT_PROG';
                
                
                
select last_name 
from employees
where employee_id not in (
                select manager_id
                from employees
                where manager_id is not null
);


select last_name 
from employees
where employee_id  in (
                select manager_id
                from employees
                where manager_id is not null
);




select * from employees;


                