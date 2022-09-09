{{
    config(
        materialized='table'
    )
}}

SELECT PRODUCTID,
PRODUCTNAME,
CATEGORY,
SUBCATEGORY,
SUM(PROFIT) AS Profit_by_product
FROM {{ ref('stg_orders') }}
group by 
 PRODUCTID,
PRODUCTNAME,
CATEGORY,
SUBCATEGORY

