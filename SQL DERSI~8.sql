select name, sum( quantity*unit_price)
from customers
join orders using(customer_id)
join order_items using(order_id)
where orders.status = 'Shipped'
group by name
order by 2 desc -- etl

