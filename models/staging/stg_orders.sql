select
    order_id::varchar as order_id,
    customer_id::varchar as customer_id,
    product_id::varchar as product_id,
    quantity::int as quantity,
    order_date::date as order_date
from {{ source('RAW_ZONE', 'RAW_ORDERS') }}