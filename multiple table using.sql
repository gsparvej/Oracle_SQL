select last_name,salary, department_name,manager_id
from employees NATURAL JOIN departments
where salary>6000
order by 2 desc;
