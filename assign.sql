Create table Hotels
(
UG_id varchar (12) not null,
U_name varchar(100) not null,
U_country varchar(40) not null,
Street varchar (100),
City varchar (40),

Constraint PK_Hotels Primary Key (UG_id)
);

Create Table Travelers
(
UG_id varchar(12) not null,
U_name varchar(100) not null,
U_country varchar(40),
Trav_mail varchar(150) not null,
Trav_add varchar (200),
Visit_location varchar (50),

Constraint PK_Travelers Primary Key (UG_id)
);

Create table Facility
(
Fac_id varchar (12) not null,
Fac_title varchar (50),
Facility_descr varchar (1000),

Constraint PK_Facility Primary Key (Fac_id)
);

Create table Payment
(
Pay_id varchar (12) not null,
Pay_date varchar (20) not null,
Pay_time varchar (20),
Pay_type varchar (10),
Pay_price int (10) ,
Status varchar (20),
Resv_id varchar (20),

Constraint PK_Payment Primary Key (Pay_id),
Constraint FK_Payment Foreign Key (Resv_id) References Reservation (Resv_id)
);

Create table Reservation
(
Resv_id varchar (12) not null,
Duration varchar (20),
No_guest varchar (10),
Room_no varchar (10),
UG_id varchar (10),


Constraint PK_Reservation Primary Key (Resv_id),
Constraint FK1_Reservation Foreign Key (Room_no) References Room (Room_no),
Constraint FK2_Reservation Foreign Key (UG_id) References Travelers (UG_id)
);

Create table Room
(
Room_no varchar (12) not null,
Category varchar (30) not null,
Room_desc varchar (1000),
Room_price varchar (30) not null,
Conditions varchar (100),
No_avail_room varchar (30),
UG_id varchar (10),

Constraint PK_Room Primary Key (Room_no),
Constraint FK_Room Foreign Key (UG_id) References Hotels (UG_id)
);

Create table Report
(
Rep_id varchar (12) not null,
Rep_desti varchar (30) not null,
Rep_date varchar (15),
Rep_descr varchar (1000),
UG_id varchar (10),

Constraint PK_Report Primary Key (Rep_id),
Constraint FK_Report Foreign Key (UG_id) References Travelers (UG_id)
);

Create table HotelFacility
(
UG_id varchar (10),
Fac_id varchar (10),

Constraint FK1_HotelFacility Foreign Key (UG_id) References Hotels (UG_id),
Constraint FK2_HotelFacility Foreign Key (Fac_id) References Facility (Fac_id)
);

Insert Into Hotels Values ('H010','Restaurant Camavinga','Angola','Johnson street','Luanda');
Insert Into Hotels Values ('H011','Rodrygo Hotels','Brazil','Ann Street','Rio');
Insert Into Hotels Values ('H012','Tchouameni Hotels','France','David street','Paris');
Insert Into Hotels Values ('H013','Rudiger Villas','Germany','Downtown street','Berlin');
Insert Into Hotels Values ('H014','Vazquez Villas','Spain','Bernabeu Street','Madrid');
Insert Into Hotels Values ('H015','Asensio Hotels','Spain','Bernabeu street','Madrid');
Insert Into Hotels Values ('H016','Smith walls','Australia','The main street','Perth');
Insert Into Hotels Values ('H017','Blue Diamond','Srilanka','Kandy road','Kandy');
Insert Into Hotels Values ('H018','Restaurant Alhilal','Saudi Arebia','Hilal street','Madina');
Insert Into Hotels Values ('H019','Hilton Hotels','Saudi Arebia','Haram street','Mecca');
Insert Into Hotels Values ('H020','Tokyo towers','Japan','Thiago street','Tokyo');
Insert Into Hotels Values ('H021','Mani HOtels','India','Adaiyar street','Chennai');
Insert Into Hotels Values ('H022','Elsa doors','Czech Republic','Back street','Prague');
Insert Into Hotels Values ('H023','Eden Gardens','United Kingdom','St Thomas street','Ireland');
Insert Into Hotels Values ('H024','Eric Eder','Hawaii','Beach road','Honolulu');
Insert Into Hotels Values ('H025','Rony Hotels','Italy','Sand road','Venice');

Select * from Hotels;

