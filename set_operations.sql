create table satis00 as select * from sh.sales where to_char(TIME_ID, 'YY') = 00 -- 2000
create table satis99 as select * from sh.sales where to_char(TIME_ID, 'YY') = 99 -- 1999

-- Cust ID bazında her iki yılda da alışveriş yapan müşteriler
select Cust_ID from satis00
intersect
select Cust_ID from satis99;

-- Cust_ID ve Prod_ID bazında her iki yılda da alışveriş yapan müşteriler
select Cust_ID, Prod_ID from satis00
intersect
select Cust_ID, Prod_ID from satis99;

-- 2000 senesinde olup 1999 senesinde olmayan kullanıcılar
select Cust_ID from satis00
minus
select Cust_ID from satis99;


select employee_id, department_id from hr.employees 
intersect 
select employee_id, department_id from hr.job_history;

select employee_id, department_id from hr.employees 
minus 
select employee_id, department_id from hr.job_history;

select employee_id, department_id from hr.employees 
union all
select employee_id, department_id from hr.job_history;

-- Grouping sets 
select prod_id, cust_id, CHANNEL_ID, sum(AMOUNT_SOLD), count(QUANTITY_SOLD)  
from sh.sales 
group by grouping sets  
((prod_id, cust_id), (CHANNEL_ID), (prod_id, cust_id, CHANNEL_ID))