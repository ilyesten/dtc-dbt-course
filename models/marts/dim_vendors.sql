with vendor as ( 
    select distinct vendor_id 
    from {{ref('int_trips_unioned')}}
)

select vendor_id, {{get_vendor_data('vendor_id')}} as vendor_name
 
from vendor