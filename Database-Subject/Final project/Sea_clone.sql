create database Project_Sea;
use Project_Sea;
create table SEAFOOD(
Seafood_id int,
Seafood_name varchar(50),
Catches int,
Economic_value int,
primary key(Seafood_id, Seafood_name)
);
create table TOURISM(
Tourism_id int ,
Tourism_name varchar(50),
Economic_value_id int,
Number_of_people int,
primary key(Tourism_id, Tourism_name)
);
create table MINERAL(
Mineral_id int ,
Mineral_name varchar(50),
Reserves int,
primary key(Mineral_id, Mineral_name)
);
create table REGION(
Region_id int primary key,
Region_name varchar(50)
);
create table COUNTRY(
Country_id int primary key,
Country_name varchar(45),
Region_id int,
foreign key(Region_id) references REGION(Region_id)
);
create table LOCATION(
Location_id int,
Country_id int,
Ocean varchar(50),
Longitude decimal(5,2),
Latitude decimal(5,2),
primary key(Location_id,Country_id),
foreign key(Country_id) references COUNTRY(Country_id)
);
create table SEA(
Sea_id int primary key,
sea_name varchar(50) not null,
Location_id int,
Square int not null,
Deep int,
Tourism_id int ,
Seafood_id int ,
Mineral_id int,
foreign key(Tourism_id) references TOURISM(Tourism_id),
foreign key(Seafood_id) references SEAFOOD(Seafood_id),
foreign key(Mineral_id) references MINERAL(Mineral_id),
foreign key(Location_id) references LOCATION(Location_id)
);


insert into SEAFOOD values
(1,'Pufferfish', 3658000, '4300'),
(1,'Marine Fish', 3105000, '6200'),
(2,'Lobster', 1974000, '4300'),
(2,'Flying Fish', 1426000, '3600'),
(3,'Tuna', 4314000, '7600'),
(3,'Squid', 2469000, '4700'),
(3,'Grass Carp', 3548000, '4800'),
(4,'King Crab', 2053000, '5600'),
(4,'Pollock', 2467000, '3400'),
(5,'Swordfish', 3572000, '5700'),
(5,'Alligators', 2974000, '4600'),
(5,'Tarpon', 1973000, '2600'),
(6,'Shellfish', 869000, '5000'),
(6,'Crab', 1352000, '4600'),
(7,'Bivalves', 4053000, '5700'),
(7,'Shrimp', 3671000, '3700'),
(8,'Starfish', 1436000, '3800'),
(8,'Sea Urchins', 1057000, '3100'),
(9,'Whale', 3056000, '4900'),
(9,'Eel', 3964000, '3800'),
(10,'Manta', 2053000, '3500'),
(10,'Dugongs', 2058000, '2800');


insert into TOURISM values
(1,'Cruise Ships', '2100', 31967000),
(1,'Scenic spots', '448', 27536000),
(2,'Kayaking', '115', 19789000),
(2,'Ecotourism', '414', 25978000),
(3,'Cruise Ships', '1900', 28746000),
(3,'Underwater Diving', '240', 15976000),
(3,'Sport Fishing', '501', 23468000),
(4,'Cruise Ships', '600', 10145000),
(4,'Sport Fishing', '153', 6645000),
(5,'Underwater Diving', '285', 19685000),
(5,'Sport Fishing', '305', 13857000),
(6,'Cruise Ships', '300', 5846000),
(7,'Surfer', '678', 12537000),
(7,'Underwater Diving', '255', 16523000),
(7,'Parasailing', '512', 13457000),
(8,'Sport Fishing', '240', 11625000),
(9,'Ecotourism', '299', 18467000),
(9,'Scenic spots', '398', 24583000),
(10,'Kayaking', '194', 9537000),
(10,'Surfer', '521', 10483000);

insert into MINERAL values
(1,'Petroleum',357000),
(1,'Natural gas',27000),
(2,'Petroleum',478000),
(2,'Natural gas',23000),
(3,'Petroleum',20000),
(3,'Natural gas',45038),
(4,'Petroleum',59000),
(4,'Natural gas',400000),
(5,'Petroleum',13000),
(5,'Natural gas',145000),
(6,'Petroleum',40000),
(6,'Natural gas',136000),
(7,'Petroleum',9000),
(7,'Natural gas',17000),
(8,'Petroleum',173000),
(8,'Natural gas',143000),
(9,'Petroleum',41000),
(9,'Natural gas',124000),
(10,'Petroleum',4500),
(10,'Natural gas',43000);


