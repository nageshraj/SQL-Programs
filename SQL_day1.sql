insert into hotel_details(hotel_id,hotel_name,hotel_location,hotel_noOfEmployees,hotel_rent) values(1,"Priyadarshini","shivaji",10,25000);
insert into hotel_details(hotel_id,hotel_name,hotel_location,hotel_noOfEmployees,hotel_rent) values(2,"Krishna Sagar","RR Nagar",12,23000);
insert into hotel_details(hotel_id,hotel_name,hotel_location,hotel_noOfEmployees,hotel_rent) values(3,"Empire","malleshwaram",30,53000);
insert into hotel_details(hotel_id,hotel_name,hotel_location,hotel_noOfEmployees,hotel_rent) values(4,"Imperial","RR nagar",12,23000);

-- insert into hotel_details(hotel_id,hotel_name,hotel_location,hotel_noOfEmployees,hotel_rent) values(1,"Priyadarshini","shivaji",10,25000),(2,"Krishna Sagar","RR Nagar",12,23000);
select hotel_id,hotel_name,hotel_rent from hotel_details;
-- select distinct * from hotel_details

select * from hotel_details where hotel_location="RR Nagar";

update hotel_details set hotel_noOfEmployees = 15,hotel_rent= 34000 where hotel_id=2; 

select hd.hotel_id as hi from hotel_details as hd;

update hotel_details set hotel_rent = 25000 where hotel_id=2;

select count(hotel_rent) as hr,hotel_name from hotel_details group by hotel_rent order by hr;

-- Employee details
insert into hotel_employee_details(employee_id,employee_name,employee_salary,employee_age,hotel_id) values(1,"Raj","7000",22,1);
insert into hotel_employee_details(employee_id,employee_name,employee_salary,employee_age,hotel_id) values(2,"Ravi","6000",22,4);
insert into hotel_employee_details(employee_id,employee_name,employee_salary,employee_age,hotel_id) values(3,"Ramesh","6300",25,3);
insert into hotel_employee_details(employee_id,employee_name,employee_salary,employee_age,hotel_id) values(4,"rajesh","6100",23,2);

select * from hotel_employee_details where employee_age= 22;

select * from hotel_employee_details order by employee_age desc;

delete from hotel_employee_details where employee_id = 2;

select sum(employee_salary) from hotel_employee_details;

select avg(employee_salary) from hotel_employee_details;

select max(employee_salary) from hotel_employee_details;

select min(employee_salary) from hotel_employee_details;

select * from hotel_employee_details group by employee_age;

alter table hotel_employee_details
add constraint hed_constraint
foreign key (hotel_id) references hotel_details(hotel_id);

-- state details

create table capitals_state_details(
Id int primary key not null,
state_name varchar(45),
capital varchar(50),
zipcode int
);

insert into capitals_state_details(id,state_name,capital,zipcode) values(1,"Karnataka","Bengaluru",560003);
insert into capitals_state_details(id,state_name,capital,zipcode) values(2,"Gujurat","GandhiNagar",566559);
insert into capitals_state_details(id,state_name,capital,zipcode) values(3,"Maharashtra","Mumbai",563453);
insert into capitals_state_details(id,state_name,capital,zipcode) values(4,"TamilNadu","Chennai",569751);

create table hotel(
hotelid int primary key not null,
hotelname varchar(30),
id int,
constraint id foreign key(id) references capitals_state_details(id)
);


insert into hotel(hotelid,hotelname,Id) values(1,"paakashala",1);

select * from hotel left join capitals_state_details on hotel.id=capitals_state_details.id;

select * from hotel full join capitals_state_details;

select * from hotel right join capitals_state_details on hotel.id=capitals_state_details.id;

select * from hotel left outer join capitals_state_details on hotel.id=capitals_state_details.id;

select * from hotel right outer join capitals_state_details on hotel.id=capitals_state_details.id;


-- vice versa

select * from capitals_state_details as csd left join capitals_state_details on csd.id=capitals_state_details.id;



