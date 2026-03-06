-- Date dimension

SELECT DISTINCT
    DATE(order_purchase_timestamp) AS date,
    EXTRACT(YEAR FROM order_purchase_timestamp) AS year,
    EXTRACT(MONTH FROM order_purchase_timestamp) AS month,
    EXTRACT(DAY FROM order_purchase_timestamp) AS day
FROM olist_dw.stg_orders;

