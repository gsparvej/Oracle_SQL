CREATE SEQUENCE dept_deptid_seq
            start WITH 101
            INCREMENT BY 5
            MAXVALUE 1000
            NOCACHE
            NOCYCLE;
            

CREATE SEQUENCE emp1287799_eid_seq
            start WITH 101
            INCREMENT BY 5
            MAXVALUE 1000
            NOCACHE
            NOCYCLE;
            

SELECT
    * FROM emp1287799;
COMMIT;
    
    
INSERT into emp1287799 VALUES(emp1287799_eid_seq.nextval,'Arif',35000,'25-oct-24','Rangpur',105,'NT');

INSERT into emp1287799 VALUES(emp1287799_eid_seq.nextval,'Istiaq',30000,'20-nov-24','Sherpur',105,'NT');

INSERT into emp1287799 VALUES(emp1287799_eid_seq.nextval,'Masud',21000,'11-jul-24','Madaripur',101,'JAVA');


select emp1287799_eid_seq.nextval
from dual;


            