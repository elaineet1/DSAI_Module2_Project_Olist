select
    geolocation_zip_code_prefix,
    trim(geolocation_city) as geolocation_city,
    upper(trim(geolocation_state)) as geolocation_state,
    cast(geolocation_lat as numeric) as geolocation_lat,
    cast(geolocation_lng as numeric) as geolocation_lng
from {{ source('olist_raw', 'stg_geolocation') }}
where geolocation_zip_code_prefix is not null

