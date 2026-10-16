--1. Total orders

select count(*)as Total_Orders from E_Orders;



--2. Total sales

select sum(Net_Amount)as Total_Sales from E_Orders;



--3. Top product

select Product,sum(Net_Amount)as Sales from E_Orders
group by product
order by Sales desc;



--4. Top cities

select City,sum(Net_Amount)as Sales from E_Orders
group by city
order by sales desc;


--5. Monthly sales

select month,sum(Net_Amount)as Sales from E_Orders
group by month
order by sales desc;


--6. Highest-profit product

select Product,sum(Profit)as Profit from E_Orders
group by Product
order by Profit desc;


--7. Payment mode distribution

select Payment_Mode,count(Payment_Mode)as Total_Orders from E_Orders
group by Payment_Mode
order by Total_Orders;

select Payment_Mode,sum(Net_Amount)as Sales from E_Orders
group by Payment_Mode
order by Sales desc;


--8. Cancelled orders

select count(Order_Status)as Cancelled_Orders from E_Orders
where Order_Status='Cancelled';

select * from E_Orders
where Order_Status='Cancelled';