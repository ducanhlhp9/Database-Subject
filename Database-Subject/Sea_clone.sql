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



