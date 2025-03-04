 SELECT last_name, hire_date,
 TO_CHAR(hire_date, 'fmddspth "," Month "," YEAR,  HH24:MI:SS AM')
 AS HIREDATE
 FROM   employees;
 
 select to_char(sysdate, 'HH12:MI:SS AM')
 from dual;
 
 SELECT last_name, salary,TO_CHAR(salary*40, '$9,999,999.00') SALARY
 FROM   employees;
 
 SELECT 
 last_name, 
 salary, TO_CHAR(salary*40, '$9,999,999.00'),
 concat('BDT', 
    substr(
        TO_CHAR(salary*40, '$9,999,999.00'),
            instr(
                TO_CHAR(salary*40, '$9,999,999.00'),'$')+1))  SALARY
 FROM   employees;
 
 
 
 
 
 
 SELECT last_name, hire_date
 FROM   employees
 WHERE  hire_date = TO_date('May 24, 07', 'fxMonth DD, RR');
 
 SELECT last_name, TO_CHAR(hire_date, 'DD-Mon-YYYY')
 FROM  employees
 WHERE hire_date > TO_DATE('01-Jan-90','DD-Mon-RR');
 
 
 
 
 
 
 select last_name, commission_pct, nvl(commission_pct,0.0)
 from employees;
 
 select last_name, commission_pct, nvl2(commission_pct,commission_pct+.5,0.0)
 from employees;
 
 
 
 
  SELECT first_name, LENGTH(first_name) "expr1", 
last_name,  LENGTH(last_name)  "expr2",
 NULLIF(LENGTH(first_name), LENGTH(last_name)) result
 FROM   employees;
 
 
 
 SELECT last_name, salary, commission_pct,
 COALESCE((salary+(commission_pct*salary)), salary+2000)"New Salary"
 FROM   employees;
 
 
 
 
 
 
 
 
 