select job, sum(salary)"grup toplam maaþý", count(*)"çalýþan sayýsý"
from employees
group by job -- selectten sonra ne varsa group by'dan sonra o gelmek zorunda
order by 2 desc;

select * from departments join employees
on departments.department_id = employees.department_id;

select department_name "bölüm ismi", sum(salary)"departman toplam maaþý"
from departments join employees
on departments.department_id = employees.department_id
group by department_name
order by 2 desc;