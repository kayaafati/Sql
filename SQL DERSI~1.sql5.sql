select * from(
select ad_soyad, count(*) SIP_SAYISI from (
select first_name || ' ' || last_name AD_SOYAD, order_id
from employees  join orders on employees.employee_id = orders.salesman_id 
where orders.status = 'Shipped'
)
group by ad_soyad

order by 2 desc
)
where SIP_SAYISI >= 3