insert into REGION values
(1,'Asia'),
(2,'North America'),
(3,'South America'),
(4,'Europe'),
(5,'Africa'),
(6,'Australia'),
(7,'Antarctica');

insert into COUNTRY values 
( 1, 'Spain',4),
( 2, 'France',4),
( 3, 'Italy', 4),
( 4, 'Turkey', 1),
( 5, 'Egype', 5),
( 6, 'Libya', 5),
( 7, 'Algeria', 5),
( 8, 'Mexico', 2),
( 9, 'Cuba', 2),
(10, 'Haiti', 2),
(11, 'Panama', 3),
(12, 'Colombia', 3),
(13, 'Venezuela', 3),
(14, 'Vietnam', 1),
(15, 'China', 1),
(16, 'Philippines', 1),
(17, 'Malaysia', 1),
(18, 'Brunei', 1),
(19, 'Indonesia', 1),
(20, 'Russia(As)', 1),
(21, 'Alaska', 2),
(22, 'USA', 2),
(23, 'Japan', 1),
(24, 'Korea', 1),
(25, 'Canada', 2),
(26, 'India', 1),
(27, 'Myanmar', 1);


insert into LOCATION values
(1,1,'Atlantic Ocean',18.04,34.55),
(1,2,'Atlantic Ocean',18.04,34.55),
(1,3,'Atlantic Ocean',18.04,34.55),
(1,4,'Atlantic Ocean',18.04,34.55),
(1,5,'Atlantic Ocean',18.04,34.55),
(1,6,'Atlantic Ocean',18.04,34.55),
(1,7,'Atlantic Ocean',18.04,34.55),
(2,8,'Atlantic Ocean',-76.15,15.32),
(2,9,'Atlantic Ocean',-76.15,15.32),
(2,10,'Atlantic Ocean',-76.15,15.32),
(2,11,'Atlantic Ocean',-76.15,15.32),
(2,12,'Atlantic Ocean',-76.15,15.32),
(2,13,'Atlantic Ocean',-76.15,15.32),
(3,14,'Pacific Ocean',104.28,1.37),
(3,15,'Pacific Ocean',104.28,1.37),
(3,16,'Pacific Ocean',104.28,1.37),
(3,17,'Pacific Ocean',104.28,1.37),
(3,18,'Pacific Ocean',104.28,1.37),
(3,19,'Pacific Ocean',104.28,1.37),
(4,20,'Pacific Ocean',178,58.3),
(4,21,'Pacific Ocean',178,58.3),
(5,8,'Atlantic Ocean',-89.9,25.68),
(5,22,'Atlantic Ocean',-89.9,25.68),
(5,9,'Atlantic Ocean',-89.9,25.68),
(6,20,'Pacific Ocean',54.3,148.55),
(6,24,'Pacific Ocean',54.3,148.55),
(7,15,'Pacific Ocean',125,30),
(7,25,'Pacific Ocean',125,30),
(7,24,'Pacific Ocean',125,30),
(8,26,'Arctic Ocean',-85,60),
(9,24,'Pacific Ocean',134.56,39.57),
(9,25,'Pacific Ocean',134.56,39.57),
(9,20,'Pacific Ocean',134.56,39.57),
(10,26,'Indian Ocean',95.2,5.53),
(10,27,'Indian Ocean',95.2,5.53),
(10,19,'Indian Ocean',95.2,5.53);


insert into SEA values
(1,'Mediterranean Sea',1, 1144800, 1429,1,1,1),
(2,'Caribbean Sea',2, 1049500, 8685,2,2,2),
(3,'The South China Sea',3, 895400, 1652,3,3,3),
(4,'Bering Sea',4, 884900, 1547,4,4,4),
(5,'The Gulf of Mexico',5, 615000, 1486,5,5,5),
(6,'The Sea of Okhotsk',6, 613800, 838,6,6,6),
(7,'The East China Sea',7, 482300, 188,7,7,7),
(8,'Hudson Bay',8, 475800, 128,8,8,8),
(9,'The Sea of Japan',9, 389100, 1350,9,9,9),
(10,'Andaman Sea',10, 308000, 870,10,10,10);
-- question
-- 1.	Thay đổi bảng SEAFOOD thêm 1 thuộc tính Country_id
alter table SEAFOOD
add 
	Country_id int,
