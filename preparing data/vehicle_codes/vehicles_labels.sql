--age of driver

UPDATE UK_accidents.dbo.vehicles
SET age_of_driver = NULL 
WHERE age_of_driver = -1


--------------------------------------------------------------------------------------------------------------------

--age band of driver

UPDATE UK_accidents.dbo.vehicles
SET age_band_of_driver = CASE WHEN age_band_of_driver = 1  THEN '0 - 5'
                              WHEN age_band_of_driver = 2  THEN '6 - 10'
							  WHEN age_band_of_driver = 3  THEN '11 - 15'
							  WHEN age_band_of_driver = 4  THEN '16 - 20'
							  WHEN age_band_of_driver = 5  THEN '21 - 25'
							  WHEN age_band_of_driver = 6  THEN '26 - 35'
							  WHEN age_band_of_driver = 7  THEN '36 - 45'
							  WHEN age_band_of_driver = 8  THEN '46 - 55'
							  WHEN age_band_of_driver = 9  THEN '56 - 65'
							  WHEN age_band_of_driver = 10 THEN '66 - 75'
							  WHEN age_band_of_driver = 11 THEN 'Over 75'
							  ELSE NULL 
							  END


--------------------------------------------------------------------------------------------------------------------

--vehicle leaving carriageway

Update UK_accidents.dbo.vehicles 
SET  vehicle_leaving_carriageway = CASE WHEN vehicle_leaving_carriageway = 0 THEN 'Did not leave carriageway'
                                        WHEN vehicle_leaving_carriageway = 1 THEN 'Nearside'
										WHEN vehicle_leaving_carriageway = 2 THEN 'Nearside and rebounded'
										WHEN vehicle_leaving_carriageway = 3 THEN 'Straight ahead at junction'
										WHEN vehicle_leaving_carriageway = 4 THEN 'Offside on to central reservation'
										WHEN vehicle_leaving_carriageway = 5 THEN 'Offside on to centrl res + rebounded'
										WHEN vehicle_leaving_carriageway = 6 THEN 'Offside - crossed central reservation'
										WHEN vehicle_leaving_carriageway = 7 THEN 'Offside'
										WHEN vehicle_leaving_carriageway = 8 THEN 'Offside and rebounded'
										WHEN vehicle_leaving_carriageway = 9 THEN 'unknown (self reported)'
										ELSE NULL
										END							  

--------------------------------------------------------------------------------------------------------------------

--hit object off carriageway

Update UK_accidents.dbo.vehicles
SET hit_object_off_carriageway  = CASE WHEN hit_object_off_carriageway = 0  THEN 'None'
									   WHEN hit_object_off_carriageway = 1  THEN 'Road sign or traffic signal'
									   WHEN hit_object_off_carriageway = 2  THEN 'Lamp post'
									   WHEN hit_object_off_carriageway = 3  THEN 'Telegraph or electricity pole'
									   WHEN hit_object_off_carriageway = 4  THEN 'Tree'
									   WHEN hit_object_off_carriageway = 5  THEN 'Bus stop or bus shelter'
									   WHEN hit_object_off_carriageway = 6  THEN 'Central crash barrier'
									   WHEN hit_object_off_carriageway = 7  THEN 'Near/Offside crash barrier'
									   WHEN hit_object_off_carriageway = 8  THEN 'Submerged in water'
									   WHEN hit_object_off_carriageway = 9  THEN 'Entered ditch'
									   WHEN hit_object_off_carriageway = 10 THEN 'Other permanent object'
									   WHEN hit_object_off_carriageway = 11 THEN 'Wall or fence'
									   WHEN hit_object_off_carriageway = 99 THEN 'unknown (self reported)'
									   ELSE NULL 
									   END

--------------------------------------------------------------------------------------------------------------------

--first point of impact

Update UK_accidents.dbo.vehicles
SET first_point_of_impact = CASE WHEN first_point_of_impact = 0 THEN 'Did not impact'
								 WHEN first_point_of_impact = 1 THEN 'Front'
								 WHEN first_point_of_impact = 2 THEN 'Back'
								 WHEN first_point_of_impact = 3 THEN 'Offside'
								 WHEN first_point_of_impact = 4 THEN 'Nearside'
								 WHEN first_point_of_impact = 9 THEN 'unknown (self reported)'
								 ELSE NULL 
								 END


