select
    r.review_id,
    r.order_id,
    o.customer_id,
    r.review_score,
    case
        when r.review_score >= 4 then 'Positive'
        when r.review_score = 3 then 'Neutral'
        else 'Negative'
    end as review_sentiment,
    r.review_comment_title,
    r.review_comment_message,
    r.review_creation_date,
    r.review_answer_timestamp
from {{ ref('stg_olist_order_reviews') }} r
left join {{ ref('stg_olist_orders') }} o
    on r.order_id = o.order_id