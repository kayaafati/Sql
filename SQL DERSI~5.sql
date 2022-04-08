select ADSOYAD, count(order_id) from (
select first_name || ' ' || last_name ADSOYAD,order_id
from orders o left join employees e on o.salesman_id = e.employee_id
where o.status = 'Shipped'
)
group by ADSOYAD
order by 2 desc