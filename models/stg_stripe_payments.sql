Select
ID,
"orderID" as order_id,
"paymentMethod" as payment_method,
amount/100 as amount,
created
from raw.stripe.payment