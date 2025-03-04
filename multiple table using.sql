select last_name,salary, department_name,manager_id,country_name,postal_code,
state_province,max_salary,region_name
from employees 
NATURAL JOIN departments 
NATURAL JOIN countries 
NATURAL JOIN locations
NATURAL JOIN jobs
NATURAL JOIN regions
where salary>6000
order by 2 desc
fetch FIRST 5 ROWS ONLY;


select  distinct salary, department_name,manager_id,country_name,postal_code,
state_province,max_salary,region_name
from employees 
NATURAL JOIN departments 
NATURAL JOIN countries 
NATURAL JOIN locations
NATURAL JOIN jobs
NATURAL JOIN regions
where salary<6000
order by 2 desc
 OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;
 
 
 select e.first_name, d.department_name, l.street_address, l.city, c.country_name
 from employees e
 join departments d on e.department_id=d.department_id
 join Locations l on l.location_id=d.location_id
 join countries c on l.country_id=c.country_id;
