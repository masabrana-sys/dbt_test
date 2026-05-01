-- Cross-project ref to jaffle_shop_producer's versioned public model
-- Reproduces ticket/120828: ref breaks when versioning is added to the producer model
select *
from {{ ref('jaffle_shop_producer', 'fct_orders_public') }}