Insert Into Travelers Values ('T001','Cristiano Ronaldo','Portugal','cris@gmail.com','Lisbon Portugal','France');
Insert Into Travelers Values ('T002','Vinicius Jose','Brazil','vini@gmail.com','Rio, Brazil','Czech Republic');
Insert Into Travelers Values ('T003','Luka Modric','Croatia','luka@gmail.com','Zagreb, Croatia','Italy');
Insert Into Travelers Values ('T004','Sergio Ramos','Spain','serg@gmail.com','Madrid, Spain','United Kingdom');
Insert Into Travelers Values ('T005','Federico Valverde','Uruguay','valv@gmail.com','Rosario,Uruguay','Hawaii');
Insert Into Travelers Values ('T006','Eder Militao','Brazil','mili@gmail.com','Rio, Brazil','Italy');
Insert Into Travelers Values ('T007','Toni Kroos','Germany','toni@gamil.com','Berlin, Germany','Italy');
Insert Into Travelers Values ('T008','Karim Benzema','France','benz@gmail.com','Paris, France','United Kingdom');
Insert Into Travelers Values ('T009','David Alaba','Austria','alab@gmail.com','Luanda, Austria','Czech Republic');
Insert Into Travelers Values ('T026','Marcelo Vieira','Brazil','marc@gmail.com','Rio, Brazil','Czech Republic');
Insert Into Travelers Values ('T027','Rodrygo Tate','Brazil','rodri@gmail.com','Rio, Brazil','Czech Republic');
Insert Into Travelers Values ('T028','Carlos Casemiro','Brazil','case@gmail.com','Rio, Brazil','Hawaii');
Insert Into Travelers Values ('T029','Danilo Luiz','Brazil','dani@gmail.com','Rio, Brazil','Hawaii');
Insert Into Travelers Values ('T030','Alvaro Morata','Spain','alva@gmail.com','Madrid, Spain','Hawaii');
Insert Into Travelers Values ('T031','Roman Alarcon','Spain','roman@gmail.com','Madrid, Spain','Hawaii');
Insert Into Travelers Values ('T032','Isco','Spain','isco@gmail.com','Madrid, Spain','Hawaii');

Select * from Travelers;

Insert Into Facility Values ('F001','Open Spaces','Have gardens');
Insert Into Facility Values ('F002','Fitness facility','Have varieties of gym equipments');
Insert Into Facility Values ('F003','Meeting room','50 person meeting room availble');
Insert Into Facility Values ('F004','Spa facility','mrning and evening spa facilities');
Insert Into Facility Values ('F005','Swimming pool','Pool for adult and children particularly');
Insert Into Facility Values ('F006','Food & Beverages','All kind of food for meal time');
Insert Into Facility Values ('F007','Room service','Cleaning');
Insert Into Facility Values ('F008','In room dining','Can get the food to the room');
Insert Into Facility Values ('F009','Bar facility','Outdoor and indoor bar');
Insert Into Facility Values ('F010','BBQ area','Out door BBQ area');
Insert Into Facility Values ('F011','Car park','100+ parking slots');
Insert Into Facility Values ('F012','Children park','Park with amazing places');
Insert Into Facility Values ('F013','Out door restaurant','Restaurant with dine');
Insert Into Facility Values ('F014','Disabled room','Room for disabled');
Insert Into Facility Values ('F015','Computer room','100+ computers');
Insert Into Facility Values ('F016','Theatre','150+ seats theatre');

Select * from Facility;

Insert Into Payment Values ('P001','02-07-2021','12:43','CARD',16000.00 ,'COMPLETED','R001');
Insert Into Payment Values ('P002','10-08-2021','01:00','CARD',15000.00 ,'COMPLETED','R002');
Insert Into Payment Values ('P003','07-01-2018','10:00','CASH',10000.00 ,'COMPLETED','R003');
Insert Into Payment Values ('P004','01-08-2022','00:00','CARD',20000.00 ,'COMPLETED','R004');
Insert Into Payment Values ('P005','10-05-2023','12:00','PENDING',17000.00 ,'PENDING','R005');
Insert Into Payment Values ('P006','17-01-2023','01:00','CARD',25000.00 ,'COMPLETED','R006');
Insert Into Payment Values ('P007','22-08-2022','03:00','CASH',15000.00 ,'COMPLETED','R007');
Insert Into Payment Values ('P008','25-02-2023','02:00','CARD',17000.00 ,'COMPLETED','R008');
Insert Into Payment Values ('P009','09-10-2022','07:00','CASH',18000.00 ,'COMPLETED','R009');
Insert Into Payment Values ('P010','23-10-2022','08:00','CARD',50000.00 ,'COMPLETED','R010');
Insert Into Payment Values ('P011','03-12-2022','10:00','CASH',16000.00 ,'COMPLETED','R011');
Insert Into Payment Values ('P012','07-01-2023','14:00','PENDING',20000.00 ,'PENDING','R012');
Insert Into Payment Values ('P013','20-02-2023','15:00','PENDING',15000.00 ,'PENDING','R013');
Insert Into Payment Values ('P014','10-02-2023','07:00','PENDING',13000.00 ,'PENDING','R014');
Insert Into Payment Values ('P015','20-02-2023','08:00','PENDING',14500.00 ,'PENDING','R015');
Insert Into Payment Values ('P016','08-01-2023','09:00','CARD', 25000.00,'COMPLETED','R016');

