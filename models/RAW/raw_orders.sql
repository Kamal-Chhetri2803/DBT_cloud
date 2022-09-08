{{
    config(
        materialized='table'
    )
}}
select * from 
RAW.KC_ANALYTICS.ORDERS