-- 1. Write a query to find the name (first_name, last_name) and the salary of the employees who have a higher salary than the employee whose last_name= bull;.
select concat(first_name,' ',last_name), salary from employees where last_name != 'bull';
-- 2. Write a query to find the name (first_name, last_name) of all employees who works in the IT department.
select concat(first_name, ' ', last_name) from employees e join departments d on e.department_id = d.department_id where d.department_name = 'it';
-- 3. Write a query to find the name (first_name, last_name) of the employees who have a manager and worked in a USA based department.
SELECT first_name, last_name FROM employees 
WHERE manager_id in (select employee_id 
FROM employees WHERE department_id 
IN (SELECT department_id FROM departments WHERE location_id 
IN (select location_id from locations where country_id='US')));
-- 4. Write a query to find the name (first_name, last_name) of the employees who are managers.
select concat(a.first_name,' ', a.last_name) as name from employees a, employees b where a.employee_id in (b.manager_id) group by name;
-- 5. Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary.
select concat(first_name,' ', last_name), salary from employees where salary > (select avg(salary) from employees);
-- 6. Write a query to find the name (first_name, last_name), and salary of the employees whose salary is equal to the minimum salary for their job grade.
select concat(first_name,' ', last_name), salary from employees where salary = (select min_salary from jobs where employees.job_id = jobs.job_id);
-- 7. Write a query to find the name (first_name, last_name), and salary of the employees who earns more than the average salary and works in any of the IT departments.
select concat(first_name,' ', last_name), salary from employees where (employees.salary >  avg(employees.salary) and employees.department_id = (select department_id from departments where employees.department_id = departments.department_id and departments.department_name ='IT'));
-- 8. Write a query to find the name (first_name, last_name), and salary of the employees who earns more than the earning of Mr. Bell.
select concat(first_name,' ', last_name), salary from employees where salary > (select salary from employees where employees.last_name like '%bell%');
-- 9. Write a query to find the name (first_name, last_name), and salary of the employees who earn the same salary as the minimum salary for all departments.
select concat(first_name,' ', last_name), salary from employees e where salary = ( 
select min(salary) from employees);
-- 10. Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary of all departments.
select concat(first_name,' ', last_name), salary from employees e where salary > ( 
select avg(salary) from employees);
-- 11. Write a query to find the name (first_name, last_name) and salary of the employees who earn a salary that is higher than the salary of all the Shipping
-- Clerk (JOB_ID = &#39;SH_CLERK&#39;). Sort the results of the salary of the lowest to
-- highest.
select concat(first_name,' ', last_name), salary from employees e where salary > ( select max(salary) from employees where job_id ='SH_CLERK') order by salary;
-- 12. Write a query to find the name (first_name, last_name) of the employees who are not supervisors.
SELECT  concat(first_name,' ', last_name)
FROM employees b 
WHERE NOT EXISTS (SELECT 'X' FROM employees a WHERE a.manager_id = b.employee_id);
-- 13. Write a query to display the employee ID, first name, last name, and department names of all employees.
select e.employee_id, e.first_name, e.last_name, d.department_name  from employees e join departments d on e.department_id = d.department_id; 