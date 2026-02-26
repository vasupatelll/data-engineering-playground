# 1. Display all information in the tables EMP and DEPT.
 # select * from employees,departments; 

# 2. Display only the hire date and emplovee name for each employee
# select employees.hire_date, employees.first_name, employees.last_name from employees; 

# 3. Display the ename concatenated with the job ID, separated by a comma and space, 
# and name the column Employee and Title

/*select * from employees;
select concat("'",employees.first_name,"'"," ","'",jobs.job_id,"'" )
from emoloyees
join jobs 
on jobs.job_id=employees.job_id;*/


# 4. Display the hire date, name and department number for all clerks.

/*select employees.hire_date, employees.first_name, employees.last_name, departments.department_id
from employees
join departments
on employees.department_id=departments.department_id; */

# 5. Create a query to display all the data from the EMP table. Separate each column by a comma. 
#Name the column THE OUTPUT
/*select concat(",",employee_id,",",",",first_name,",",",",last_name,",",",",email,",",",",phone_number,",",",",hire_date,",",",",job_id,",",",",salary,",",",",manager_id,",",",",department_id,",")
as THE_OUTPUT
from employees;*/


# 6. Display the names and salaries of all employees with a salary greater than 2000.
/*select employees.first_name, employees.last_name, employees.salary 
from employees
where salary>2000;*/


# 7. Display the names and dates of employees with the column headers "Name and "Start Date
/*select concat(first_name," ", employees.last_name )as Name, employees.hire_date as Date
from employees;*/


# 8. Disolay the names and hire dates of all emplovees in the order they were hired
/*
select concat(first_name," ", employees.last_name )as Name, employees.hire_date
from employees
order by hire_date ;
*/

# 9. Display the names and salaries of all employees in reverse salary order.
/*
select concat(first_name," ", employees.last_name )as Name, employees.salary
from employees
order by salary desc ;
*/

# 10. Display 'ename and 'deptno who are all earned commission and display salary in reverse order.
#select employees.email, departments.department_id 


  
# 11. Display the last name and job title of all employees who do not have a manager
/*select employees.last_name, jobs.job_title 
from employees
join jobs
on employees.job_id=jobs.job_id
where employees.manager_id is null;
*/

# 12. Display the last name, job, and salary for all employees whose job is sales representative 
# or stock clerk and whose salary is not equal to $2,500, $3,500, or $5.000
/*
select employees.last_name, jobs.job_title, employees.salary
from employees
join jobs
on employees.job_id=jobs.job_id
where job_title="Sales Manager "
or job_title="Stock Clerk" and salary != 2500 and salary != 3500 and salary != 5000;
*/