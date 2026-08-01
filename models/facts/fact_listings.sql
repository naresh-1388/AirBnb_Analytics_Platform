{{ config(materialized='table') }}

SELECT
    id,
    host_id,
    neighbourhood_group,
    neighbourhood,
    room_type,
    price,
    minimum_nights,
    number_of_reviews,
    last_review,
    reviews_per_month,
    calculated_host_listings_count,
    availability_365,
    latitude,
    longitude,
    source_file,
    ingestion_timestamp
FROM {{ ref('stg_airbnb') }}