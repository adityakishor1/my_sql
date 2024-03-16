create database mydatabase;
use mydatabase;
create table transections(
transection_id int primary key,
amount decimal(5,2)
);
select amount
from transections
where transection_id=1000;
