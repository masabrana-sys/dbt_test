with 

source as (

    select * from {{ source('jaffle_shop_raw', 'raw_stores') }}

),

renamed as (

    select
        id,
        name,
        opened_at,
        tax_rate

    from source

)

select * from renamed