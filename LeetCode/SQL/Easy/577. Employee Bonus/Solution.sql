select 
    emp.name,
    bo.bonus
from Employee emp
left join bonus bo
on emp.empID = bo.empID
where bo.bonus < 1000 or bo.bonus is null