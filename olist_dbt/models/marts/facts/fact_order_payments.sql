select
    p.order_id,
    o.customer_id,
    p.payment_sequential,
    p.payment_type,
    p.payment_installments,
    p.payment_value,
    o.order_purchase_timestamp
from {{ ref('stg_olist_order_payments') }} p
left join {{ ref('stg_olist_orders') }} o
    on p.order_id = o.order_id
