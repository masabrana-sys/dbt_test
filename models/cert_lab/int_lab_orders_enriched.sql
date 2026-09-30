-- Exercise 6: change 'view' to 'ephemeral' here
{{ config(materialized='view') }}

select
    o.order_id,
    o.customer_id,
    c.first_name,
    o.status,
    o.amount_cents,
    o.amount_cents >= 5000 as is_large_order,
    o.ordered_at
from {{ ref('stg_lab_orders') }} o
left join {{ ref('stg_lab_customers') }} c on o.customer_id = c.customer_id
