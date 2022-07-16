use Github1;
select * from customer_transaction;
select * from customer;

-- 1.	How to Sort any column data in ascending and descending order. (Single Column)
select * from customer
order by state_code asc;

select * from customer
order by state_code desc;

-- 2.	How to Sort any column data in ascending and descending order. (Multi Column)
select * from customer
order by state_code asc, customer_id desc;


select * from customer_account;

select account_type, avg(balance_amount)
from customer_account
group by account_type;
-- ii 
select account_type, avg(balance_amount) as avg_balance
from customer_account
group by account_type;

select account_type, account_status, avg(balance_amount) as avg_bal
from customer_account
group by account_type, account_status;

Select*from customer_account;
select account_type, avg(balance_amount) as avg_balance, min(balance_amount) as min_balance
from customer_account
group by account_type;

select account_type, account_status, avg(balance_amount) as avg_bal
from customer_account
group by account_type, account_status
order by avg_bal;

-- 4.	How To calculate Min Max Value.

Select*from customer_account;
select account_type, min(balance_amount) as min_balance
from customer_account
group by account_type;

select account_type, max(balance_amount) as max_balance from customer_account group by account_type;

-- 5.	Calculate Difference Between Max and min.
select account_type, max(balance_amount) - min(balance_amount) as range_amount
from customer_account
group by account_type;

-- 6. Write a Query to find out first four letters from last name: (Table = customer)
select*from customer;
select LEFT(customer_name, 4)from customer;


-- 7.Write a Query to extract info of all the customer there state code is CA.
select customer_name, State_code from customer where State_Code ='CA';

-- 8.Write a Query to extract info of all the employees working in HR department and their DOB is of post 1979 (Use Table 1)														

select EmpFname from table1 where Department in('HR');

select EmpFname , DOB from table1 where Department ='HR' and DOB <1997;

-- 9.Write a Query to create New Table with the Name Table 3 with the same structure as Table 1
-- 9.	Write a Query to create New Table with the Name New table name with the same structure as Existing Table ., 
 
 rename table table1 to table3;
 select* from table3;
 
 -- 10. I need only structure not the data
 truncate table table3;
 select* from table3;



