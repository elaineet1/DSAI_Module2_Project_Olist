select distinct
    date(order_purchase_timestamp) as full_date,
    extract(year from order_purchase_timestamp) as year,
    extract(month from order_purchase_timestamp) as month,
    extract(day from order_purchase_timestamp) as day,
    extract(quarter from order_purchase_timestamp) as quarter,
    format_date('%A', date(order_purchase_timestamp)) as day_name,
    format_date('%B', date(order_purchase_timestamp)) as month_name
from {{ ref('stg_olist_orders') }}
where order_purchase_timestamp is not null
