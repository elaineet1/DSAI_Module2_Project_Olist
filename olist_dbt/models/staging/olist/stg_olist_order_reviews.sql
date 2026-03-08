select
    review_id,
    order_id,
    cast(review_score as int64) as review_score,
    trim(review_comment_title) as review_comment_title,
    trim(review_comment_message) as review_comment_message,
    cast(review_creation_date as timestamp) as review_creation_date,
    cast(review_answer_timestamp as timestamp) as review_answer_timestamp
from {{ source('olist_raw', 'stg_order_reviews') }}
where order_id is not null

