
{%- macro ST_GeomFromText(parameter1) -%}
    select * from {{ parameter1 }}
{%- endmacro -%}
