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
SELECT
    * FROM employees;