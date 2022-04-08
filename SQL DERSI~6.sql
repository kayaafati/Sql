select Name, count(order_id)
from customers c
join orders o on c.customer_id = o.customer_id
where o.status = 'Shipped' 
group by Name
having count(order_id) > 2
-- group by kullanýyorsak having kullanýrýz
order by 2 desc;