{{
  config({    
    "materialized": "ephemeral",
    "database": "andre_dev",
    "schema": "alteryx_spatial"
  })
}}

WITH new_england AS (

  SELECT * 
  
  FROM {{ source('andre_dev.alteryx_spatial', 'new_england') }}

),

create_geospatial_envelope AS (

  {{
    andre_st_gems.ST_Envelope(
      'new_england', 
      [{ "name": "name", "dataType": "String" }, { "name": "geometry", "dataType": "String" }], 
      'geometry', 
      'foo', 
      1, 
      'miles'
    )
  }}

)

SELECT *

FROM create_geospatial_envelope