add constraint Exploited
	foreign key (Country_id) references COUNTRY(Country_id);

-- 2.	Update thêm id của Viet Nam vào bảng SEAFOOD ở 'The South China Sea' có sản lượng đánh bắt ‘Tuna’ lớn nhất
update SEAFOOD
set 
	Country_id = (select Country_id from COUNTRY
	where Country_name = 'Vietnam')
where 
	Seafood_id = (select Seafood_id from SEA
where 
	sea_name = 'The South China Sea')
and 
	Seafood_name like '%Tuna%';

-- 3.	Cập nhật giá trị kinh tế du lịch của biển ‘Hudson Bay’ thành 500 nếu giá trị kinh tế du lịch của biển đó thấp hơn 500
update 
TOURISM 
Set
Economic_value = 500 
where 
Economic_value<500 
and 
Tourism_id = (select Tourism_id from SEA where Sea_name = "Hudson Bay");


-- 4.	Cập nhật tên khoáng sản thành “Xang” của biển Hudson Bay nếu tên khoáng sản hiện tại không bắt đầu với “Na”

update 
MINERAL 
Set
Mineral_name = "Xang" 
where 
Mineral_id = (select Mineral_id from SEA where Sea_name="Hudson Bay") 
and not
Mineral_name like "Na%";



	
-- 5.	Cập nhật giá trị kinh tế (Economic_value) của những thủy hải sản (SEAFOOD) có id lần lượt là 1, 6, 9 lên thêm lần lượt là 10%, 20%, 30%
update 
SEAFOOD 
set 
Economic_value = case Seafood_id  
when 1 then Economic_value + Economic_value*.1 
when 6 then Economic_value + Economic_value*.2 
when 9 then Economic_value + Economic_value*.3 
else
Economic_value 
end;



 	

-- 6.	Đưa ra Đại dương có biển sâu nhất
select 
	LOCATION.Ocean,SEA.sea_name, SEA.Deep 
from 
	LOCATION 
join 
	SEA on SEA.Location_id = LOCATION.Location_id 
order by Deep DESC 
limit 1;

-- 7.	Đưa ra tên biển đánh bắt nhiều “Grass Carp” nhất
Select 
	SEA.sea_name, SEAFOOD.Catches
From 
	SEA join SEAFOOD
on 
	SEA.Seafood_id = SEAFOOD.Seafood_id
where 
	SEAFOOD.Seafood_name = '%Grass Carp%';
-- 8.	Đưa ra biển có dịch vụ tàu du lịch có doanh thu lớn nhất 
select 
	Sea_name
from 
	SEA s
where 
	Tourism_id = (select Tourism_id from TOURISM t where Tourism_name like '%Cruise Ships%' order by cast(t.Economic_value as int) desc limit 1);
-- 9.	Đưa ra tên châu lục có nhiều quốc gia gần biển nhất
select 
	region_name 
from 
	REGION r
join COUNTRY c on (r.Region_id = c.Region_id)
group by 
	c.Region_id
order by 
	count(*) limit 1;



-- 10.	Liệt kê các biển tiếp giáp Việt Nam
select 
	sea_name from SEA s
join 
	LOCATION l on (s.Location_id = l.Location_id)
join 
	COUNTRY c on (c.Country_id = l.Country_id)
where 
	Country_name = 'Vietnam';

-- 11.	Kể tên 2 biển ở Đại Tây Dương có trữ lượng khí tự nhiên lớn nhất
select sea_name 
from 
	SEA s
join 
	LOCATION l on (s.Location_id = l.Location_id)
join 
	MINERAL m on (s.Mineral_id = m.Mineral_id)
where 
	l.Ocean like '%Atlantic%'
and 
	m.Mineral_name like '%Natural gas%'
group by l.Location_id
order by m.Reserves limit 2;

-- 12.	Liệt kê các biển ở Thái Bình Dương mà không tiếp giáp Trung Quốc
select 
	distinct sea_name from SEA s
join 
	LOCATION l on (s.Location_id = l.Location_id)
