-- Check for negative prices

SELECT *
FROM olist_dw.fact_order_items
WHERE price < 0;

