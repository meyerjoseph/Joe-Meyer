with payments as (

select * from {{ ref('stg_stripe_payments') }}
),

orders as (
select * from {{ ref('stg_orders') }}
),

customers as (
    select * from {{ ref('stg_customers')}}
)

select
orders.order_id,
orders.customer_id,
customers.first_name,
customers.last_name,
payments.amount
from orders
left join payments on orders.customer_id = payments.order_id
left join customers on orders.customer_id = customers.customer_id



