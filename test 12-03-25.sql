


--1st test-- 

--1--

select department_id,salary
from employees
where salary>any(
                select salary
                from employees
                where salary>10000
);

--select salary,department_id
                --from employees
                --where salary>10000;
                
                
 --2--               
                
select department_id
from departments
where department_id in(
                    select manager_id
                    from employees
                    where first_name like 'Smith'
);
select * from departments;

--2--  solve by sir..
SELECT * FROM DEPARTMENTS 
WHERE MANAGER_ID IN
 (SELECT EMPLOYEE_ID FROM EMPLOYEES WHERE FIRST_NAME='SMITH');
 
 


--3--
select * FROM employees 
where employee_id not in (
                    select employee_id from job_history
                    
);


select employee_id from job_history;




select manager_id,department_id
                    from employees
                    where last_name like 'Smith';
                    

select department_id, last_name,manager_id
from employees
where employee_id in(
                    select manager_id
                    from employees
                    where last_name like 'Smith'
);



--2nd test--
--1--
select * from departments
where manager_id in (
                    select employee_id
                    from employees
                    
);

--2--

select hire_date 
from employees
where hire_date < (
                select hire_date
                from employees
                order by 1 desc
);

select hire_date
                from employees
                order by 1 desc;





--3--

select department_id ,job_id
from employees
where employee_id in (
            select employee_id
            from employees
            where job_id ='IT_PROG'         
);

select last_name,employee_id,department_id
from employees
where job_id ='IT_PROG';





