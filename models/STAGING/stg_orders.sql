{{
    config(
        materialized='table'
    )
}}
select o.ORDERID,
o.ORDERDATE,
o.SHIPDATE,
o.SHIPMODE,
o.ORDERSELLINGPRICE,
o.ORDERCOSTPRICE,
o.ORDERSELLINGPRICE - o.ORDERCOSTPRICE as profit,
c.CUSTOMERID,
c.CUSTOMERNAME,
c.SEGMENT,
c.COUNTRY,
c.STATE,
p.*
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customers') }} as c
on c.CUSTOMERID = o.CUSTOMERID
left join {{ ref('raw_products') }} AS p
on o.PRODUCTID = p.PRODUCTID