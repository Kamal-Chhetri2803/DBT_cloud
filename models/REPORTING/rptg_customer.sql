select CUSTOMERID,
CUSTOMERNAME,
SEGMENT,
COUNTRY,
SUM(Profit) as profit_by_customer
from
{{ ref('stg_orders') }}
group by 
CUSTOMERID,
CUSTOMERNAME,
SEGMENT,
COUNTRY