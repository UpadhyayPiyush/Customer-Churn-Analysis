Create view View_Churndata as
select * from customer_data
where Customer_Status IN ('Churned', 'Stayed');

Create view view_JoinData as
select * from customer_data 
where customer_status = 'Joined';