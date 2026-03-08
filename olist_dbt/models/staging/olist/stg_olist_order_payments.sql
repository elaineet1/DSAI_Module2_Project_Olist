select
    order_id,
    cast(payment_sequential as int64) as payment_sequential,
    trim(lower(payment_type)) as payment_type,
    cast(payment_installments as int64) as payment_installments,
    cast(payment_value as numeric) as payment_value
from {{ source('olist_raw', 'stg_order_payments') }}
where order_id is not null

