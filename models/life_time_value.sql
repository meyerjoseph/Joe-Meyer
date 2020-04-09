select
ID,
"orderID" as order_id,
created,
sum(amount/100) as life_time_value
from raw.stripe.payment
Group by 2, 1, 3