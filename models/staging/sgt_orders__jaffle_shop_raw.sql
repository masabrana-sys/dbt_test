    select
        id as order_id,
        customer as customer_id,
        ordered_at, 
        store_id,
        order_status

    from {{ source('JAFFLE_SHOP_RAW', 'RAW_ORDERS') }}

