--vehicle_location_restricted_lane

UPDATE UK_accidents.dbo.vehicles
SET vehicle_location_restricted_lane = CASE WHEN vehicle_location_restricted_lane = 0  THEN REPLACE(vehicle_location_restricted_lane, 0 , 'On main carriageway - not in restricted lane')
                                            WHEN vehicle_location_restricted_lane = 1  THEN REPLACE(vehicle_location_restricted_lane, 1 , 'Tram/Light rail track')
											WHEN vehicle_location_restricted_lane = 2  THEN REPLACE(vehicle_location_restricted_lane, 2 , 'Bus lane')
											WHEN vehicle_location_restricted_lane = 3  THEN REPLACE(vehicle_location_restricted_lane, 3 , 'Busway (including guided busway)')
											WHEN vehicle_location_restricted_lane = 4  THEN REPLACE(vehicle_location_restricted_lane, 4 , 'Cycle lane (on main carriageway)')
											WHEN vehicle_location_restricted_lane = 5  THEN REPLACE(vehicle_location_restricted_lane, 5 , 'Cycleway or shared use footway')
											WHEN vehicle_location_restricted_lane = 6  THEN REPLACE(vehicle_location_restricted_lane, 6 , 'On lay-by or hard shoulder')
											WHEN vehicle_location_restricted_lane = 7  THEN REPLACE(vehicle_location_restricted_lane, 7 , 'Entering lay-by or hard shoulder')
											WHEN vehicle_location_restricted_lane = 8  THEN REPLACE(vehicle_location_restricted_lane, 8 , 'Leaving lay-by or hard shoulder')
											WHEN vehicle_location_restricted_lane = 9  THEN REPLACE(vehicle_location_restricted_lane, 9 , 'Footway (pavement)')
											WHEN vehicle_location_restricted_lane = 10 THEN REPLACE(vehicle_location_restricted_lane, 10, 'Not on carriageway')
											WHEN vehicle_location_restricted_lane = 99 THEN REPLACE(vehicle_location_restricted_lane, 99, 'unknown (self reported)')
											ELSE NULL 
											END
                                            