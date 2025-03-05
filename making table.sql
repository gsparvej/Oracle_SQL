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



select * from emp1287799;




