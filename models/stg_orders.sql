with payments as (

select * from {{ ref('stg_stripe_payments') }}
)

select
    id as order_id,
    user_id as customer_id,
    order_date,
    status
from raw.jaffle_shop.orders as orders

--group up by payments table