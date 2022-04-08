select product_name, sum(quantity*unit_price), count(order_id)
from orders
join order_items using(order_id)
join products using(product_id)
where orders.status = 'Shipped'
group by product_name
order by 2 desc