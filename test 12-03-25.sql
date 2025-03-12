


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


-- 63. Display details of manager who manages more than 5 employees.
SELECT FIRST_NAME
FROM EMPLOYEES
 WHERE EMPLOYEE_ID IN
                (SELECT MANAGER_ID 
                FROM EMPLOYEES
                GROUP BY MANAGER_ID
                HAVING COUNT(*)>5);

-- 65. Display the departments into which no employee joined in last two years.
 SELECT  * FROM DEPARTMENTS
 WHERE DEPARTMENT_ID NOT IN
 ( SELECT DEPARTMENT_ID 
 FROM EMPLOYEES
 WHERE
 FLOOR((SYSDATE-HIRE_DATE)/365) < 2 );





--  67. Display details of current job for employees who
--  worked as IT Programmers in the past.
 SELECT * FROM JOBS
 WHERE JOB_ID IN
                (SELECT JOB_ID 
                FROM EMPLOYEES 
                WHERE EMPLOYEE_ID IN
                                (SELECT EMPLOYEE_ID 
                                 FROM JOB_HISTORY 
                                WHERE JOB_ID='IT_PROG'));
 --67 or--                               
select department_id ,job_id
from employees
where employee_id in (
            select employee_id
            from job_history
            where job_id ='IT_PROG');  





