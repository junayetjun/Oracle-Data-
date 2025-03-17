 cselect first_name||' Hello '|| last_name||' Bye' as "Full Name"
from employees;

select *
from employees;


describe employees;


select employee_id||' '|| last_name as "Full Name", job_id||' '|| department_id as "Job And Department ID", salary, HIRE_DATE
from employees
--where job_id ='IT_PROG';
--where department_id =90;
--where salary>10000 and department_id=90; 
--where salary>10000 and hire_date>'17-OCT-03 '; 
--where hire_date between '17-OCT-03' and '05-JAN-05';
--where hire_date in ('17-OCT-03','05-JAN-05','11-MAY-04');
--where hire_date not in ('17-OCT-03','05-JAN-05','11-MAY-04');
where department_id=50 or department_id=90;


select first_name, salary
from employees
--where first_name like '_e%'
where first_name like '_e%a_'


select first_name, salary
from employees
where first_name like 'A%a';

select first_name, salary
from employees
where first_name like 'A%';


select first_name, salary
from employees
where first_name like '%k';


select first_name, salary, commission_pct
from employees
where commission_pct is not null; 

 
select first_name, salary, commission_pct
from employees
where commission_pct is null;


select  distinct department_id
from employees; 


select *
from employees
where substr(job_id,4) = 'REP';


select first_name
from employees
where substr (first_name, 2,2) = 'an';

select first_name
from employees
where substr (first_name, -2) = 'an';


select *
from employees;


describe employees; 


select round(45.9244,3), round(45.923,0),
round (54,-2)
from dual;


select trunc(45.9244,3), trunc(45.923),
trunc (55,-1)
from dual;


select mod (1600, 300)
from dual;
--//mod is like modulus


select last_name, hire_date
from employees
where hire_date>'01-feb-05';

select sysdate
from dual;

select current_timestamp
from dual;


-- Class Test . Date-01/03/25


--Q ---1 
select last_name, salary 
from employees
--where salary < 5000 and salary >12000;
where salary not BETWEEN 5000 and 12000;

--Q ---2
select last_name, department_id
from employees
where department_id in(20,50)
order by last_name;

--Q ---3
select last_name, salary, department_id
from employees 
where salary BETWEEN 5000 and 12000 and department_id in(20,50);

--Q ---4
select last_name, salary, commission_pct
from employees
where commission_pct is not null
order by salary DESC , commission_pct desc;

--Q ---5
select last_name, salary, commission_pct
from employees
where commission_pct=0.20 ;

--Q ---6
select employee_id, last_name, salary, salary+round((salary*1.155)) as "New Salary"
from employees;

--02-03-25
select last_name , salary ,
to_char(salary*40,substr("BDT","$9,999,999.00"))as "Salary"
from employees;

SELECT last_name, salary,
SUBSTR('BDT' || TO_CHAR(salary * 40, '9,999,999.00'), 1, 20) AS "Salary"
FROM employees;
 


--Class Test 2nd

--Q--1
select INITCAP (last_name), length(last_name)
from employees
where last_name like 'J%'
or last_name like 'A%'
or last_name like 'M%'
order by last_name;

--Q--2
select last_name, salary,
lpad(salary, 15, '$') as "Salary"
from employees;

--Q--3
select last_name, salary, salary+(salary*3) as "Dream Salaries"
from employees;

--03-03-25

select last_name, job_id, salary,
case job_id when 'IT_PROG' then 1.10*salary
when 'ST_CLERK' THEN 1.15*salary
when 'SA_REP' THEN 1.20*salary
else salary  End "Revision Salary"
from employees;

select last_name, job_id, salary,
(case when salary<5000 then 'Low'
      when salary<10000 then 'Medium'
      when salary<20000 then 'Good'
      else 'Excellent'
      end) "qualitive_Salary"
      
      from employees; 
      
      
--      Class Test 3-03-25 ----

-- Q--1
SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '01-JAN-00' AND '31-DEC-05'
ORDER BY 2;
 
