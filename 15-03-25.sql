select * from emp1287799;

DELETE from emp1287799
where eid= 6;
ROLLBACK;
COMMIT;
DELETE from emp1287799
where department_id= (select department_id
                    from emp1287799
                    where department_name='NT');
                    
                    
select department_id
                    from emp1287799
                    where department_name='NT';
                    commit;
                    
