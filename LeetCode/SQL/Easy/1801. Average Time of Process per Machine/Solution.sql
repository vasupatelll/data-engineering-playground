select 
    start_time.machine_id,
    round(avg((end_time.timestamp - start_time.timestamp)::NUMERIC), 3) as processing_time
from Activity start_time
join Activity end_time
on start_time.machine_id = end_time.machine_id and start_time.process_id = end_time.process_id
where start_time.activity_type = 'start' and end_time.activity_type ='end'

group by 1
