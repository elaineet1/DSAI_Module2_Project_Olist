-- Staging table for geolocation

SELECT
    geolocation_zip_code_prefix,
    geolocation_lat,
    geolocation_lng,
    geolocation_city,
    geolocation_state
FROM olist_dw.stg_geolocation;

