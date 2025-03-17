SELECT
    * FROM emp1287799;
    
    
TRUNCATE TABLE emp1287799;
    
    
INSERT into emp1287799 (eid,ename,salary,hire_date,address,department_id,department_name)
select emp1287799_eid_seq.nextval,last_name,salary,hire_date,city, DEPARTMENT_ID,DEPARTMENT_NAME
from hr.EMPLOYEES
natural join hr.DEPARTMENTS
natural join hr.LOCATIONS
where salary > (
                 select max(salary)
                 from hr.EMPLOYEES
                 where job_id like 'ST_CLERK'
);


select max(salary)
                 from hr.EMPLOYEES
                 where job_id like 'ST_CLERK';
                 
                 
                 
                 
SELECT constraint_name
from user_constraints;

select* from emp1;
describe emp1;

alter table emp1
modify eid number(10);

