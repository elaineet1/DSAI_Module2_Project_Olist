select
    p.order_id,
    o.customer_id,
    p.payment_sequential,
    p.payment_type,
    p.payment_installments,
    p.payment_value,
    case
        when p.payment_installments = 1 then 'Single Payment'
        when p.payment_installments between 2 and 3 then 'Short Installments'
        else 'Long Installments'
    end as installment_group,
    o.order_purchase_timestamp
from {{ ref('stg_olist_order_payments') }} p
left join {{ ref('stg_olist_orders') }} o
    on p.order_id = o.order_id