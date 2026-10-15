{{ config(severity = ('warn'))}}

select vendor_id,service_type,pickup_datetime
from {{ref('int_trips_unioned')}}
where (fare_amount < 0) and (payment_type in (1,2))