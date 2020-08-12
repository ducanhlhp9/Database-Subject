-- 1. Write a query to get the job_id and related employee's id.
SELECT job_id, GROUP_CONCAT(employee_id, ' ')  'Employees ID' 
FROM employees GROUP BY job_id;
-- 2. Write a query to update the portion of the phone_number in the employees
-- table, within the phone number the substring '124'; will be replaced by '999';.
update employees set phone_number = replace(phone_number, '124', '999') where phone_number like '%124%';
-- 3. Write a query to get the details of the employees where the length of the first name greater than or equal to 8.
select *from employees where length(first_name) > 8;
-- 4. Write a query to display leading zeros before maximum and minimum salary.
SELECT job_id,  LPAD( max_salary, 7, '0') ' Max Salary',
LPAD( min_salary, 7, '0') ' Min Salary' 
FROM jobs;
-- 5. Write a query to append '@example.com' to email field.
update  employees set email = concat(email,'@example.com');
-- 6. Write a query to get the employee id, first name and hire month.
select employee_id, first_name, month(hire_date) from employees;
-- 7. Write a query to get the employee id, email id (discard the last three characters).
SELECT employee_id, REVERSE(SUBSTR(REVERSE(email), 4)) as Email_ID  from employees;
-- 8. Write a query to find all employees where first names are in upper case.
SELECT * FROM employees 
WHERE first_name = BINARY UPPER(first_name);
-- 9. Write a query to extract the last 4 character of phone numbers.
SELECT RIGHT(phone_number, 4) as 'Ph.No.' FROM employees;
-- 10. Write a query to get the last word of the street address.
