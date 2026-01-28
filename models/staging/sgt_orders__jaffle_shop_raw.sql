    select
        id as order_id,
        customer as customer_id,
        ordered_at, 
        store_id

    from jaffle_shop_raw.raw_orders

