-- 1. Write a query to display the last name, department number, department name for all employees
/*
select employees.last_name, employees.department_id, departments.department_name
from employees
join departments
on employees.department_id=departments.department_id;
*/

-- 2. Create a unique list of all jobs that are in department 4. Include the location of the department in the output.
/*
select distinct departments.department_id, locations.city,locations.street_address
from departments
join locations
on departments.location_id=locations.location_id
where department_id=4
*/

-- 3. Write a query to display the employee last name,department name ,location id and city of all employees who earn commission.
-- comission table isnt available

-- 4. Display the employee last name and department name of all employees who have an 'a' in their last name
/*
select employees.last_name, departments.department_name
from employees
join departments
on employees.department_id=departments.department_id
where last_name like "a%" or last_name like "%a" or last_name like "%a%"
*/

-- 5. Write a query to display the last name ,job_id,department number and department name for all employees who work in ATLANTA.
/*
select employees.last_name, employees.job_id, employees.department_id, departments.department_name
from employees
join departments
on employees.department_id=departments.department_id
join locations
on departments.location_id=locations.location_id
where city="ATLANTA"
*/

-- 6. Display the employee last name and employee number along with their manager's last name and manager number.
-- manager name is not available so i ll comparing manager_id 
/*
select employees.last_name, employees.employee_id, employees.manager_id
from employees
where manager_id=100;
 */
 
-- 7. Display the employee last name and employee number along with their manager's last name and manager number (including the employees who have no manager).
/*
select employees.last_name, employees.employee_id, employees.manager_id
from employees
where manager_id=100 or manager_id is null;
*/

-- 8. Create a query that displays employees last name ,department number,
-- and all the employees who work in the same department as a given employee.
/*
select employees.last_name, employees.department_id
from employees
*/ -- question exaggerat 


-- 9. Create a query that displays the name ,job,department name ,salary,grade for all employees. 
-- Derive grade based on salary(>=50000=A, >=30000=B, <30000=C

select employees.first_name, employees.job_id, departments.department_name, employees.salary 
from employees
join departments
on employees.employee_id=departments.department_id




-- 10. Display the names and hire date for all employees who were hired before their managers along withe their manager names and hire date.
-- Label the columns as Employee name, emp_hire_date,manager name,man_ hire_date