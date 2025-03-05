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

select * from emp1287799;
