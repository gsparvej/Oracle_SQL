
--1--

create table emp1(
eid NUMBER(6) CONSTRAINT eid_pk primary key,
ename varchar2(30) not null,
salary number(9,2)not null,
Hire_date varchar2(20) not null,
Address varchar2(25) not null
);

select*FROM emp1;

--2--
ALTER TABLE emp1 ADD(department_id number(6), dept_name VARCHAR2(10));


--3--
INSERT INTO emp1 values (1,'Atik',10000,'20-sep-23','Dhaka',101,'IT');

INSERT INTO emp1 values (2,'Arif',12000,'12-sep-24','Barisal',101,'IT');
INSERT INTO emp1 values (3,'Reja',19000,'21-sep-23','Dhaka',103,'DDD');
INSERT INTO emp1 values (4,'Emran',20000,'20-oct-23','Sylhet',102,'NT');
INSERT INTO emp1 values (5,'Masud',25000,'09-nov-24','Savar',101,'IT');


--4--
create view emp1vu
as SELECT ename,dept_name,salary 
from emp1
where department_id=101;

SELECT
    * FROM emp1vu;
    

--5--
CREATE SEQUENCE emp1_eid_seq
        start WITH 10
        INCREMENT BY 2
        MAXVALUE 100
        NOCACHE
        NOCYCLE;
        
        
--6--
select * from emp1
where department_id=103;