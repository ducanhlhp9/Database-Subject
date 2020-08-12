-- 1. Thay đổi giá trị cột email cho mọi bản ghi trong bảng employees về giá trị ‘not available’.
create table employees(
id int,
email varchar(10)
);
insert into employees(id, email) values (1, "a@gmail.com"),(2, "b@gmail.com"),(3, "c@gmail.com");
update employees 
set email = "not available"
;
-- 2. Thay đổi giá trị cột email thành ‘not available’ và cột commission_pct thành 0.10 cho tất cả bản ghi trong bảng employees.
alter table employees add column commission_pct decimal (10,2);
update employees set commission_pct = 0.10;
-- 3. Thay đổi giá trị cột email thành ‘not available’ và cột commission_pct thành 0.10 cho tất cả bản ghi trong bảng employees mà thỏa mãn điều kiện department_id là 110.
alter table employees add column department_id int;
update employees set department_id = 110 where id = 1;
update employees set department_id = 120 where id = 2;
update employees set department_id = 130 where id = 3;
-- 4. Thay đổi giá trị cột email thành ‘not available’ cho bản ghi trong bảng employees mà department_id là 80 và commission_pct <= 0.20%.
insert into employees(department_id) values (80);
insert into employees(department_id,commission_pct) values (80, 0.4),(80, 0.1);
update employees set email ="not available" where department_id = 80 and commission_pct < 0.20 ;

-- 5. Thay đổi cột email thành ‘not available” cho nhân viên trong bảng employees mà làm việc ở phòng ban ‘Accounting’.
alter table employees add column room varchar(20) default 'Accounting';
update employees set email = 'not available' where room = 'Accounting';

-- 6. Cập nhật salary cho nhân viên có ID là 105 lên 8000 nếu mức lương trước đó là ít hơn 5000.
alter table employees add column salary int default '4000';
insert into employees(id, salary) values(105,6000);
update employees set salary =8000 where id = 105 and salary < 7000;

-- 7. Cập nhật job_id thành ‘SH_CLERK’ cho nhân viên có ID là 118 nếu nhân viên đó thuộc department id là 30 và job_id hiện tại không bắt đầu với ‘SH’.
alter table employees add column job_id varchar(50) default 'IT' first;
insert into  employees(job_id,id,department_id) values('123',118, 30);
update employees set job_id = 'SH_CLERK' where id = 118 and department_id =30 and job_id not like '%SH';

-- 8. Viết một câu truy vấn duy nhất tăng mức lương của những nhân viên thuộc department có id là 40, 90 và 110 với điều kiện tăng 25% cho department id là 40m 15% cho department id là 90 và 10% cho department id là 110. Các phòng ban còn lại giữ nguyên.
insert into employees(department_id) values(40),(90),(110);
update employees set salary = case 
when  department_id = 40 then salary + salary *0.25
when  department_id = 90 then salary + salary*0.15
when  department_id = 110 then salary+ salary *0.10
end;
-- 9. Tăng mức lương minimum và maximum của nhân viên mà job id là “PU_CLERK” lên thêm 2000 đơn vị đồng thời lương salary của các nhân viên này tăng 20% và commision_pct tăng thêm 0.10 đơn vị.
create table jobs(
job_id varchar(50),
job_title varchar(35),
max_salary int,
min_salary int,
foreign key(job_id) references employees(job_id)
);
-- => update 2 bang 

