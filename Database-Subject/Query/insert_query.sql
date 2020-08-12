-- question 1: 
create table countries(
country_id varchar(2),
country_name varchar(40),
region_id decimal(10,0)
);
insert into countries(country_id, country_name, region_id) values('1', 'Viet Nam', '84, 0');
-- question 2: Thêm một bản ghi với giá trị ở 2 cột (country_id và country_name) của bảng countries
insert into countries(country_id, country_name) values('2', 'Lao');
-- question 3: Tạo bản sao country_new của bảng countries với cấu trúc và toàn bộ dữ liệu của bảng countries
create table if not exists coutry_new like countries;
-- question 4: Thêm vào 1 bản ghi với trường region_id là NULL
insert into countries(country_id, country_name) values('3', 'cambodia');
-- question 5: Thêm vào 3 bản ghi trong cùng 1 truy vấn INSERT vào bảng countries
insert into countries(country_id, country_name, region_id) values('4', 'Thailand', '0, 0'),('5', 'Indonesia', '3, 0'),('6', 'china', '100, 0');

-- question 6:   	Thêm vào bảng countries tất cả các dòng từ bảng country_new
drop  table country_new;
create table country_new(
country_id varchar(10),
country_name varchar(40),
region_id decimal(10,0)
);
insert into country_new(country_id, country_name, region_id) values('C0001', 'India', '1001, 0'),('C0002', 'USA', '1007, 0'),('C0003', 'UK', '1003, 0');

INSERT INTO countries SELECT * From country_new;   
-- question 7: Tạo bảng countries và viết câu lệnh INSERT sao cho trường country_id là tự động tăng mà không cần phải đưa vào trong câu lệnh INSERT. 
create table countries(
country_id int auto_increment,
country_name varchar(40),
region_id decimal(10,0)
);
-- question 8: Tạo bảng countries và viết câu lệnh INSERT sao cho country_id có tính duy nhất trong bảng, trường country_name có giá trị mặc định là ‘N/A’ nếu không được chỉ định trong câu lệnh INSERT.
create table countries(
country_id int unique,
country_name varchar(40) default 'N/A',
region_id decimal(10,0)
);
-- question 9: Tạo bảng employees và viết câu lệnh INSERT sao cho cặp (department_id và manager_id) phải có ràng buộc phải tồn tại trong bảng departments.
create table departments(
	department_id int,
    manager_id int
);
create table employees(
	department_id int,
    manager_id int,
    foreign key(department_id, manager_id) references departments(department_id, manager_id)
);