where 
	l.Ocean like '%Pacific%'
and l.Location_id 
not in (select l.Location_id from LOCATION l
	join COUNTRY c on (l.Country_id = c.Country_id)
	where Country_name like '%China%');



-- 13.	Liệt kê các biển nằm giữa chí tuyến Bắc và vòng Cực Bắc
select 
	distinct sea_name from SEA s
join 
	LOCATION l on (s.Location_id = l.Location_id)
where 
	l.Latitude between 23 and 66;



-- 14.	Liệt kê các biển tiếp giáp nhiều hơn 5 nước
select 
	s.sea_name, count(l.Country_id) as Countries
from 
	SEA s
join 
	LOCATION l on (s.Location_id = l.Location_id)
group by 
	l.Location_id
having count(l.Location_id) >= 5;



-- 15.	Đưa ra ID, Tên, độ sâu, châu lục của các biển có độ sâu lớn hơn 1000m và có nước tiếp giáp nằm ở châu Á

select 
distinct S.Sea_id, S.Sea_name, S.Deep, R.Region_name 
from 
SEA S 
join LOCATION L on (S.Location_id = L.Location_id) 
join COUNTRY C on (L.Country_id = C.Country_id) 
join REGION R on (C.Region_id = R.Region_id)
where 
R.Region_name = "Asia" and S.Deep >1000 
group by S.Sea_id;



-- 16.	Đưa ra ID, tên biển, Châu lục, Sản lượng đánh bắt thủy hải sản của biển có nước tiếp giáp nằm ở châu Á, mà có sản lượng thủy hải sản là lớn nhất
select 
distinct S.Sea_id, S.Sea_name, SF.Catches 
from 
SEA S 
join SEAFOOD SF on (S.Seafood_id = SF.Seafood_id) 
join LOCATION L on (S.Location_id = L.Location_id) 
join COUNTRY C on (L.Country_id = C.Country_id) 
join REGION R on (C.Region_id = R.Region_id) 
where 
R.Region_name = "Asia" 
having 
	SF.Catches = (select max(SF1.Catches) from SEAFOOD SF1) ;





-- 17.	Đưa ra ID, Tên, Diện tích của biển có diện tích lớn thứ 3

Select 
	distinct S1.Sea_id, S1.Sea_name, S1.Square 
from 
	SEA S1 
where 3 = (select count(distinct S2.Square) 
from
	SEA S2 
where (S2.Square >= S1.Square)) 
order by 
	S1.Square desc;



-- 18.	Đưa ra thông tin biển mà chữ cái thứ 2 không phải là chữ “e”

	select * from SEA 
	where sea_name not in (select Sea_name from SEA where instr(Sea_name, 'e') =2);
-- 19.	Đưa ra ID, Tên biển, Các nước tiếp giáp, và tổng sản lượn của các biển.
select 
	distinct S.Sea_id, S.Sea_name, group_concat(distinct C.Country_name, " ") as 	Country, sum(distinct Reserves) 
from SEA S 
join 
	MINERAL M on (S.Mineral_id = M.Mineral_id) 
join 
	LOCATION L on (S.Location_id = L.Location_id) 
join 
	COUNTRY C on ( L.Country_id = C.Country_id) 
group by S.Sea_id;


-- 20.	Liệt kê các biển và trữ lượng dầu mỏ (Nhiều- Trung bình – ít)
select s.sea_name,
	(case when m.Reserves > 300000 then 'Dau mo nhieu' when m.Reserves > 100000 then 'Dau mo trung binh' when m.Reserves > 000000 then 'Dau mo it' end ) as Resources
from 
	SEA s
join 
	MINERAL m on (s.Mineral_id = m.Mineral_id)
where 
	m.Mineral_name like '%Petroleum%';



-- 21.	Lấy ra tên biển tiếp giáp nhiều quốc gia nhất
Select s.sea_name, count(l.Country_id) as Countries
from SEA s
join 
	LOCATION l on (s.Location_id = l.Location_id)
group by l.Location_id
having count(l.Location_id) >= all
	(select count(Location_id) from LOCATION group by Location_id);

-- 22.	 Liệt ra tên các nước tiếp giáp với ‘The South China Sea’
select 
	Country_name from COUNTRY c
join 
	LOCATION l on (c.Country_id = l.Country_id)
