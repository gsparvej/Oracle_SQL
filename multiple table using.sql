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
 
 
 
 --important--
 select e.first_name, d.department_name, l.street_address, l.city, 
 c.country_name,d.manager_id,e.salary
 from employees e
 join departments d on e.department_id=d.department_id
 join Locations l on l.location_id=d.location_id
 join countries c on l.country_id=c.country_id
 where e.salary> 3000
 order by e.salary desc
 OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;
 
 
 
 
 
 
 
 
 select c.country_name, d.department_name,l.state_province,r.region_name,
 jo.max_salary,j.start_date
 from employees e 
 join countries c on c.country_id_id=l.country_id
 join departments d on d.department_id=j.department_id
 join job_history j on j.job_id=jo.job_id
 join jobs jo on jo.job_id=e.job_id
 join locations l on l.country_id=c.country_id
 join regions r on r.region_id=c.region_id;
