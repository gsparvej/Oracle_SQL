create table emp(
emp_id number(6) constraint emp_id_pk primary key,
name varchar2(30) not null,
salary number (8,2) not null,
email varchar2(25) not null,
constraint emp_email_unq unique(email)
);


create table emp1287799(
eid number(6) constraint emp_pk primary key,
ename varchar2(30) not null,
salary number (8,2) not null,
hire_date date not null,
address varchar2(25) not null
);


alter table emp1287799 add(
department_id number(6),
department_name varchar2(10)
);


INSERT INTO emp1287799 VALUES (1,'rakib',25000,'05-jan-25','Dhaka',101,'JAVA');
INSERT INTO emp1287799 VALUES (2,'sakib',26000,'01-feb-25','RAJSHAHI',101,'JAVA');
INSERT INTO emp1287799 VALUES (3,'eiasin',30000,'12-mar-25','Munshiganj',101,'JAVA');
INSERT INTO emp1287799 VALUES (4,'Atik',32000,'19-dec-25','Dhaka',101,'JAVA');
insert into emp1287799 values (5,'Parvej',35000,'31-jan-25','Mymensingh',101,'JAVA');
INSERT INTO emp1287799 VALUES (1,'sabbir',27000,'05-feb-22','Dhaka',102,'JAVA');


select * from emp1287799;
select*from emp;

SELECT DISTINCT department_id FROM employees 
WHERE
last_name='Smith';



INSERT INTO emp VALUES (1,'Reja',21000,'reja@gmail.com');
INSERT INTO emp VALUES (2,'Imran',22000,'imran@gmail.com');








