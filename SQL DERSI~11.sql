select name, first_name, sum(quantity*unit_price)
from customers 
join orders using(customer_id)
join order_items using (order_id)
join employees on employees.employee_id = orders.salesman_id
where orders.status = 'Shipped'
group by name, first_name
order by 1,3 desc