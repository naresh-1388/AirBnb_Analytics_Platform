{{ config(materialized='table') }}

SELECT
    room_type,
    COUNT(id) AS total_listings,
    AVG(price) AS avg_price,
    AVG(minimum_nights) AS avg_minimum_nights,
    AVG(number_of_reviews) AS avg_reviews,
    AVG(availability_365) AS avg_availability
FROM {{ ref('fact_listings') }}
GROUP BY room_type