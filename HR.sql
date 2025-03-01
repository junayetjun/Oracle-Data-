select first_name||' Hello '|| last_name||' Bye' as "Full Name"
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





















