select * from customers join orders using(Customer_id)
where orders.status = 'Shipped'