{{ config(materialized='table') }}

select
    order_id,
    customer_id,
    first_name,
    status,
    amount_cents,
    ordered_at
from {{ ref('int_lab_orders_enriched') }}
