{{ config(event_time='ordered_at') }}

select
    cast(order_id as integer) as order_id,
    cast(customer_id as integer) as customer_id,
    status,
    cast(amount_cents as integer) as amount_cents,
    cast(ordered_at as timestamp) as ordered_at
from {{ source('lab', 'lab_raw_orders') }}
