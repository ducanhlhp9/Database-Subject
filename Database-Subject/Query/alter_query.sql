-- week2
-- question 1: Đổi tên bảng countries thành country_new
create table countries(
id int,
name varchar(20),
region varchar(20)
);
--
alter table countries rename to country_new;
-- question 2: Thêm cột region_id tới bảng locations
create table location(
id int,
name varchar(10)
);
alter table location add region_ID int;

-- question 3: Thêm cột ID vào bảng locations với điều kiện cột ID là cột đầu tiên của bảng.
alter table location drop column id;
alter table location add column id int first;

-- question 4: Thêm cột region_id đứng liền sau cột state_province của bảng locations.

alter table location drop column region_id;
alter table location add column state_province varchar(20);
alter table location add column region_id int after state_province;

-- question 5: Thay đổi kiểu dữ liệu của cột country_id thành integer trong bảng locations.
alter table location drop column id;
alter table location add column country_id varchar(10) first;
alter table location modify column country_id integer first;

-- question 6: Xóa cột city trong bảng locations
alter table location add column city varchar(10);
alter table location drop column city;

-- question 7: Đổi tên cột state_province thành cột state, giữa nguyên kiểu và kích thước của cột.
alter table location change state_province state varchar(10);

-- question 8: Thêm khóa chính cho cột location_id trong bảng location
ALTER TABLE location ADD CONSTRAINT MyPrimaryKey PRIMARY KEY (country_id);
-- question 9: Thêm khóa chính là cặp 2 cột (location_id, country_id) cho bảng locations
alter table location add column location_id int;
ALTER TABLE location DROP primary key;
ALTER TABLE location ADD CONSTRAINT MyPrimaryKey PRIMARY KEY (location_id, country_id );

-- question 10: Xóa khóa chính là cặp (location_id, country_id) đã tạo.
ALTER TABLE location DROP primary key;

-- question 11: Tạo khóa ngoại job_id cho bảng job_history mà tham chiếu tới job_id của bảng jobs.
create table jobs(
job_id int primary key,
job_title varchar(35) not null,
min_salary decimal(6,0) ,
max_salary decimal(6,0)
);
create table job_history(
	employee_id int,
    start_date date,
    end_date date,
    job_id int,
    department_id int
);
ALTER TABLE job_history ADD  foreign key(job_id) references jobs(job_id);
-- question 12: Tạo ràng buộc có tên là fk_job_id với job_id của bảng job_history tham chiếu tới job_id của bảng jobs.
ALTER TABLE job_history ADD CONSTRAINT fk_job_id FOREIGN KEY(job_id) REFERENCES jobs(job_id);

-- question 13: Xóa khóa ngoại fk_job_id trong bảng job_history đã tạo.
alter table job_history drop foreign key fk_job_id;
-- question 14: Thêm chỉ mục có tên indx_job_id trên thuộc tính job_id của bảng job_history.
alter table job_history add index index_job_id(job_id);
-- question 15: xoa chi muc
alter table job_history drop index index_job_id;





