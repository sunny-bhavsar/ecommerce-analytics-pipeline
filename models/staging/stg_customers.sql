select
    customer_id::varchar as customer_id,
    first_name::varchar as first_name,
    last_name::varchar as last_name,
    email::varchar as email,
    signup_date::date as signup_date,
    country::varchar as country
from {{ source('RAW_ZONE', 'RAW_CUSTOMERS') }}