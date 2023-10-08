insert into transactions
value(1002,2.58),
(1003,5.25),
(1004,6.25);
select*from transactions;

select amount
from transactions
where transaction_id=1003;