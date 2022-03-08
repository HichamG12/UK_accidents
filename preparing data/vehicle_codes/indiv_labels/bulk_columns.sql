--vehicle_leaving_carriageway
--hit_object_off_carriageway
--first_point_of_impact
--vehicle_left_hand_drive
--journey_purpose_of_driver
--sex_of_driver
--propulsion_code
--driver_imd_decile
--driver_home_area_type

Update UK_accidents.dbo.vehicles 

SET  vehicle_leaving_carriageway = CASE WHEN vehicle_leaving_carriageway = 0 THEN REPLACE(vehicle_leaving_carriageway, 0, 'Did not leave carriageway')
                                        WHEN vehicle_leaving_carriageway = 1 THEN REPLACE(vehicle_leaving_carriageway, 1, 'Nearside')
										WHEN vehicle_leaving_carriageway = 2 THEN REPLACE(vehicle_leaving_carriageway, 2, 'Nearside and rebounded')
										WHEN vehicle_leaving_carriageway = 3 THEN REPLACE(vehicle_leaving_carriageway, 3, 'Straight ahead at junction')
										WHEN vehicle_leaving_carriageway = 4 THEN REPLACE(vehicle_leaving_carriageway, 4, 'Offside on to central reservation')
										WHEN vehicle_leaving_carriageway = 5 THEN REPLACE(vehicle_leaving_carriageway, 5, 'Offside on to centrl res + rebounded')
										WHEN vehicle_leaving_carriageway = 6 THEN REPLACE(vehicle_leaving_carriageway, 6, 'Offside - crossed central reservation')
										WHEN vehicle_leaving_carriageway = 7 THEN REPLACE(vehicle_leaving_carriageway, 7, 'Offside')
										WHEN vehicle_leaving_carriageway = 8 THEN REPLACE(vehicle_leaving_carriageway, 8, 'Offside and rebounded')
										WHEN vehicle_leaving_carriageway = 9 THEN REPLACE(vehicle_leaving_carriageway, 9, 'unknown (self reported)')
										ELSE NULL
										END

    ,hit_object_off_carriageway  = CASE WHEN hit_object_off_carriageway = 0  THEN REPLACE(hit_object_off_carriageway, 0 , 'None')
										WHEN hit_object_off_carriageway = 1  THEN REPLACE(hit_object_off_carriageway, 1 , 'Road sign or traffic signal')
										WHEN hit_object_off_carriageway = 2  THEN REPLACE(hit_object_off_carriageway, 2 , 'Lamp post')
										WHEN hit_object_off_carriageway = 3  THEN REPLACE(hit_object_off_carriageway, 3 , 'Telegraph or electricity pole')
										WHEN hit_object_off_carriageway = 4  THEN REPLACE(hit_object_off_carriageway, 4 , 'Tree')
										WHEN hit_object_off_carriageway = 5  THEN REPLACE(hit_object_off_carriageway, 5 , 'Bus stop or bus shelter')
										WHEN hit_object_off_carriageway = 6  THEN REPLACE(hit_object_off_carriageway, 6 , 'Central crash barrier')
										WHEN hit_object_off_carriageway = 7  THEN REPLACE(hit_object_off_carriageway, 7 , 'Near/Offside crash barrier')
										WHEN hit_object_off_carriageway = 8  THEN REPLACE(hit_object_off_carriageway, 8 , 'Submerged in water')
										WHEN hit_object_off_carriageway = 9  THEN REPLACE(hit_object_off_carriageway, 9 , 'Entered ditch')
										WHEN hit_object_off_carriageway = 10 THEN REPLACE(hit_object_off_carriageway, 10, 'Other permanent object')
										WHEN hit_object_off_carriageway = 11 THEN REPLACE(hit_object_off_carriageway, 11, 'Wall or fence')
										WHEN hit_object_off_carriageway = 99 THEN REPLACE(hit_object_off_carriageway, 99, 'unknown (self reported)')
										ELSE NULL 
										END

	,first_point_of_impact	     = CASE WHEN first_point_of_impact = 0 THEN REPLACE(first_point_of_impact, 0, 'Did not impact')
										WHEN first_point_of_impact = 1 THEN REPLACE(first_point_of_impact, 1, 'Front')
										WHEN first_point_of_impact = 2 THEN REPLACE(first_point_of_impact, 2, 'Back')
										WHEN first_point_of_impact = 3 THEN REPLACE(first_point_of_impact, 3, 'Offside')
										WHEN first_point_of_impact = 4 THEN REPLACE(first_point_of_impact, 4, 'Nearside')
										WHEN first_point_of_impact = 9 THEN REPLACE(first_point_of_impact, 9, 'unknown (self reported)')
										ELSE NULL 
										END

	,vehicle_left_hand_drive     = CASE WHEN vehicle_left_hand_drive = 1 THEN REPLACE(vehicle_left_hand_drive, 1, 'NO')
										WHEN vehicle_left_hand_drive = 2 THEN REPLACE(vehicle_left_hand_drive, 2, 'Yes')
										WHEN vehicle_left_hand_drive = 9 THEN REPLACE(vehicle_left_hand_drive, 9, 'Unknown')
									    ELSE NULL 
										END
																																												
	,journey_purpose_of_driver   = CASE WHEN journey_purpose_of_driver = 1  THEN REPLACE(journey_purpose_of_driver, 1 , 'Journey as part of work')
										WHEN journey_purpose_of_driver = 2  THEN REPLACE(journey_purpose_of_driver, 2 , 'Commuting to/from work')
										WHEN journey_purpose_of_driver = 3  THEN REPLACE(journey_purpose_of_driver, 3 , 'Taking pupil to/from school')
										WHEN journey_purpose_of_driver = 4  THEN REPLACE(journey_purpose_of_driver, 4 , 'Pupil riding to/from school')
										WHEN journey_purpose_of_driver = 5  THEN REPLACE(journey_purpose_of_driver, 5 , 'Other')
										WHEN journey_purpose_of_driver = 6  THEN REPLACE(journey_purpose_of_driver, 6 , 'Not known')
										WHEN journey_purpose_of_driver = 15 THEN REPLACE(journey_purpose_of_driver, 15, 'Other/Not known')
										ELSE NULL 
										END
										
	,sex_of_driver			     = CASE WHEN sex_of_driver = 1 THEN REPLACE(sex_of_driver, 1, 'Male')
										WHEN sex_of_driver = 2 THEN REPLACE(sex_of_driver, 2, 'Female')
										WHEN sex_of_driver = 3 THEN REPLACE(sex_of_driver, 3, 'Not known')
										ELSE NULL 
										END

	,propulsion_code		     = CASE WHEN propulsion_code = 1  THEN REPLACE(propulsion_code, 1 , 'Petrol')
										WHEN propulsion_code = 2  THEN REPLACE(propulsion_code, 2 , 'Heavy oil')
										WHEN propulsion_code = 3  THEN REPLACE(propulsion_code, 3 , 'Electric')
										WHEN propulsion_code = 4  THEN REPLACE(propulsion_code, 4 , 'Steam')
										WHEN propulsion_code = 5  THEN REPLACE(propulsion_code, 5 , 'Gas')
										WHEN propulsion_code = 6  THEN REPLACE(propulsion_code, 6 , 'Petrol/Gas (LPG)')
										WHEN propulsion_code = 7  THEN REPLACE(propulsion_code, 7 , 'Gas/Bi-fuel')
										WHEN propulsion_code = 8  THEN REPLACE(propulsion_code, 8 , 'Hybrid electric')
										WHEN propulsion_code = 9  THEN REPLACE(propulsion_code, 9 , 'Gas Diesel')
										WHEN propulsion_code = 10 THEN REPLACE(propulsion_code, 10, 'New fuel technology')
										WHEN propulsion_code = 11 THEN REPLACE(propulsion_code, 11, 'Fuel cells')
										WHEN propulsion_code = 12 THEN REPLACE(propulsion_code, 12, 'Electric diesel')
										ELSE 'Undefined'
										END

	,driver_imd_decile		     = CASE WHEN driver_imd_decile = 1  THEN REPLACE(driver_imd_decile, 1 , 'Most deprived 10%')
										WHEN driver_imd_decile = 2  THEN REPLACE(driver_imd_decile, 2 , 'More deprived 10-20%')
										WHEN driver_imd_decile = 3  THEN REPLACE(driver_imd_decile, 3 , 'More deprived 20-30%')
										WHEN driver_imd_decile = 4  THEN REPLACE(driver_imd_decile, 4 , 'More deprived 30-40%')
										WHEN driver_imd_decile = 5  THEN REPLACE(driver_imd_decile, 5 , 'More deprived 40-50%')
										WHEN driver_imd_decile = 6  THEN REPLACE(driver_imd_decile, 6 , 'Less deprived 40-50%')
										WHEN driver_imd_decile = 7  THEN REPLACE(driver_imd_decile, 7 , 'Less deprived 30-40%')
										WHEN driver_imd_decile = 8  THEN REPLACE(driver_imd_decile, 8 , 'Less deprived 20-30%')
										WHEN driver_imd_decile = 9  THEN REPLACE(driver_imd_decile, 9 , 'Less deprived 10-20%')
										WHEN driver_imd_decile = 10 THEN REPLACE(driver_imd_decile, 10, 'Least deprived 10%')
										ELSE NULL 
										END

	,driver_home_area_type	     = CASE WHEN driver_home_area_type = 1 THEN REPLACE(driver_home_area_type, 1, 'Urban area')
										WHEN driver_home_area_type = 2 THEN REPLACE(driver_home_area_type, 2, 'Small town')
										WHEN driver_home_area_type = 3 THEN REPLACE(driver_home_area_type, 3, 'Rural')
										ELSE NULL 
										END
										
										
										
										
										