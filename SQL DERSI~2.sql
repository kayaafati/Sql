select * 
from departments right join employees -- left, full inner join==join
on departments.department_id = employees.department_id