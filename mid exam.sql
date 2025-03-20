
--Ans No 1.
create table emp1287799(
eid NUMBER(6) CONSTRAINT emp1287799_eid_pk primary key,
ename varchar2(30) not null,
salary number(9,2)not null,
hire_date DATE not null,
address varchar2(35) not null
);


--Ans No 2.
alter TABLE emp1287799 ADD(
            department_id number(6),
            dept_name varchar2(10));
            
            
--Ans No 3.
insert into emp1287799(eid, ename, salary,hire_date,address,department_id,dept_name)
values(&eid,'&ename',&salary,'&hire_date','&address',&department_id,'&dept_name');

insert into emp1287799(eid, ename, salary,hire_date,address,department_id,dept_name)
values(&eid,'&ename',&salary,'&hire_date','&address',&department_id,'&dept_name');

--Ans No 4.
create view emp1287799vu
as SELECT ename,depat_name,salary 
from emp1287799
where department_id=80;








--Ans nO 5.
INSERT into emp1287799 (eid,ename,salary,hire_date,address,department_id,dept_name)
select employee_id,last_name,salary,hire_date,city, DEPARTMENT_ID,DEPARTMENT_NAME
from EMPLOYEES
natural join DEPARTMENTS
natural join LOCATIONS
where salary > (
                 select max(salary)
                 from hr.EMPLOYEES
                 where job_id like 'ST_CLERK'
);

--Ans No 6.
CREATE SEQUENCE emp1287799_eid_seq
            start WITH 101
            INCREMENT BY 5
            MAXVALUE 2000
            NOCACHE
            NOCYCLE;
            
            
--Example 
INSERT into emp1287799 VALUES(emp1287799_eid_seq.nextval,'Arif',35000,'25-oct-24','Rangpur',105,'NT');

INSERT into emp1287799 VALUES(emp1287799_eid_seq.nextval,'Istiaq',30000,'20-nov-24','Sherpur',105,'NT');

INSERT into emp1287799 VALUES(emp1287799_eid_seq.nextval,'Masud',21000,'11-jul-24','Madaripur',101,'JAVA');

