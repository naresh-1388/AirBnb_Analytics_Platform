{{ config(materialized='table') }}

SELECT DISTINCT
    neighbourhood_group,
    neighbourhood
FROM {{ ref('stg_airbnb') }}
WHERE neighbourhood_group IS NOT NULL
  AND neighbourhood IS NOT NULL