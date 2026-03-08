select distinct
    payment_type
from {{ ref('stg_olist_order_payments') }}
where payment_type is not null

