alter table products
modify price decimal(4,2) not null; 

select*from products;
insert into products
value(104,"cookie", null); 