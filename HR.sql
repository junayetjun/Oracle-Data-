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