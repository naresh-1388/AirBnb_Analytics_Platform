{{ config(materialized='table') }}

SELECT DISTINCT
    host_id,
    host_name
FROM {{ ref('stg_airbnb') }}
WHERE host_id IS NOT NULL