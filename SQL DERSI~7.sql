select department_ýd,department_name,location from departments
where department_ýd  =10;

select count(*) from employees; -- kaç tane kayýt var ?
select * from employees where salary > 2500 and salary < 3500;
select * from employees where salary between 2500 and 3500;
select * from employees where job = 'SALESMAN' and salary > 1500;
select * from employees where (job = 'CLERK' or job = 'MANAGER') and salary > 2500;
select distinct  job from employees;

select * from employees where job in ('SALESMAN','MANAGER','CLERK');

select * from employees where employee_name like 'A%';

select * from employees where employee_name like '%AR%';

select lower(employee_name) from employees; --Upper/lower

select * from employees where lower(employee_name) like lower('m%');

select * from employees where upper(employee_name) like upper('%AR%');

select * from employees where commission is not null;

select min(salary) from employees;--max, avg

select * from employees where salary >= (select avg(salary)from employees);

select * from employees;

