select first_name ||' ' || last_name ADI
from employees;

-- || string (concatenation= birle�tirme demek) sadece string ifadelerde kullan�l�r

select first_name, LENGTH(first_name)
from employees;

select substr(first_name,1,1) ||'.'|| last_name  ISIMLIK
from employees;

select first_name from employees where instr(upper (first_name),'T') > 0;-- ba� harfini de dikkate al�r

select * from employees;

select substr(seviye1,1,instr(SEVIYE1, '.')-1) AD,
           substr(seviye1,instr(SEVIYE1, '.')+1,10) SOYAD
from (
select substr(email,1,(instr(email, '@')-1)) SEVIYE1 from employees
);--parse

select count(*) from employees;

select first_name, count(order_id) "Sipari� Belgesi Say�s�"
from orders o left join employees e on o.salesman_id = e.employee_id
where o.status = 'Shipped'
group by first_name
order by 2 desc