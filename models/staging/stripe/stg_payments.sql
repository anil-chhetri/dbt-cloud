select 
    id as payment_id,
    orderid,
    paymentmethod,
    STATUS, 
    amount
from raw.stripe.payment