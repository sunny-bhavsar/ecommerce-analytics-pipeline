select
    o.order_id,
    o.customer_id,
    c.first_name,
    c.last_name,
    c.country,
    o.product_id,
    p.product_name,
    p.category,
    o.quantity,
    p.price,
    (o.quantity * p.price) as total_amount,
    o.order_date
from {{ ref('stg_orders') }} o
left join {{ ref('stg_customers') }} c on o.customer_id = c.customer_id
left join {{ ref('stg_products') }} p on o.product_id = p.product_id