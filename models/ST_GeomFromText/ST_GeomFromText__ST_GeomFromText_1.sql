{{
  config({    
    "materialized": "ephemeral",
    "database": "andre_dev",
    "schema": "alteryx_spatial"
  })
}}

WITH new_england_geom AS (

  SELECT * 
  
  FROM {{ source('andre_dev.alteryx_spatial', 'new_england_geom') }}

),

ST_GeomFromText_1 AS (

  {{ andre_st_gems.ST_GeomFromText('default_value_of_parameter1') }}

)

SELECT *

FROM ST_GeomFromText_1
