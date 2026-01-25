-- 1. Write a query that displays the employee's last names only from the string's 2-5th position 
-- with the first letter capitalized and all other letters lowercase, Give each column an appropriate label.
/*
select concat(upper(substring(last_name,2,1)),lower(substring(last_name,2,5)))
from employees 
*/

-- 2. Write a query that displays the employee's first name and last name along with a 
-- ' in between for e.g.: first name: Ram; last name: Kumar then Ram-Kumar.
 -- Also displays the month on wich the employee has joined.
 /*
select concat("first name: ",employees.first_name," ; "," last name: ", employees.last_name,"    ",first_name,"-",last_name) "query", month(employees.hire_date)"Hire_month"
from employees
*/

-- 3. Write a query to display the employee's last name and if half of the salary is greater than ten thousand 
-- then increase the salary by 10% else by 11.5% along with the bonus amount of 1500 each
-- . Provide each column an appropriate label.
/*
select employees.last_name, if((salary/2)>10000,(salary+salary*0.10)+1500,(salary+salary*11.5/100)+1500)
from employees
*/

-- 4. Display the employee ID by Appending two zeros after 2nd digit and 'E' in the end,
--  department id, salary and the manager name all in Upper case, if the Manager name consists of 'z' replace it with 'S.



-- 5. Write a query that displays the employee's last names with the first letter capitalized and all other letters lowercase, and the length of the names, for all employees whose name starts with J, A, or M. Give each column an appropriate label. Sort the results by the employees' last names
/*
select concat(upper(substring(last_name,1,1)),lower(substring(last_name,2)))
from employees 
*/

-- 6. Create a query to display the last name and salary for all employees. Format the salary to be 15 characters long, 
-- left-padded with S. Label the column SALARY

-- 7. Display the emplovee's name if it is a palindrome.
/*
select employees.first_name from employees where reverse(substring(first_name,1))=substring(first_name,1)
*/

-- 8 .Display First names of all employees with initcaps.
/*
select upper(first_name)
from employees;
*/

-- 9. From LOCATIONS table, extract the word between first and second space from the STREET ADDRESS column.



-- 10. Extract first letter from First Name column and append it with the Last Name. Also add "@systechusa.com" at the end.
-- Name the column as e-mail address. All characters should be in lower case. Display this along with their First Name.
/*
select concat(lower(substring(first_name,1,1)),lower(last_name),"@systechusa.com")"Email", employees.first_name
from employees
*/

-- 11. Display the names and job titles of all employees with the same job as Trenna.
/*
select employees.first_name, jobs.job_title
from employees
join jobs
on employees.job_id=jobs.job_id
where job_title="Programmer"
*/ -- trenna name is not availabe so i have take random name 

-- 12. Display the names and department name of all employees working in the same city as Trenna.
/*
select departments.department_name,employees.first_name
from employees
join departments
on employees.department_id=departments.department_id
join locations
on departments.location_id=locations.location_id
where city="Southlake"
*/ -- trenna name is not available so i have take name alexander's data 

-- 13. Display the name of the employee whose salary is the lowest.

/* select employees.first_name, min(salary)"Min_salary"from employees*/

-- 14. Display the names of all employees except the lowest paid.
/*
select employees.first_name
from employees
where salary>(select min(salary)from employees)
*/
