select 
    id as payment_id,
    orderid,
    paymentmethod,
    STATUS, 
    amount
from {{ source('stripe', 'payment') }}