join 
	SEA s on (l.Location_id = s.Location_id)
where 
	s.sea_name like '%The South China Sea%';




-- 23.	Lập ma trận tọa độ tương đối của các biển

select s.sea_name,l.latitude,
(case when l.Longitude > -180 and l.Longitude < -90 then '*' else ' 'end) as '90-',
(case when l.Longitude > -90 and l.Longitude < 00 then '*' else ' ' end) as '0-',
(case when l.Longitude > 00 and l.Longitude < 90 then '*' else ' ' end) as '0+',
(case when l.Longitude > 90 then '*' else ' 'end) as '90+'
from SEA s 
join 
	LOCATION l on (s.Location_id = l.Location_id)
group by l.Location_id
order by l.Latitude desc;





-- 24.	Đưa ra tổng giá trị kinh tế ngành du lịch của các biển thuộc "Pacific Ocean"

Select 
	distinct S.Sea_id, S.Sea_name, sum(distinct T.Economic_value) 
from 
	SEA S join TOURISM T on (S.Tourism_id = T.Tourism_id) 
join 
	LOCATION L on (S.Location_id=L.Location_id)
where L.Location_id 
in 
	(select L1.Location_id from LOCATION L1 where L1.Ocean like "%Pacific Ocean%")
group by S.Sea_id ;



-- 25.	 Đưa ra biển tiếp giáp nhiều hơn 5 quốc gia và có sản lượng đánh bắt hải sản là lớn nhất
select 
	s.sea_name, sum(distinct Catches) as Total
from SEA s
join 
	LOCATION l on (s.Location_id = l.Location_id)
join 
	SEAFOOD sf on (s.Seafood_id = sf.Seafood_id)
group by l.Location_id
having count(l.Location_id) >= 5
order by sum(distinct Catches) desc limit 1;



-- 26.	Biển "Mediterranean Sea" tiếp giáp với nhiều quốc gia ở khu vực nào nhất

select Region_name from REGION r 
join COUNTRY c 
on (r.Region_id = c.Region_id)
join LOCATION l
on (c.Country_id = l.Country_id)
where l.Location_id = (select Location_id from SEA
where sea_name like '%Mediterranean%')
group by c.Region_id
order by count(distinct l.Country_id) desc limit 1;

-- 27.	Đưa ra tổng “Natural gas” của các biển trong “Atlantic Ocean”

select L.Ocean, sum(distinct M.Reserves) as "Atlantic Ocean's Reserves of Natural Gas" from SEA S join MINERAL M on (S.Mineral_id = M.Mineral_id) join LOCATION L on (S.Location_id = L.Location_id) where M.Mineral_name = "Natural gas" and L.Ocean = "Atlantic Ocean";
-- 28.	Khu vực Europe có những biển nào

select S.Sea_id, S.Sea_name, R.Region_name from SEA S join LOCATION L on (S.Location_id = L.Location_id) join COUNTRY C on (C.Country_id = L.Country_id) join REGION R on ( R.Region_id = C.Region_id) where R.Region_id = (select R1.Region_id from REGION R1 where R1.Region_name like "%Europe%");

-- 29.	Đưa ra tổng giá trị kinh tế hải sản và du lịch của tất cả các
	
	Select distinct S.Sea_id, S.Sea_name, sum(distinct T.Economic_value) as 	"Tourism_value", sum(distinct SF.Economic_value) as "Seafood_value", sum(distinct 	T.Economic_value) + sum(distinct SF.Economic_value) as "Total of Economic value" 	from SEA S join TOURISM T on (S.Tourism_id = T.Tourism_id) join SEAFOOD SF on 	(S.Seafood_id = SF.Seafood_id) group by S.Sea_id;
-- 30.	Xóa bản ghi của bảng SEA mà có  tiếp giáp với Trung Quốc và có trữ lượng khí đốt là lớn nhất.
delete from SEA
where sea_name = 
(select sea_name from (select * from SEA) s
join LOCATION l on (s.Location_id = l.Location_id)
join MINERAL m on (s.Mineral_id = m.Mineral_id)
join COUNTRY c on (l.Country_id = c.Country_id)
where c.Country_name like '%China%'
and m.Mineral_name like '%Natural gas%'
order by m.Reserves desc limit 1);


