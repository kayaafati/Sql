select first_name, sum(quantity*unit_price) 
from orders o left join employees e on o.salesman_id = e.employee_id
join order_items i on i.order_id = o.order_id
where o.status = 'Shipped'
group by first_name
order by 2 desc