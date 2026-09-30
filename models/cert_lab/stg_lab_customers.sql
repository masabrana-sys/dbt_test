select
    cast(customer_id as integer) as customer_id,
    first_name,
    email
from {{ source('lab', 'lab_raw_customers') }}
