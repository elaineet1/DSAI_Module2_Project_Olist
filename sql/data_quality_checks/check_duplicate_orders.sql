-- Check duplicate order items

SELECT
    order_id,
    order_item_id,
    COUNT(*)
FROM olist_dw.fact_order_items
GROUP BY order_id, order_item_id
HAVING COUNT(*) > 1;

