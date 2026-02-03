with payments as 
(
select * from {{ ref('stg_stripe__payment') }}
where status = 'success'
)
, pivoted as 
(
select orderid, 
    {% set payment_mehtods= ['coupon','credit_card','gift_card','bank_transfer'] %}

    {% for payment_mehtod in payment_mehtods %}
        sum(case when paymentmethod = '{{payment_mehtod}}' then amount else 0 end) as {{payment_mehtod}}_amount,
        
    {% endfor %}

    from payments
    group by 1
)

select * from pivoted