Select * from Payment;

Insert Into Reservation Values ('R001','48 hours','5','RN001','T001');
Insert Into Reservation Values ('R002','48 hours','3','RN002','T001');
Insert Into Reservation Values ('R003','72 hours','2','RN003','T001');
Insert Into Reservation Values ('R004','48 hours','6','RN004','T005');
Insert Into Reservation Values ('R005','48 hours','3','RN005','T007');
Insert Into Reservation Values ('R006','72 hours','4','RN006','T009');
Insert Into Reservation Values ('R007','72 hours','6','RN007','T003');
Insert Into Reservation Values ('R008','96 hours','4','RN008','T026');
Insert Into Reservation Values ('R009','120 hours','5','RN009','T032');
Insert Into Reservation Values ('R010','168 hours','2','RN010','T029');
Insert Into Reservation Values ('R011','144 hours','4','RN011','T028');
Insert Into Reservation Values ('R012','72 hours','3','RN012','T002');
Insert Into Reservation Values ('R013','48 hours','3','RN013','T004');
Insert Into Reservation Values ('R014','24 hours','5','RN014','T006');
Insert Into Reservation Values ('R015','48 hours','1','RN015','T008');
Insert Into Reservation Values ('R016','72 hours','1','RN016','T030');

Select * from Reservation;

Insert Into Room Values ('RN001','Family','Has AC and 4Beds with 2washrooms','3000per night','1000+ for every adiitional hours','30rooms available','H012');
Insert Into Room Values ('RN002','Family','Has AC and 4Beds with 2washrooms','3000per night','1000+ for every adiitional hours','29rooms available','H012');
Insert Into Room Values ('RN003','Couple','Has AC and 1Bed with 1washroom','2000per night','800+ for every adiitional hours','30rooms available','H012');
Insert Into Room Values ('RN004','Family','Has AC and 4Beds with 2washrooms','3000per night','1000+ for every adiitional hours','28rooms available','H024');
Insert Into Room Values ('RN005','Family','Has AC and 4Beds with 2washrooms','3000per night','1000+ for every adiitional hours','27rooms available','H025');
Insert Into Room Values ('RN006','Family','Has AC and 4Beds with 2washrooms','3000per night','1000+ for every adiitional hours','26rooms available','H022');
Insert Into Room Values ('RN007','Family','Has AC and 4Beds with 2washrooms','3000per night','1000+ for every adiitional hours','25rooms available','H025');
Insert Into Room Values ('RN008','Family','Has AC and 4Beds with 2washrooms','3000per night','1000+ for every adiitional hours','24rooms available','H022');
Insert Into Room Values ('RN009','Family','Has AC and 4Beds with 2washrooms','3000per night','1000+ for every adiitional hours','23rooms available','H024');
Insert Into Room Values ('RN010','Couple','Has AC and 1Bed with 1washroom','2000per night','800+ for every adiitional hours','29rooms available','H024');
Insert Into Room Values ('RN011','Family','Has AC and 4Beds with 2washrooms','3000per night','1000+ for every adiitional hours','22rooms available','H024');
Insert Into Room Values ('RN012','Family','Has AC and 4Beds with 2washrooms','3000per night','1000+ for every adiitional hours','23rooms available','H022');
Insert Into Room Values ('RN013','Family','Has AC and 4Beds with 2washrooms','3000per night','1000+ for every adiitional hours','19rooms available','H023');
Insert Into Room Values ('RN014','Family','Has AC and 4Beds with 2washrooms','3000per night','1000+ for every adiitional hours','18rooms available','H025');
Insert Into Room Values ('RN015','Single','Has AC and 1Bed with 1washroom','1000per night','500+ for every adiitional hours','30rooms available','H023');
Insert Into Room Values ('RN016','Single','Has AC and 1Bed with 1washroom','1000per night','500+ for every adiitional hours','29rooms available','H024');

