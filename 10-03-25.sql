select  worker.employee_id,worker.last_name emp, manager.last_name mgr,manager.employee_id
from employees worker join employees manager 
on (worker.manager_id=manager.employee_id);