-- --Q--2
 SELECT FIRST_NAME, HIRE_DATE, JOB_ID
 FROM EMPLOYEES
 WHERE JOB_ID LIKE '%IT_PROG%'
 OR JOB_ID LIKE '%SA%'
 ORDER BY 1;
 
--Q--3
SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE > '01-JAN-08'
ORDER BY 1 DESC;

--Q--4
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID IN (150,160);

--Q--5
SELECT FIRST_NAME, SALARY, COMMISSION_PCT, HIRE_DATE
FROM EMPLOYEES
WHERE SALARY < 10000;



--CLASS DATE04-03-25
select last_name, salary, department_id, region_id, country_id,  employee_id
from employees 
natural join departments 
natural join regions
natural join countries;




select e.first_name, d.department_name, l.street_address, c.country_name
from employees e
join departments d on e.department_id = d.department_id
join locations l on l.location_id = d.location_id
join countries c on c.country_id = l.country_id;


--class test 4----

 

create table emp (
emp_id NUMBER(6) CONSTRAINT emp_id_pk PRIMARY KEY,
name VARCHAR2(30)not null,
salary number(8,2)not null,
email VARCHAR2(25)not null,
CONSTRAINT emp_email_unq UNIQUE(email)
);




create table emp_1287748 (
eid number(6) CONSTRAINT emp_1287748_id_pk PRIMARY KEY,
ename VARCHAR2(30) not null,
salary number (8,2) not null,
hire_date DATE not null,
address varchar2(25) not null
);

ALTER TABLE emp_1287748 ADD(
department_id NUMBER(6),
department_name VARCHAR2(25)
);

INSERT into emp_1287748 values (1,'Junayet', 45000, '12-MAR-25', 'Shangkar ,Dhaka', 112, 'JAVA');
INSERT into emp_1287748 values (2,'Istiaq', 35000, '12-MAR-25', 'Shangkar ,Dhaka', 112, 'JAVA');
INSERT into emp_1287748 values (3,'Junu', 45000, '12-MAR-25', 'Shangkar ,Dhaka', 112, 'JAVA');
INSERT into emp_1287748 values (4,'Samim', 45000, '12-MAR-25', 'Shangkar ,Dhaka', 112, 'JAVA');
INSERT into emp_1287748 values (5,'Junayet Istiaq', 45000, '12-MAR-25', 'Shangkar ,Dhaka', 112, 'JAVA');




select *
from emp_1287748;

select *
from emp_1287748
order by ename;






select d.department_id,
round(avg(e.salary)) as"Avg Salary"
from employees e
join departments d on e.department_id = d.department_id
GROUP BY d.department_id
HAVING MAX(e.salary)>12000;




SELECT d.department_id, 
ROUND(AVG(e.salary)) AS avg_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_id
HAVING MAX(e.salary) > 12000;



select first_name
from employees
where first_name like 'S%'; 



SELECT d.department_name, 
ROUND(AVG(e.salary)) AS avg_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Sales'
GROUP BY d.department_name;



select last_name, hire_date 
from employees
order by hire_date;






--06-03-25

CREATE table emppractice (
e_id NUMBER(6) CONSTRAINT emppractice_id_pk PRIMARY key,
first_name VARCHAR2(30),
email VARCHAR2(25),
phone NUMBER(14),
subjuct VARCHAR2(15),
constraint emppractice_email_unq unique (email)
);
alter table emppractice add(
);

INSERT INTO emppractice VALUES(101,'Samim Junayet Istiaq', 'junayet03@gmail.com', +8801515203269, 'Java' );

select *
from emppractice;


describe emppractice;



 SELECT UNIQUE department_id FROM employees WHERE
last_name='Smith';


SELECT employees.last_name, departments.department_name,
departments.location_id
FROM employees , departments 
WHERE employees.department_id = departments.department_id;


SELECT e.last_name, d.department_name, d.location_id FROM
employees e, departments d
WHERE e.department_id=d.department_id;\







