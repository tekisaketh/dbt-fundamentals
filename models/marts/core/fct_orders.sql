with payments as (

    select * from {{ ref('stg_payments') }}
)

select 
    payments.order_id,
    payments.customer_id,
    payments.amount

from payments