select 
    today.id
from Weather today
join Weather yesterday
on today.recordDate = yesterday.recordDate + interval '1 Day'
where today.temperature > yesterday.temperature