-- 1. Đưa ra số lượng các job có trong bảng nhân viên employees.
select count(distinct job_id) from employees;
-- 2. Đưa ra tổng lương phải trả cho các nhân viên trong bảng employees.
select sum(salary) from employees;
-- 3. Đưa ra mức lương thấp nhất trong bảng employees.
select salary from employees order by salary limit 1;
-- 4. Đưa ra mức lương cao nhất của một nhân viên là Programmer.
select salary from employees join jobs on employees.job_id = jobs.job_id where jobs.job_title = 'programmer'  order by employees.salary DESC limit 1; 
select max_salary from jobs where job_title = 'Programmer';
-- 5. Đưa ra mức lương trung bình và số lượng nhân viên làm việc cho department có ID là 90.
select avg(employees.salary), count(employees.employee_id) 
from employees 
join departments on employees.department_id = departments.department_id 
where departments.department_id = 90;  
-- 6. Đưa ra mức lương cao nhất, thấp nhất, tổng, và trung bình của tất cả các nhân viên.
select min(salary) as min, max(salary) as max, sum(salary) as sum, avg(salary) as average from employees;
-- 7. Đưa ra danh sách job id và số lượng nhân viên có job id tương ứng.
select job_id, count(*) from employees group by job_id;
-- 8. Đưa ra khoảng cách lương giữa mức lương cao nhất và thấp nhất.
select (max(salary) - min(salary)) as distance from employees;
-- 9. Tìm manager ID và mức lương mà là mức lương thấp nhất trả cho vị trí manager.
select employees.employee_id , min(salary) from employees join jobs on employees.job_id = jobs.job_id where jobs.job_title like '%manager';
-- 10. Đưa ra danh sách department ID và tổng lương ứng với từng department đó.
select department_id, sum(salary) from employees group by department_id;
-- 11. Đưa ra mức lương trung bình cho mỗi job ID loại trừ nghề Programmer.
select employees.job_id, avg(employees.salary) from employees join jobs on employees.job_id = jobs.job_id where jobs.job_title != 'programmer' group by employees.job_id;
-- 12. Đưa ra tổng lương, lương cao nhất, thấp nhất, trung bình của mỗi job ID mà thuộc về department có ID là 90.
select 
sum(e.salary), 
max(e.salary), 
min(e.salary), 
avg(e.salary) 
from 
employees e 
join
departments on e.department_id= departments.department_id 
where departments.department_id = 90;
-- 13. Đưa ra job ID, mà mức lương cao nhất của nhân viên có vị trí này lớn hơn hoặc bằng $4000.
SELECT job_id, MAX(salary) 
FROM employees 
GROUP BY job_id 
HAVING MAX(salary) >=4000;
-- 14. Đưa ra mức lương trung bình của tất cả các department mà có ít hơn 10 nhân viên.
SELECT department_id, AVG(salary), COUNT(*) 
FROM employees 
GROUP BY department_id
HAVING COUNT(*) > 10;