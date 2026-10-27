select
    product_id::varchar as product_id,
    product_name::varchar as product_name,
    category::varchar as category,
    price::float as price
from {{ source('RAW_ZONE', 'RAW_PRODUCTS') }}