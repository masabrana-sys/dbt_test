select 
    id as store_id, 
    name
 from {{ source('JAFFLE_SHOP_RAW', 'RAW_STORES') }}