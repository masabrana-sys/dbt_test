    select
        id as order_id,
        customer as customer_id,
        ordered_at, 
        store_id

    from {{ source('JAFFLE_SHOP_RAW', 'RAW_ORDERS') }}

