{%- macro ST_Envelope(table_name, schema, geom_column_name, output_column_name) -%}
  {{ log("table_name=" ~ table_name, info=True) }}
  {{ log("schema=" ~ schema, info=True) }}
  {{ log("geom_column_name=" ~ geom_column_name, info=True) }}
  {{ log("output_column_name=" ~ output_column_name, info=True) }}


  SELECT
    *,
    ST_AsText(
      ST_Envelope(
        ST_GeomFromText({{geom_column_name}})
      )
    ) as {{output_column_name}}
  FROM
    {{table_name}}

{%- endmacro -%}