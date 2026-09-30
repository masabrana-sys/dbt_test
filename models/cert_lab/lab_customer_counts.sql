select count(*) as customer_count
from {{ ref('lab_customers') }}