create table emp_1287748 (
eid number(6) CONSTRAINT emp_1287748_id_pk PRIMARY KEY,
ename VARCHAR2(30) not null,
salary number (8,2) not null,
hire_date DATE not null,
address varchar2(25) not null
);


INSERT into emp_1287748 values (5,'Junayet Istiaq', 45000, '12-MAR-25', 'Shangkar ,Dhaka', 112, 'JAVA');


--10-03-25

select worker.last_name as "emp", manager.last_name as "mgr"
from employees worker join employees manager 
on (worker.manager_id = manager.employee_id); 


select * 
from job_grades ;




select e.last_name, d.department_id ,d.department_name
from employees e full outer join departments d 
on (e.department_id = d.department_id);



--11-03-25
select last_name , hire_date
from employees
where job_id = (select job_id 
from employees 
where last_name = 'Taylor');

and salary >
(select salary 
from employees 
where last_name= 'Taylor'
);


select employee_id, last_name, salary
from employees 
    where salary > (
        select avg(salary) 
            from employees 
            ); 


SELECT employee_id, last_name
FROM employees
where department_id in (
        select department_id
            from employees
            where last_name like '%u%'
            )
            order by 2;             
                                   
            
            
select last_name, department_id, job_id
from employees
where department_id in (
      select department_id
       from departments
        where location_id like 1700
         )
        order by 1;                
                                        
                    
                    
select last_name , salary 
from employees
where manager_id in (
  select employee_id 
  from employees
    where last_name like 'King'
     );
                     
--12-03-25

select first_name, department_id, salary 
from employees 
where (salary,department_id) in 
        (select min(salary), department_id 
            from employees
                group by department_id
                )
    order by department_id;     
       
 
     
    
--    question -1
    
SELECT department_id, MAX(salary) AS "Max Salary"
FROM employees
WHERE department_id IN (
             SELECT department_id
              FROM employees
                GROUP BY department_id
                 HAVING MAX(salary) > 10000
                 )
    GROUP BY department_id
    order by 1;
    
    
     SELECT * 
     FROM DEPARTMENTS
     WHERE DEPARTMENT_ID IN
     ( SELECT DEPARTMENT_ID FROM EMPLOYEES
       GROUP BY DEPARTMENT_ID
         HAVING MAX(SALARY)>10000);



--    question -2


SELECT last_name, department_id
FROM employees 
WHERE manager_id IN(
            SELECT employee_id
             FROM employees 
                WHERE last_name = 'Smith'
                    );
                    
                    SELECT * 
                    FROM DEPARTMENTS 
                    WHERE MANAGER_ID IN
                    (SELECT EMPLOYEE_ID 
                    FROM EMPLOYEES 
                    WHERE FIRST_NAME='SMITH');         
                    
         
    --    question -3
    
    
--    
--    -SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID
--NOT IN (SELECT EMPLOYEE_ID FROM JOB_HISTORY)

        SELECT *  
        FROM EMPLOYEES 
        WHERE EMPLOYEE_ID NOT IN
            (SELECT EMPLOYEE_ID 
            FROM JOB_HISTORY);
            
            
            
                --    question -1
                
                
--            select  last_name ,manager_id
--            from employees
--            where manager_id in(
--            select employee_id 
--            from employees            
--            HAVING employee_id > 5);
--            
            
            
                        
                        SELECT FIRST_NAME FROM EMPLOYEES
                            WHERE EMPLOYEE_ID IN
                                (SELECT MANAGER_ID FROM EMPLOYEES
                                    GROUP BY MANAGER_ID
                                        HAVING COUNT(*)>5);



  --    question -2
  
   SELECT  *
   FROM DEPARTMENTS
   WHERE DEPARTMENT_ID NOT IN( 
                        SELECT DEPARTMENT_ID
                        FROM EMPLOYEES WHERE
                            FLOOR((SYSDATE-HIRE_DATE)/365) < 2 );
  
  
  

  --    question -3
  
  select job_id
  from job_history
  where department_id IN(
  select department_name
  from departments
  WHERE department_id = 'IT-PROG' );
  
     SELECT * FROM JOBS
     WHERE JOB_ID IN
     (SELECT JOB_ID 
     FROM EMPLOYEES 
     WHERE EMPLOYEE_ID IN
        (SELECT EMPLOYEE_ID 
        FROM JOB_HISTORY 
        WHERE JOB_ID='IT_PROG'))
        
        
        
        