--------------------------------------------------------------------------------------------------------------------

--vehicle left hand drive

Update UK_accidents.dbo.vehicles
SET vehicle_left_hand_drive = CASE WHEN vehicle_left_hand_drive = 1 THEN 'NO'
								   WHEN vehicle_left_hand_drive = 2 THEN 'Yes'
								   WHEN vehicle_left_hand_drive = 9 THEN 'Unknown'
								   ELSE NULL 
								   END		
--------------------------------------------------------------------------------------------------------------------	

--journey purpose of driver

Update UK_accidents.dbo.vehicles
SET journey_purpose_of_driver = CASE WHEN journey_purpose_of_driver = 1  THEN 'Journey as part of work'
									 WHEN journey_purpose_of_driver = 2  THEN 'Commuting to/from work'
									 WHEN journey_purpose_of_driver = 3  THEN 'Taking pupil to/from school'
									 WHEN journey_purpose_of_driver = 4  THEN 'Pupil riding to/from school'
									 WHEN journey_purpose_of_driver = 5  THEN 'Other'
									 WHEN journey_purpose_of_driver = 6  THEN 'Not known'
									 WHEN journey_purpose_of_driver = 15 THEN 'Other/Not known'
									 ELSE NULL 
									 END

--------------------------------------------------------------------------------------------------------------------

--sex of driver

Update UK_accidents.dbo.vehicles
SET sex_of_driver = CASE WHEN sex_of_driver = 1 THEN 'Male'
						 WHEN sex_of_driver = 2 THEN 'Female'
						 WHEN sex_of_driver = 3 THEN 'Not known'
						 ELSE NULL 
						 END

--------------------------------------------------------------------------------------------------------------------

--propulsion code

Update UK_accidents.dbo.vehicles
SET propulsion_code = CASE WHEN propulsion_code = 1  THEN 'Petrol'
						   WHEN propulsion_code = 2  THEN 'Heavy oil'
						   WHEN propulsion_code = 3  THEN 'Electric'
						   WHEN propulsion_code = 4  THEN 'Steam'
						   WHEN propulsion_code = 5  THEN 'Gas'
						   WHEN propulsion_code = 6  THEN 'Petrol/Gas (LPG)'
						   WHEN propulsion_code = 7  THEN 'Gas/Bi-fuel'
						   WHEN propulsion_code = 8  THEN 'Hybrid electric'
						   WHEN propulsion_code = 9  THEN 'Gas Diesel'
						   WHEN propulsion_code = 10 THEN 'New fuel technology'
						   WHEN propulsion_code = 11 THEN 'Fuel cells'
						   WHEN propulsion_code = 12 THEN 'Electric diesel'
						   ELSE 'Undefined'
						   END

-------------------------------------------------------------------------------------------------------------------

---driver imd decile

Update UK_accidents.dbo.vehicles
SET driver_imd_decile = CASE WHEN driver_imd_decile = 1  THEN 'Most deprived 10%'
							 WHEN driver_imd_decile = 2  THEN 'More deprived 10-20%'
							 WHEN driver_imd_decile = 3  THEN 'More deprived 20-30%'
							 WHEN driver_imd_decile = 4  THEN 'More deprived 30-40%'
							 WHEN driver_imd_decile = 5  THEN 'More deprived 40-50%'
							 WHEN driver_imd_decile = 6  THEN 'Less deprived 40-50%'
							 WHEN driver_imd_decile = 7  THEN 'Less deprived 30-40%'
							 WHEN driver_imd_decile = 8  THEN 'Less deprived 20-30%'
							 WHEN driver_imd_decile = 9  THEN 'Less deprived 10-20%'
							 WHEN driver_imd_decile = 10 THEN 'Least deprived 10%'
							 ELSE NULL 
							 END
--------------------------------------------------------------------------------------------------------------------

--driver_home_area_type

Update UK_accidents.dbo.vehicles
SET driver_home_area_type = CASE WHEN driver_home_area_type = 1 THEN 'Urban area'
								 WHEN driver_home_area_type = 2 THEN 'Small town'
								 WHEN driver_home_area_type = 3 THEN 'Rural'
								 ELSE NULL
								 END



