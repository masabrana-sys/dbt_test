with payments as 
(
select * from {{ ref('stg_stripe__payment') }}
where status = 'success'
)
, pivoted as 
(
select order_id, 
    {% set payment_mehtods= ['coupon','credit_card','gift_card','bank_transfer'] %}

    {% for payment_mehtod in payment_mehtods %}
        sum(case when payment_method = '{{payment_mehtod}}' then amount else 0 end) as {{payment_mehtod}}_amount
        
        {% if not loop.last %}
            ,
        {% endif %}

    {% endfor %}

    from payments
    group by 1
)

select * from pivoted