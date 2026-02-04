select 
    customer_id, 
    ordered_at, 
    {{ dbt_utils.generate_surrogate_key(['customer_id', 'ordered_at']) }} as primary_key,
    count(*) as c
from {{ ref("sgt_orders__jaffle_shop_raw") }}
group by 1, 2
