select
    oi.order_id,
    oi.order_item_id,
    o.customer_id,
    oi.product_id,
    oi.seller_id,
    o.order_status,
    o.order_purchase_timestamp,
    oi.shipping_limit_date,
    oi.price,
    oi.freight_value,
    oi.price + oi.freight_value as total_item_amount
from {{ ref('stg_olist_order_items') }} oi
left join {{ ref('stg_olist_orders') }} o
    on oi.order_id = o.order_id
