with source as (
    select * from {{ source('raw_jaffle_shop', 'raw_customers') }}
)

select
    id as customer_id,
    first_name,
    last_name
    
from source
