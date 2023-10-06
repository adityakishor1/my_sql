use sql_workbench;
create table products(
product_id int,
product_name varchar(25) unique,
price decimal(4,2)
);
insert into products
values(100,"Oil",3.33),
(101,"Fries",5),
(102,"Soda",10),
(103,"ice cream",50);

select*from products;