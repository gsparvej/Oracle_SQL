select  worker.employee_id,worker.last_name emp, manager.last_name mgr,manager.employee_id
from employees worker join employees manager 
on (worker.manager_id=manager.employee_id);


select* from jobs;

select e.last_name,d.department_id, d.department_name
from employees e LEFT OUTER JOIN departments d
   ON e.department_id = d.department_id;
   
   select e.last_name,d.department_id, d.department_name
from employees e RIGHT OUTER JOIN departments d
   ON e.department_id = d.department_id;
   

select e.last_name,d.department_id, d.department_name
from employees e FULL OUTER JOIN departments d
ON e.department_id = d.department_id;
   
   