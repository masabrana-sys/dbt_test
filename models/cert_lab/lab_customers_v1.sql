select customer_id, first_name
from {{ ref('stg_lab_customers') }}
