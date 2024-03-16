create table  transections(
transection_id int primary key auto_increment,
amount decimal(5,2)
);


/*insert data :*/

select*from transections;
insert into transections(amount)
value(5.99);

/*set increment*/

alter table transections
auto_increment=1000
delete from transections;
insert into transections(amount)
values(8.99);