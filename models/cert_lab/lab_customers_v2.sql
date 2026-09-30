select customer_id, first_name, email
from {{ ref('stg_lab_customers') }}
