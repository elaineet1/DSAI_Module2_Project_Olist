select
    trim(product_category_name) as product_category_name,
    trim(product_category_name_eng) as product_category_name_english
from {{ source('olist_raw', 'stg_category_translation') }}
where product_category_name is not null

