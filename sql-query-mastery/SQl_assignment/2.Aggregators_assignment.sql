/*
select min(employees.salary)
from employees;

select max(employees.salary)
from employees;

select avg(employees.salary)
from employees
*/

# 2) Display the department number, total salary payout and total commission payout for each department.
/*
select departments.department_id, departments.department_name, employees.salary
from employees
join departments
on employees.department_id=departments.department_id
*/

# 3) Display the department number and number of employees in each department.
/*
select employees.department_id, count(*)as num_ofEMP
from employees
group by department_id
*/

# 4) Display the department number and total salary of employees in each department.
/*
select employees.department_id, sum(employees.salary)
from employees
group by department_id
*/

# 5) Display the employee's name who doesn't ear a commission. Order the result set without using the column name

# 6) Display the employees name, department id and commission. If an Employee doesn't earn the commission, then display as 'No commission' Name the columns appropriately

# 7) Display the employee's name, salary and commission multiplied by 2. If an Employee doesn't earn the commission, then display as 'No commission! Name the columns appropriately
# 8) Display the employee's name, department id who have the first name same as another employee in the same department.
/*
select employees.first_name, employees.department_id
from employees
where first_name= (select employees.first_name
from employees
where first_name);
*/

# 9) Display the sum of salaries of the employees working under each Manager.
/*
select sum(employees.salary), manager_id
from employees 
where manager_id=manager_id
group by manager_id;
*/
# 10) Select the Managers name, the count of employees working under and the department ID of the manager.
# 11) Select the employee name, department id, and the salary. Group the result with the manager name and the employee last name should have second letter "a!"
# 12) Display the average of sum of the salaries and group the result with the department id. Order the result with the department id.
/* 
select avg(employees.salary), employees.department_id
from employees 
group by department_id
order by department_id
*/
# 13) Select the maximum salary of each department along with the department id
/*
select max(employees.salary) as max_salary, employees.department_id
from employees
group by department_id
*/

# 14) Display the commission, if not null display 10% of salary, if null display a default value 1.
