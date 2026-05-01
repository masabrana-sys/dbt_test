-- Workaround: must specify version explicitly when producer model is versioned
select *
from {{ ref('jaffle_shop_producer', 'fct_orders_public', version=1) }}
