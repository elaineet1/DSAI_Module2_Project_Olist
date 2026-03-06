-- Check null primary keys

SELECT *
FROM olist_dw.fact_order_items
WHERE order_id IS NULL;


