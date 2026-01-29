
select
        id as customer_id,
        name
    from {{ source('JAFFLE_SHOP_RAW', 'raw_customers') }}

