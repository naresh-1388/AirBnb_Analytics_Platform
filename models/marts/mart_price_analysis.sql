{{ config(materialized='table') }}

SELECT
    neighbourhood_group,
    room_type,
    COUNT(id) AS total_listings,
    AVG(price) AS avg_price,
    MIN(price) AS min_price,
    MAX(price) AS max_price
FROM {{ ref('fact_listings') }}
GROUP BY
    neighbourhood_group,
    room_type