select *
from {{ ref('jaffle_shop_producer', 'fct_orders_public') }}
