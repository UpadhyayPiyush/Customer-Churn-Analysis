## Use churndb;

## Q1: How many total customers are in the dataset?
-- select count(*) as total_customers
-- from customer_data;

## How many customers have churned vs stayed vs newly joined?
-- select Customer_Status, count(*) as total_customer
-- from customer_data
-- group by Customer_Status
-- order by total_customer desc

## What is the average age of customers across churn categories?
-- select Churn_Category, avg(age) as avg_age 
-- from customer_data
-- group by Churn_Category

## Which states have the highest number of churned customers?
-- select state, count(*) as total_Churned
-- from customer_data
-- group by State
-- order by total_Churned desc

## What is the total revenue generated from churned vs retained customers?
-- select customer_status, round(sum(Total_Revenue),2) as total_Revenue
-- from customer_data
-- group by Customer_Status

## Which payment method is most commonly used by churned customers?
-- select payment_method, count(*) as total_number
-- from customer_data
-- where Customer_Status='Churned'
-- group by Payment_Method
-- order by total_number desc 
-- limit 1;

## What is the average monthly charge for churned vs retained customers?
-- SELECT 
-- Customer_Status,
-- COUNT(*) AS Total_Customers,
-- ROUND(AVG(Monthly_Charge), 2) AS Avg_Monthly_Charge
-- FROM 
-- customer_data
-- WHERE 
-- Customer_Status IN ('Churned', 'Stayed')
-- GROUP BY 
-- Customer_Status;

## How does churn vary based on internet type (Fiber Optic, DSL, etc.)?
-- SELECT Internet_Type, Customer_Status,
-- COUNT(*) AS Total_Customers
-- FROM customer_data
-- WHERE Customer_Status = 'Churned'
-- GROUP BY Internet_Type, Customer_Status
-- ORDER BY Total_Customers DESC;

## How many churned customers had unlimited data plans?
-- select count(*) as Total_Churned_Customers 
-- from customer_data
-- where Customer_Status="Churned" and Unlimited_Data="Yes"

## What is the churn rate by contract type (Month-to-Month, One Year, etc.)?
-- select Contract,
-- round(sum(case when Customer_Status='Churned' then 1 else 0 end)* 100 / count(*),2) as Churn_Rate , count(*) as Total_Customers
-- from customer_data
-- group by Contract
-- order by Churn_rate desc