-----------------------------------------------------------------------------------------------------------------------------------

--engine capacity cc

UPDATE UK_accidents.dbo.vehicles
SET engine_capacity_cc = NULL WHERE engine_capacity_cc = -1



-----------------------------------------------------------------------------------------------------------------------------------

--age of vehicle

UPDATE UK_accidents.dbo.vehicles
SET age_of_vehicle = NULL WHERE age_of_vehicle = -1



-----------------------------------------------------------------------------------------------------------------------------------

--generic make model

UPDATE UK_accidents.dbo.vehicles
SET generic_make_model = NULL WHERE generic_make_model = '-1'





-----------------------------------------------------------------------------------------------------------------------------------

--hit object in carriageway	

UPDATE UK_accidents.dbo.vehicles
SET hit_object_in_carriageway = CASE WHEN hit_object_in_carriageway = 0  THEN 'None'
                                     WHEN hit_object_in_carriageway = 1  THEN 'Previous accident'
									 WHEN hit_object_in_carriageway = 2  THEN 'Road works'		
									 WHEN hit_object_in_carriageway = 4  THEN 'Parked vehicle'
									 WHEN hit_object_in_carriageway = 5  THEN 'Bridge (roof)'
									 WHEN hit_object_in_carriageway = 6  THEN 'Bridge (side)'
									 WHEN hit_object_in_carriageway = 7  THEN 'Bollard or refuge'
									 WHEN hit_object_in_carriageway = 8  THEN 'Open door of vehicle'
									 WHEN hit_object_in_carriageway = 9  THEN 'Central island of roundabout'
									 WHEN hit_object_in_carriageway = 10 THEN 'Kerb'
									 WHEN hit_object_in_carriageway = 11 THEN 'Other object'
									 WHEN hit_object_in_carriageway = 12 THEN 'Any animal (except ridden horse)'
									 WHEN hit_object_in_carriageway = 99 THEN 'unknown (self reported)'
									 ELSE NULL 
									 END




-----------------------------------------------------------------------------------------------------------------------------------

--vehicle type

UPDATE UK_accidents.dbo.vehicles
SET vehicle_type = CASE WHEN vehicle_type = 1   THEN 'Pedal cycle'
                        WHEN vehicle_type = 2   THEN 'Motorcycle 50cc and under'
		                WHEN vehicle_type = 3   THEN 'Motorcycle 125cc and under'
		                WHEN vehicle_type = 4   THEN 'Motorcycle over 125cc and up to 500cc'
		                WHEN vehicle_type = 5   THEN 'Motorcycle over 500cc'
		                WHEN vehicle_type = 8   THEN 'Taxi/Private hire car'
		                WHEN vehicle_type = 9   THEN 'Car'
		                WHEN vehicle_type = 10  THEN 'Minibus (8 - 16 passenger seats)'
		                WHEN vehicle_type = 11  THEN 'Bus or coach (17 or more pass seats)'
		                WHEN vehicle_type = 16  THEN 'Ridden horse'
		                WHEN vehicle_type = 17  THEN 'Agricultural vehicle'
		                WHEN vehicle_type = 18  THEN 'Tram'
		                WHEN vehicle_type = 19  THEN 'Van / Goods 3.5 tonnes mgw or under'
		                WHEN vehicle_type = 20  THEN 'Goods over 3.5t. and under 7.5t'
		                WHEN vehicle_type = 21  THEN 'Goods 7.5 tonnes mgw and over'
		                WHEN vehicle_type = 22  THEN 'Mobility scooter'
		                WHEN vehicle_type = 23  THEN 'Electric motorcycle'
		                WHEN vehicle_type = 90  THEN 'Other vehicle'
		                WHEN vehicle_type = 97  THEN 'Motorcycle - unknown cc'
		                WHEN vehicle_type = 98  THEN 'Goods vehicle - unknown weight'
		                WHEN vehicle_type = 99  THEN 'Unknown vehicle type (self rep only)'
		                WHEN vehicle_type = 103 THEN 'Motorcycle - Scooter (1979-1998)'
		                WHEN vehicle_type = 104 THEN 'Motorcycle (1979-1998)'
		                WHEN vehicle_type = 105 THEN 'Motorcycle - Combination (1979-1998)'
		                WHEN vehicle_type = 106 THEN 'Motorcycle over 125cc (1999-2004)'
		                WHEN vehicle_type = 108 THEN 'Taxi (excluding private hire cars) (1979-2004)'
		                WHEN vehicle_type = 109 THEN 'Car (including private hire cars) (1979-2004)'
		                WHEN vehicle_type = 110 THEN 'Minibus/Motor caravan (1979-1998)'
		                WHEN vehicle_type = 113 THEN 'Goods over 3.5 tonnes (1979-1998)'
		                ELSE NULL 
		                END