--13-03-25
CREATE TABLE emp (
eid NUMBER(6) CONSTRAINT emp_id_pk primary key,
ename VARCHAR2(30)not NULL,
email varchar2 (25) constraint emp_email_unq unique, 
department_id number(6)not NULL,
department_name varchar2(10)
);

select * from emp;

INSERT INTO emp values(1,'Istiaq', 'junayet@gmail.com',1001, 'JEE');

            
           
--16-03-25
select * from emp;

create SEQUENCE emp_eid_seq 
            start WITH 5000
            INCREMENT by 100
            MAXVALUE 999999
            NOCACHE
            NOCYCLE;
            
            
            drop SEQUENCE emp_eid_seq;
            
            
            
            
            INSERT INTO emp VALUES(emp_eid_seq.nextval, 'Junayet', 'istiaq@gmail.com',1001,'JAVA');
            INSERT INTO emp VALUES(emp_eid_seq.nextval, 'Samim', 'samim@gmail.com',1001,'NT');
            INSERT INTO emp VALUES(emp_eid_seq.nextval, 'Istiaq', 'junayet@gmail.com',1001,'JEE');
            
            
            TRUNCATE TABLE emp;
            
            
            
            
            
            
            create view emp01 
            as SELECT first_name||' '||last_name as "Full Name", salary, job_id
            from employees;
            
            
            select * from emp01;
           

--exam practice 16-03-25

create table emp_12877(
eid NUMBER(6) CONSTRAINT empid_pk primary key,
e_name VARCHAR2(30),
salary NUMBER(10),
hire_date DATE,
address varchar2(30)
);



ALTER TABLE emp_12877 add(
department_id NUMBER(4),
department_name varchar2(10));


INSERT into emp_12877 values (101,'Samim', 900000, '21-Feb-1990','Mohammadpur,Dhaka', 111, 'JEE');
INSERT into emp_12877 values (102,'Junayet', 950000, '21-Mar-1995','Mohammadpur,Dhaka', 122, 'JAVA');
INSERT into emp_12877 values (103,'Istiaq', 800000, '21-Apr-1990','Mohammadpur,Dhaka', 133, 'JS');


select * from emp_12877;


select * from emp02;

create view emp02 
as select first_name, salary
from employees
where department_id = 80;





create SEQUENCE emp12877_id_seq
                start WITH 100
                INCREMENT by 10
                MAXVALUE 9999
                NOCACHE
                NOCYCLE;
                
                
                
INSERT INTO emp_12877
(eid,e_name,salary,hire_date,address,department_id,department_name)
SELECT employee_id, last_name, salary, hire_date,country_name, department_id, department_name
FROM employees NATURAL JOIN departments NATURAL JOIN locations NATURAL JOIN countries
WHERE department_id = 100;

--17-03-25

 select * from emp;
 
 
 
 CREATE TABLE masud (
 id number,
 name VARCHAR2(30),
 email VARCHAR2(35)
 );
 
 ALTER TABLE masud ADD(
 hire_date date,
 subject_name VARCHAR(20)
 );
 
 DESCRIBE masud;
 
 select * from masud;
 
 ALTER TABLE masud 
 add CONSTRAINT mas_id_pk PRIMARY KEY (id);
 
 
 
 ALTER TABLE masud
 MODIFY name NUMBER (60);
 
 
 ALTER TABLE masud
 RENAME COLUMN name to userName;
 
 
 
 
  
  

  


