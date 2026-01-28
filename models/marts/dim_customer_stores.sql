{{ config(materialized='table') }}

with orders as (
    select * from {{ ref('sgt_orders__jaffle_shop_raw') }}
),

stores as (
    select * from {{ ref('sgt_stores__jaffle_shop_raw') }}
),

store_sales as (
    select
        o.store_id,
        count(o.order_id) as number_of_orders
    from orders o
    group by o.store_id
    order by number_of_orders desc
    limit 10
),

final as (
    select
        s.store_name
    from store_sales ss
    join stores s on ss.store_id = s.store_id
)

select * from final