-----------------------------------------------------------------------------------------------------------------------------------

--towing and articulation

UPDATE UK_accidents.dbo.vehicles
SET towing_and_articulation = CASE WHEN towing_and_articulation = 0 THEN 'No tow/articulation'
                                   WHEN towing_and_articulation = 1 THEN 'Articulated vehicle'
								   WHEN towing_and_articulation = 2 THEN 'Double or multiple trailer'
								   WHEN towing_and_articulation = 3 THEN 'Caravan'
								   WHEN towing_and_articulation = 4 THEN 'Single trailer'
								   WHEN towing_and_articulation = 5 THEN 'Other tow'
								   WHEN towing_and_articulation = 9 THEN 'unknown (self reported)'
								   ELSE NULL 
								   END




-----------------------------------------------------------------------------------------------------------------------------------

--vehicle manoeuvre

UPDATE UK_accidents.dbo.vehicles
SET vehicle_manoeuvre = CASE WHEN vehicle_manoeuvre = 1  THEN 'Reversing'
                             WHEN vehicle_manoeuvre = 2  THEN 'Parked'
		                     WHEN vehicle_manoeuvre = 3  THEN 'Waiting to go - held up'
		                     WHEN vehicle_manoeuvre = 4  THEN 'Slowing or stopping'
		                     WHEN vehicle_manoeuvre = 5  THEN 'Moving off'
		                     WHEN vehicle_manoeuvre = 6  THEN 'U-turn'
		                     WHEN vehicle_manoeuvre = 7  THEN 'Turning left'
		                     WHEN vehicle_manoeuvre = 8  THEN 'Waiting to turn left'
		                     WHEN vehicle_manoeuvre = 9  THEN 'Turning right'
		                     WHEN vehicle_manoeuvre = 10 THEN 'Waiting to turn right'
		                     WHEN vehicle_manoeuvre = 11 THEN 'Changing lane to left'
		                     WHEN vehicle_manoeuvre = 12 THEN 'Changing lane to right'
		                     WHEN vehicle_manoeuvre = 13 THEN 'Overtaking moving vehicle - offside'
		                     WHEN vehicle_manoeuvre = 14 THEN 'Overtaking static vehicle - offside'
		                     WHEN vehicle_manoeuvre = 15 THEN 'Overtaking - nearside'
		                     WHEN vehicle_manoeuvre = 16 THEN 'Going ahead left-hand bend'
		                     WHEN vehicle_manoeuvre = 17 THEN 'Going ahead right-hand bend'
		                     WHEN vehicle_manoeuvre = 18 THEN 'Going ahead other'
		                     WHEN vehicle_manoeuvre = 99 THEN 'unknown (self reported)'
		                     ELSE NULL 
		                     END




-----------------------------------------------------------------------------------------------------------------------------------

--vehicle direction from

UPDATE UK_accidents.dbo.vehicles
SET vehicle_direction_from = CASE WHEN vehicle_direction_from = 0 THEN 'Parked'
                                  WHEN vehicle_direction_from = 1 THEN 'North'
								  WHEN vehicle_direction_from = 2 THEN 'North East'
								  WHEN vehicle_direction_from = 3 THEN 'East'
								  WHEN vehicle_direction_from = 4 THEN 'South East'
								  WHEN vehicle_direction_from = 5 THEN 'South East'
								  WHEN vehicle_direction_from = 6 THEN 'South West'
								  WHEN vehicle_direction_from = 7 THEN 'West'
								  WHEN vehicle_direction_from = 8 THEN 'North West'
								  WHEN vehicle_direction_from = 9 THEN 'unknown (self reported)'
								  END






