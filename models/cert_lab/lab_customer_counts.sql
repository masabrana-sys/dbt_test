-- Exercise 9: compile this and check which version the ref resolves to
select count(*) as customer_count
from {{ ref('lab_customers') }}
