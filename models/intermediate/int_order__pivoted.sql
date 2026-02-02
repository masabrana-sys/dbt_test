with payments as 
(
select * from {{ ref('stg_stripe__payment') }}
where status = 'success'
)
, pivoted as 
(
select orderid, 
sum(case when paymentmethod = 'bank_transfer' then amount else 0 end) as bank_transfer_amount
from payments
group by 1
)

select * from pivoted