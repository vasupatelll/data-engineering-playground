select 
    visitor.customer_id,
    count(visitor.visit_id) AS count_no_trans
from 
    Visits visitor
left join Transactions trans
on visitor.visit_id = trans.visit_id
where trans.transaction_id is null 

group by 1