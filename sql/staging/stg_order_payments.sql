-- Staging table for payments

SELECT
    order_id,
    payment_sequential,
    payment_type,
    payment_installments,
    payment_value
FROM olist_dw.stg_order_payments;

