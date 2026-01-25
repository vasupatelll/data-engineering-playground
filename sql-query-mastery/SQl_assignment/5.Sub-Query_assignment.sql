-- 1).Write a query to display the last name and hire date of any employee in the same department as SALES.
/*
select employees.last_name, employees.hire_date, departments.department_name
from employees
join departments
on employees.department_id=departments.department_id
where department_name="Sales"
*/

-- 2. Create a query to display the employee numbers and last names of all employees who earn more than the average salary. 
-- Sort the results in ascending order of salary.
/*
select employees.employee_id, employees.last_name
from employees 
where salary>(select avg(salary) from employees);
*/

-- 3. Write a query that displays the employee numbers and last names of all employees who work in a department
-- with any employee whose last name contains a 'u'
/*
select employees.employee_id, employees.last_name
from employees
where last_name like "u%" or last_name like "%u" or last_name like "%u%";
*/

-- 4. Display the last name, department number, and job ID of all employees whose department location is ATLANTA.
/*
select employees.last_name, employees.department_id, employees.job_id
from employees
join departments
on employees.department_id=departments.department_id
join locations
on departments.location_id=locations.location_id
where city = "ATLANTA"
*/

-- 5. Display the last name and salary of every employee who reports to FILLMORE.



-- 6. Display the department number, last name, and job ID for every employee in the OPERATIONS department.
/* 
 select employees.department_id, employees.last_name, employees.job_id
 from employees
 join departments
 on employees.department_id=departments.department_id
 where department_name="Operation"
*/

-- 7. Modify the above query to display the employee numbers, last names, and salaries of all employees 
-- who earn more than the average salary and who work in a department with any employee with a 'u'in their name.
/*
select employees.employee_id, employees.last_name, employees.salary
from employees
where salary>(select avg(salary)from employees) 
and last_name like "u%" or last_name like "%u" or last_name like "%u%";
*/


-- 8. Display the names of all emplovees whose job title is the same as anyone in the sales dept.
/*
select employees.first_name
from employees
join departments
on employees.department_id=departments.department_id
where department_name="sales"
*/

-- 9. Write a compound query to produce a list of employees showing raise percentages, employee IDs, and salaries. 
-- Employees in department 1 and 3 are given a 5% raise, employees in department 2 are given a 10% raise, 
-- employees in departments 4 and 5 are given a 15% raise, and employees in department 6 are not given a raise.




-- 10. Write a query to display the top three earners in the EMPLOYEES table. Display their last names and salaries.
/*
select employees.last_name, employees.salary
from employees
order by salary desc
limit 3;
*/

-- 11. Display the names of all employees with their salary and commission earned. 
-- Employees with a null commission should have O in the commission column




-- 12. Display the Managers (name) with top three salaries along with their salaries and department information.