Select * from Room;

Insert Into Report Values ('Rp001','Italy','01-02-2023','It was the most beautiful place i have ever visited','T003');
Insert Into Report Values ('Rp002','Hawaii','11-03-2023','Such a nice place','T005');
Insert Into Report Values ('Rp003','Hawaii','21-04-2023','Adorable','T028');
Insert Into Report Values ('Rp004','Czech Republic','01-05-2023','Breathtaking','T002');
Insert Into Report Values ('Rp005','United Kingdom','21-02-2023','Wonderful place','T004');
Insert Into Report Values ('Rp006','Italy','21-01-2023','Worth visiting','T006');
Insert Into Report Values ('Rp007','Italy','21-12-2022','Could not enjoy well','T007');
Insert Into Report Values ('Rp008','France','11-08-2022','It is the most beautiful place i have ever visited','T001');
Insert Into Report Values ('Rp009','Czech Republic','31-10-2022','Hats off for the hospitality','T009');
Insert Into Report Values ('Rp010','Czech Republic','15-01-2023','Love this palce','T026');
Insert Into Report Values ('Rp011','Hawaii','20-11-2022','Will visit again','T029');
Insert Into Report Values ('Rp012','Hawaii','25-12-2022','Best place for beach lovers','T030');
Insert Into Report Values ('Rp013','United Kingdom','01-08-2022','Back with unforgettable memories','T008');
Insert Into Report Values ('Rp014','United Kingdom','24-03-2023','More than what you see in the internet','T008');
Insert Into Report Values ('Rp015','Italy','23-04-2023','Visit Italy and dont forget vinice','T007');
Insert Into Report Values ('Rp016','Hawaii','28-01-2023','Best palce ever to exist','T031');

Select * from Report;

Insert Into HotelFacility Values ('H012','F001');
Insert Into HotelFacility Values ('H022','F002');
Insert Into HotelFacility Values ('H023','F003');
Insert Into HotelFacility Values ('H024','F004');
Insert Into HotelFacility Values ('H025','F005');
Insert Into HotelFacility Values ('H012','F006');
Insert Into HotelFacility Values ('H012','F007');
Insert Into HotelFacility Values ('H012','F008');
Insert Into HotelFacility Values ('H022','F009');
Insert Into HotelFacility Values ('H023','F010');
Insert Into HotelFacility Values ('H024','F011');
Insert Into HotelFacility Values ('H025','F012');
Insert Into HotelFacility Values ('H022','F013');
Insert Into HotelFacility Values ('H022','F014');
Insert Into HotelFacility Values ('H023','F015');
Insert Into HotelFacility Values ('H024','F016');

Select * from HotelFacility;

--Queries

--01. Travelers of a particular location
Select* 
From Travelers
Where U_country = 'Brazil' ;

--02. Sum of transactions received within 07-01-2018 to 10-05-2023
Select SUM(Pay_price) 
From Payment;

--03. List of hotels and its room availability
select UG_id, Category,No_avail_room
from Room;

--04. Find all the hotels in Hawaii
Select* 
From Hotels
Where U_country = 'Hawaii' ;

--05. Find the traveler id and name of all the employees who are from spain
Select UG_id,U_name 
From Travelers 
Where U_country= 'Spain';


--06. Find the traveler id and name of all the employees who are going to Hawaii and Italy
Select UG_id,U_name,Visit_location
From Travelers 
Where Visit_location In('Hawaii','Italy');

--07. Find the traveler's name and id who reserved hotel for 3 days
select UG_id,U_name
from Travelers
where UG_id in (
       select UG_id 
	   from Reservation
       where Duration='72 hours');
	   
--08. Find the traveler's name and id who visited Hawaii from Spain
Select UG_id,U_name,U_country,Visit_location
from Travelers
where UG_id in(
      select UG_id 
	  from Travelers
      where U_country='Spain' and Visit_location='Hawaii');

--09. Find the name and id of traveler's who visited Hawaii and had more than 4 guests
select UG_id, U_name
from Travelers
where UG_id in (
     select UG_id from Reservation
     where No_guest>4)
     and Visit_location= (
          select U_country
          from Hotels
          where U_country='Hawaii');
		  
