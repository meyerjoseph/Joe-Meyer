select
ID,
"orderID" as order_id,
"paymentMethod" as payment_method,
amount/100 as Amount,
created
from raw.stripe.payment


