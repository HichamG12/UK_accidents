--vehicle_location_direction

select 
COUNT(accident_index) as accidents,
vehicle_location_restricted_lane,
vehicle_direction_from,
vehicle_direction_to
from dbo.vehicles
where vehicle_location_restricted_lane is not null
group by vehicle_location_restricted_lane,
         vehicle_direction_from,
		 vehicle_direction_to
order by COUNT(accident_index) desc

select 
COUNT(accident_index) as accidents,
vehicle_location_restricted_lane,
vehicle_manoeuvre,
vehicle_direction_from,
vehicle_direction_to
from dbo.vehicles
where vehicle_location_restricted_lane is not null
group by vehicle_manoeuvre,
         vehicle_location_restricted_lane,
         vehicle_direction_from,
		 vehicle_direction_to
order by COUNT(accident_index) desc

