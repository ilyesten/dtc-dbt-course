with green as (
    select * , 'Green' as service_type
    from {{ref('stg_green_tripdata')}}
    
),
yellow as ( 
    select * , 'Yellow' as service_type
    from {{ref('stg_yellow_tripdata')}}
),

trips_unioned as (
    select * from green
     union all 
     select * from yellow 
     )   


select *
from trips_unioned