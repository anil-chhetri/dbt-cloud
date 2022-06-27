with payment as (
    select orderid, amount 
    from {{ ref('stg_payments') }}
)

select o.order_id, o.customer_id, sum(case when status='success' then p.amount end) as totalAmount
from {{ ref('stg_orders') }} as o 
    inner join payment as p on p.orderid = o.order_id
group by o.order_id, o.customer_id