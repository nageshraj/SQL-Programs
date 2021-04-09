CREATE SCHEMA `wolken_day_two` ;

CREATE TABLE `wolken_day_two`.`ecommerce` (
  `ecommerce_id` INT NOT NULL,
  `ecommerce_name` VARCHAR(45) NULL,
  `ecommerce_startDate` DATE NULL,
  `ecommerce_noOfItems` INT NULL,
  `ecommerce_type` VARCHAR(45) NULL,
  PRIMARY KEY (`ecommerce_id`));

insert into `wolken_day_two`.`ecommerce`(ecommerce_id,ecommerce_name,ecommerce_startDate,ecommerce_noOfItems,ecommerce_type) values(1,"flipkart","2010-2-28",12345,"all");
insert into `wolken_day_two`.`ecommerce`(ecommerce_id,ecommerce_name,ecommerce_startDate,ecommerce_noOfItems,ecommerce_type) values(2,"amazon","2008-6-14",65838,"all");
insert into `wolken_day_two`.`ecommerce`(ecommerce_id,ecommerce_name,ecommerce_startDate,ecommerce_noOfItems,ecommerce_type) values(3,"snapdeal","2013-2-28",1234,"electronics");
insert into `wolken_day_two`.`ecommerce`(ecommerce_id,ecommerce_name,ecommerce_startDate,ecommerce_noOfItems,ecommerce_type) values(4,"paytmMall","2015-2-21",22345,"electronics");

select * from `wolken_day_two`.`ecommerce`;

select ecommerce_name,ecommerce_noOfItems from `wolken_day_two`.`ecommerce`;

select ecommerce_startDate from `wolken_day_two`.`ecommerce` where ecommerce_name="amazon";

update `wolken_day_two`.`ecommerce` set ecommerce_noOfItems=4321 where ecommerce_id=3;

select count(ecommerce_noOfItems) as noi,ecommerce_name from `wolken_day_two`.`ecommerce` group by ecommerce_noOfItems order by noi;

select * from `wolken_day_two`.`ecommerce` order by ecommerce_noOfItems desc;

select sum(ecommerce_noOfItems),avg(ecommerce_noOfItems),max(ecommerce_noOfItems),min(ecommerce_noOfItems) from `wolken_day_two`.`ecommerce`;


CREATE TABLE `wolken_day_two`.`product` (
  `product_id` INT NOT NULL,
  `prodcut_name` VARCHAR(45) NULL,
  `product_price` INT NULL,
  `product_ecommerceId` INT NULL,
  PRIMARY KEY (`product_id`));

alter table `wolken_day_two`.`product`
add constraint foreignConstraint
foreign key (product_ecommerceId) references `wolken_day_two`.`ecommerce`(ecommerce_id);

insert into `wolken_day_two`.`product`(product_id,prodcut_name,product_price,product_ecommerceId) values(10,"Gaming mouse",1000,1);
insert into `wolken_day_two`.`product`(product_id,prodcut_name,product_price,product_ecommerceId) values(11,"Monitor",30000,3);
insert into `wolken_day_two`.`product`(product_id,prodcut_name,product_price,product_ecommerceId) values(12,"keyboard",5000,2);

select * from `wolken_day_two`.`product`;

select * from `wolken_day_two`.`ecommerce` left join `wolken_day_two`.`product` on `wolken_day_two`.`ecommerce`.ecommerce_id= `wolken_day_two`.`product`.product_ecommerceId;

select * from `wolken_day_two`.`ecommerce` right join `wolken_day_two`.`product` on `wolken_day_two`.`ecommerce`.ecommerce_id= `wolken_day_two`.`product`.product_ecommerceId;

select * from `wolken_day_two`.`ecommerce` left outer join `wolken_day_two`.`product` on `wolken_day_two`.`ecommerce`.ecommerce_id= `wolken_day_two`.`product`.product_ecommerceId;

select * from `wolken_day_two`.`ecommerce` right outer join `wolken_day_two`.`product` on `wolken_day_two`.`ecommerce`.ecommerce_id= `wolken_day_two`.`product`.product_ecommerceId;

select * from `wolken_day_two`.`ecommerce` full join `wolken_day_two`.`product`;





