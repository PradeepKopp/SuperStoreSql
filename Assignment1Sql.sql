/*1- write a sql to get all the orders where customers name has "a" as second character 
and "d" as fourth character */

Select * from Orders
where customer_name like '_a%' and customer_name like '____d%';

---Total_Count 
Select COUNT(*) from Orders 
where customer_name like '_a%' and customer_name like '____d%';


---2- write a sql to get all the orders placed in the month of dec 2020

Select * from Orders
where order_date='2020-12-01';

---Total Count 
Select COUNT(*) from Orders
where order_date between  '2020-12-01' and  '2020-12-31';

/*3- write a query to get all the orders 
where ship_mode is neither in 'Standard Class' nor in 'First Class' 
and ship_date is after nov 2020*/

Select * from Orders
where ship_mode not in ('Standard Class', 'First Class') and ship_date >'2020-11-01';

Select COUNT(*) from Orders 
where ship_mode not in ('Standard Class', 'First Class') and ship_date >'2020-11-30';

/*4- write a query to get all the orders 
where customer name neither start with "A" and nor ends with "n" */

Select * from Orders
where customer_name not like 'A%n';

Select COUNT(*) from Orders
where customer_name not like 'A%n';

--5- write a query to get all the orders where profit is negative

Select * from Orders
where profit like '-%';

select COUNT(*) from Orders
where profit like '-%';

/*6- write a query to get all the orders 
where either quantity is less than 3 or profit is 0 */

Select * from Orders
where quantity <3 or profit= 0;

Select COUNT(*) from Orders
where quantity<3 or profit =0;

/*7- your manager handles the sales for South region 
and he wants you to create a report of all the orders in his region 
where some discount is provided to the customers*/

Select * from Orders
where region='South' and discount>0;

Select COUNT(*) from Orders
where region= 'South' and discount>0;

---8- write a query to find top 5 orders with highest sales in furniture category 

Select top 5 * from Orders
where category='Furniture' 
order by sales desc;

/*9- write a query to find all the records in technology and furniture category
for the orders placed in the year 2020 only */

Select * from Orders
where category in ('Furniture', 'Technology') 
and order_date between '2020-01-01' and '2020-12-31';


Select COUNT(*) from Orders
where category in ('Furniture', 'Technology')
and order_date between '2020-01-01' and '2020-12-31';
--1021

/*10-write a query to find all the orders where order date is in year 2020 
but ship date is in 2021*/

Select * from Orders 
where order_date between '2020-01-01' and '2020-12-31'
and ship_date between '2021-01-01' and '2021-12-31';

Select COUNT(*) from Orders 
where order_date between '2020-01-01' and '2020-12-31'
and ship_date between '2021-01-01' and '2021-12-31';
--33