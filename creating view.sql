CREATE view empv
as SELECT employee_id, last_name, salary
from employees
where department_id=80;

select * from empv;

COMMIT;