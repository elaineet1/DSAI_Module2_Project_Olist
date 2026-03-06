-- Fact table for order items

SELECT
    oi.order_id,
    oi.order_item_id,
    oi.product_id,
    oi.seller_id,
    o.customer_id,
    oi.price,
    oi.freight_value,
    o.order_status,
    o.order_purchase_timestamp
FROM olist_dw.stg_order_items oi
JOIN olist_dw.stg_orders o
ON oi.order_id = o.order_id;
