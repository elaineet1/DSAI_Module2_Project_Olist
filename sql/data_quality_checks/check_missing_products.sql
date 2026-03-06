-- Check referential integrity

SELECT *
FROM olist_dw.fact_order_items f
LEFT JOIN olist_dw.dim_product d
ON f.product_id = d.product_id
WHERE d.product_id IS NULL;