-----------------------------------------------------------------------------------------------------------------------------------

--vehicle direction to

UPDATE UK_accidents.dbo.vehicles
SET vehicle_direction_to = CASE   WHEN vehicle_direction_to = 0 THEN 'Parked'
                                  WHEN vehicle_direction_to = 1 THEN 'North'
								  WHEN vehicle_direction_to = 2 THEN 'North East'
								  WHEN vehicle_direction_to = 3 THEN 'East'
								  WHEN vehicle_direction_to = 4 THEN 'South East'
								  WHEN vehicle_direction_to = 5 THEN 'South East'
								  WHEN vehicle_direction_to = 6 THEN 'South West'
								  WHEN vehicle_direction_to = 7 THEN 'West'
								  WHEN vehicle_direction_to = 8 THEN 'North West'
								  WHEN vehicle_direction_to = 9 THEN 'unknown (self reported)'
								  END




-----------------------------------------------------------------------------------------------------------------------------------

--vehicle location restricted lane

UPDATE UK_accidents.dbo.vehicles
SET vehicle_location_restricted_lane = CASE WHEN vehicle_location_restricted_lane = 0  THEN 'On main carriageway - not in restricted lane'
                                            WHEN vehicle_location_restricted_lane = 1  THEN 'Tram/Light rail track'
											WHEN vehicle_location_restricted_lane = 2  THEN 'Bus lane'
											WHEN vehicle_location_restricted_lane = 3  THEN 'Busway (including guided busway)'
											WHEN vehicle_location_restricted_lane = 4  THEN 'Cycle lane (on main carriageway)'
											WHEN vehicle_location_restricted_lane = 5  THEN 'Cycleway or shared use footway'
											WHEN vehicle_location_restricted_lane = 6  THEN 'On lay-by or hard shoulder'
											WHEN vehicle_location_restricted_lane = 7  THEN 'Entering lay-by or hard shoulder'
											WHEN vehicle_location_restricted_lane = 8  THEN 'Leaving lay-by or hard shoulder'
											WHEN vehicle_location_restricted_lane = 9  THEN 'Footway (pavement)'
											WHEN vehicle_location_restricted_lane = 10 THEN 'Not on carriageway'
											WHEN vehicle_location_restricted_lane = 99 THEN 'unknown (self reported)'
											ELSE NULL 
											END
                                            






-----------------------------------------------------------------------------------------------------------------------------------

--junction location

ALTER TABLE dbo.vehicles
ALTER COLUMN junction_location varchar(60)

UPDATE UK_accidents.dbo.vehicles
SET junction_location = CASE WHEN junction_location = 0  THEN 'junction_location'
                             WHEN junction_location = 1  THEN 'Approaching junction or waiting/parked at junction approach'
							 WHEN junction_location = 2  THEN 'Cleared junction or waiting/parked at junction exit'
							 WHEN junction_location = 3  THEN 'Leaving roundabout'
							 WHEN junction_location = 4  THEN 'Entering roundabout'
							 WHEN junction_location = 5  THEN 'Leaving main road'
							 WHEN junction_location = 6  THEN 'Entering main road'
							 WHEN junction_location = 7  THEN 'Entering from slip road'
							 WHEN junction_location = 8  THEN 'Mid Junction - on roundabout or on main road'
							 WHEN junction_location = 9  THEN 'unknown (self reported)'
							 ELSE NULL 
							 END






-----------------------------------------------------------------------------------------------------------------------------------

--skidding and overturning

UPDATE UK_accidents.dbo.vehicles
SET skidding_and_overturning = CASE WHEN skidding_and_overturning = 0  THEN 'None'
                                    WHEN skidding_and_overturning = 1  THEN 'Skidded'
							        WHEN skidding_and_overturning = 2  THEN 'Skidded and overturned'
							        WHEN skidding_and_overturning = 3  THEN 'Jackknifed'
							        WHEN skidding_and_overturning = 4  THEN 'Jackknifed and overturned'
							        WHEN skidding_and_overturning = 5  THEN 'Overturned'
							        WHEN skidding_and_overturning = 9  THEN 'unknown (self reported)'
							        ELSE NULL 
							        END	













		                     								   		                									 