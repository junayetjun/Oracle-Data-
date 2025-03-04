--Display the last name and salary for an employees who 
--salary is not the range 5000 through 12000

Select last_name, salary
from employees
where salary not BETWEEN 5000 and 12000; 

--Display the last name and department ID of all employees in departments 20 or 50 in 
--ascending alphabetical order by last name

Select last_name, department_id
from employees
where department_id in (20,50)
order by last_name;


--Display the last name and salary of employees who earned between 
--5000 and 12000 and are in department 20 and 50 
--level the column employee and monthly salary respectively

Select last_name "Employee", salary "Monthly Salary"
    from Employees
        where salary BETWEEN 5000 and 12000 and 
            department_id in(20,50);
            

--Create a report to display the last name, salary, and commission of all employees who earn
--commissions. Sort the data in descending order of salary and commissions.
--Use the column’s numeric position in the ORDER BY clause. 

Select last_name, salary, Commission_pct
from employees
where commission_pct is not null
order by 2 desc, 3 desc;


--display the last name, salary, and commission for all
--employees whose commission is 20%

Select last_name, salary, commission_pct
from Employees
where commission_pct = 0.2; 


--The HR department needs a report to display the employee number, last name, salary, and
--salary increased by 15.5% (expressed as a whole number) for each employee. Label the
--column New Salary.


Select employee_id, last_name, salary, round(salary+(salary * 0.155)) as "New Salary"
from employees
order by 1; 

--Write a query that displays the last name (with the first letter in uppercase and all the
--other letters in lowercase) and the length of the last name for all employees whose
--name starts with the letters “J,” “A,” or “M.” Give each column an appropriate label. Sort
--the results by the employees’ last names. 

Select INITCAP(last_name), length(last_name)
from employees
where 
        last_name like 'J%' 
    or last_name like 'A%' 
    or last_name like 'M.%';
    
    
Select INITCAP(last_name), length(last_name)
from employees
where 
       substr(last_name,1,1) in ('J', 'A', 'M'); 
       
--Create a query to display the last name and salary for all employees. Format the salary
--to be 15 characters long, left-padded with the $ symbol. Label the column SALARY       

Select last_name, LPAD(salary,15,'$') SALARY 
from employees;


--Create a report that produces the following for each employee:
--<employee last name> earns <salary> monthly but wants <3 times salary.>.
--Label the column Dream Salaries.

Select Last_name||' earn '||to_char(salary, 'fm$99999999.00')|
|' monthly but wants '||to_char(salary*3, 'fm$9999999.00') "Dream Salary"
from employees;



--Display each employee’s last name, hire date, and salary review date, 
--which is the first
--Monday after six months of service. Label the column REVIEW. Format the dates to
--appear in a format that is similar to “Monday, the Thirty-First of July, 2000.

Select last_name, hire_date, 

to_char(next_day(add_months(hire_date,6),'Monday'),'fmDay, "the" Ddspth "of" Month, YYYY')

from employees;


Select last_name, hire_date, 

to_char(next_day(add_months(hire_date,6), 'Monday'),'fm Day, "the" Ddspth "of" Month, YYYY')

from employees;



