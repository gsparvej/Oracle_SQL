--6--
SELECT * FROM emp1287799;




INSERT into emp1287799 (eid,ename,salary,hire_date,address, department_id,department_name)
 select emp1287799_eid_seq.nextval,last_name,salary,hire_date,street_province,department_id,department_name
 from employees
 NATURAL join departments
 NATURAL join locations
 where salary = any(select salary
 from employees
 where salary between 7000 and 8000);
 
 
 
 select * from employees;
 select salary, last_name
 from employees
 where salary between 7000 and 8000;
 
 select last_name,salary,hire_date,state_province,department_id,department_name
 from employees
 NATURAL join departments
 NATURAL join locations
 where salary = any(select salary
 from employees
 where salary between 7000 and 8000);
 
 
 