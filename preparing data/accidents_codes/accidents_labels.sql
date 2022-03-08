--accident severity

UPDATE uk_accidents.dbo.accidents
SET accident_severity = CASE WHEN accident_severity = 1 THEN 'Fatal' 
                             WHEN accident_severity = 2 THEN 'Serious'
	                         WHEN accident_severity = 3 THEN 'Slight'
	                         ELSE NULL 
							 END



--carriageway hazards

UPDATE uk_accidents.dbo.accidents
SET carriageway_hazards = CASE WHEN carriageway_hazards = 0 THEN 'None'
                               WHEN carriageway_hazards = 1 THEN 'Vehicle load on road'
							   WHEN carriageway_hazards = 2 THEN 'Other object on road'
							   WHEN carriageway_hazards = 3 THEN 'Previous accident'
							   WHEN carriageway_hazards = 6 THEN 'Pedestrian in carriageway not injured'
							   WHEN carriageway_hazards = 7 THEN 'Any animal in carriageway (except ridden horse)'
							   WHEN carriageway_hazards = 9 THEN 'unknown (self reported)'
							   ELSE NULL 
							   END		


--days of week

UPDATE uk_accidents.dbo.accidents
SET day_of_week = CASE WHEN day_of_week = 1 THEN 'Sunday' 
                       WHEN day_of_week = 2 THEN 'Monday' 
	                   WHEN day_of_week = 3 THEN 'Tuesday' 
	                   WHEN day_of_week = 4 THEN 'Wednesday' 
	                   WHEN day_of_week = 5 THEN 'Thursday' 
	                   WHEN day_of_week = 6 THEN 'Friday' 
	                   WHEN day_of_week = 7 THEN 'Saturday' 
	                   ELSE NULL 
					   END 


--did police officer attend scene of accident

UPDATE uk_accidents.dbo.accidents
SET did_police_officer_attend_scene_of_accident = CASE WHEN did_police_officer_attend_scene_of_accident = 1 THEN 'Yes'
                                                       WHEN did_police_officer_attend_scene_of_accident = 2 THEN 'No'
													   WHEN did_police_officer_attend_scene_of_accident = 3 THEN 'No accident was reported'
													   ELSE NULL
													   END		


--first road class

UPDATE uk_accidents.dbo.accidents
SET first_road_class = CASE WHEN first_road_class = 1 THEN 'Motorway'
                            WHEN first_road_class = 2 THEN 'A(M)'
		                    WHEN first_road_class = 3 THEN 'A'
		                    WHEN first_road_class = 4 THEN 'B'
		                    WHEN first_road_class = 5 THEN 'C'
		                    WHEN first_road_class = 6 THEN 'Unclassified'
		                    ELSE NULL 
							END 


--first road number

Update uk_accidents.dbo.accidents
SET first_road_number = CASE WHEN first_road_number = 0 
                             THEN 'Road class is C or Unclassified'
							 END
WHERE first_road_number = 0 


--junction detail

UPDATE uk_accidents.dbo.accidents
SET junction_control = CASE WHEN junction_control = 0 THEN 'Not at junction or within 20 metres'
                            WHEN junction_control = 1 THEN 'Authorised person'
							WHEN junction_control = 2 THEN 'Auto traffic signal'
							WHEN junction_control = 3 THEN 'Stop sign'
							WHEN junction_control = 4 THEN 'Give way or uncontrolled'
							WHEN junction_control = 9 THEN 'unknown (self reported)'
							ELSE NULL
							END


--junction detail

UPDATE uk_accidents.dbo.accidents
SET junction_detail = CASE WHEN junction_detail = 0  THEN 'Not at junction or within 20 metres'
                           WHEN junction_detail = 1  THEN 'Roundabout'
						   WHEN junction_detail = 2  THEN 'Mini-roundabout'
						   WHEN junction_detail = 3  THEN 'T or staggered junction'
						   WHEN junction_detail = 5  THEN 'Slip road'
						   WHEN junction_detail = 6  THEN 'Crossroads'
						   WHEN junction_detail = 7  THEN 'More than 4 arms (not roundabout)'
						   WHEN junction_detail = 8  THEN 'Private drive or entrance'
						   WHEN junction_detail = 9  THEN 'Other junction'
						   WHEN junction_detail = 99 THEN 'unknown (self reported)'
						   ELSE NULL 
						   END


--pedestrian crossing physical facilities

UPDATE uk_accidents.dbo.accidents
SET pedestrian_crossing_physical_facilities = CASE WHEN pedestrian_crossing_physical_facilities = 0 THEN 'No physical crossing facilities within 50 metres'
												   WHEN pedestrian_crossing_physical_facilities = 4 THEN 'non-junction pedestrian light crossing'
												   WHEN pedestrian_crossing_physical_facilities = 5 THEN 'Pedestrian phase at traffic signal junction'
												   WHEN pedestrian_crossing_physical_facilities = 7 THEN 'Footbridge or subway'
												   WHEN pedestrian_crossing_physical_facilities = 8 THEN 'Central refuge'
												   WHEN pedestrian_crossing_physical_facilities = 9 THEN 'unknown (self reported)'
												   ELSE NULL 
												   END		


--light_conditions

UPDATE uk_accidents.dbo.accidents
SET light_conditions = CASE WHEN light_conditions = 1 THEN 'Daylight'
                            WHEN light_conditions = 4 THEN 'Darkness - lights lit'
							WHEN light_conditions = 5 THEN 'Darkness - lights unlit'
							WHEN light_conditions = 6 THEN 'Darkness - no lighting'
							WHEN light_conditions = 7 THEN 'Darkness - lighting unknown'
						    ELSE NULL
							END		


--pedestrian crossing human control

UPDATE uk_accidents.dbo.accidents
SET pedestrian_crossing_human_control = CASE WHEN pedestrian_crossing_human_control = 0 THEN 'None within 50 metres'
                                             WHEN pedestrian_crossing_human_control = 1 THEN 'Control by school crossing patrol'
											 WHEN pedestrian_crossing_human_control = 2 THEN 'Control by other authorised person'
											 WHEN pedestrian_crossing_human_control = 9 THEN 'unknown (self reported)'
											 ELSE NULL 
											 END



--police forces 

UPDATE uk_accidents.dbo.accidents
SET police_force = CASE WHEN police_force = 1  THEN 'Metropolitan Police' 
                        WHEN police_force = 3  THEN 'Cumbria' 
	                    WHEN police_force = 4  THEN 'Lancashire' 
	                    WHEN police_force = 5  THEN 'Merseyside' 
	                    WHEN police_force = 6  THEN 'Greater Manchester' 
	                    WHEN police_force = 7  THEN 'Cheshire' 
	                    WHEN police_force = 10 THEN 'Northumbria'
			            WHEN police_force = 11 THEN 'Durham'
			            WHEN police_force = 12 THEN 'North Yorkshire' 
			            WHEN police_force = 13 THEN 'West Yorkshire' 
			            WHEN police_force = 14 THEN 'South Yorkshire'
			            WHEN police_force = 16 THEN 'Humberside' 
			            WHEN police_force = 17 THEN 'Cleveland'
			            WHEN police_force = 20 THEN 'West Midlands' 
			            WHEN police_force = 21 THEN 'Staffordshire' 
			            WHEN police_force = 22 THEN 'West Mercia' 
			            WHEN police_force = 23 THEN 'Warwickshire'
			            WHEN police_force = 30 THEN 'Derbyshire'
			            WHEN police_force = 31 THEN 'Nottinghamshire' 
			            WHEN police_force = 32 THEN 'Lincolnshire' 
			            WHEN police_force = 33 THEN 'Leicestershire' 
			            WHEN police_force = 34 THEN 'Northamptonshire' 
			            WHEN police_force = 35 THEN 'Cambridgeshire' 
			            WHEN police_force = 36 THEN 'Norfolk' 
			            WHEN police_force = 37 THEN 'Suffolk'
			            WHEN police_force = 40 THEN 'Bedfordshire' 
			            WHEN police_force = 41 THEN 'Hertfordshire' 
			            WHEN police_force = 42 THEN 'Essex' 
			            WHEN police_force = 43 THEN 'Thames Valley' 
			            WHEN police_force = 44 THEN 'Hampshire' 
			            WHEN police_force = 45 THEN 'Surrey' 
			            WHEN police_force = 46 THEN 'Kent'
			            WHEN police_force = 47 THEN 'Sussex' 
			            WHEN police_force = 48 THEN 'City of London' 
			            WHEN police_force = 50 THEN 'Devon and Cornwall' 
			            WHEN police_force = 52 THEN 'Avon and Somerset' 
			            WHEN police_force = 53 THEN 'Gloucestershire' 
			            WHEN police_force = 54 THEN 'Wiltshire' 
			            WHEN police_force = 55 THEN 'Dorset'
			            WHEN police_force = 60 THEN 'North Wales' 
			            WHEN police_force = 61 THEN 'Gwent' 
			            WHEN police_force = 62 THEN 'South Wales'
			            WHEN police_force = 63 THEN 'Dyfed-Powys' 
			            WHEN police_force = 91 THEN 'Northern'
			            WHEN police_force = 92 THEN 'Grampian' 
			            WHEN police_force = 93 THEN 'Tayside' 
			            WHEN police_force = 94 THEN 'Fife' 
			            WHEN police_force = 95 THEN 'Lothian and Borders' 
			            WHEN police_force = 96 THEN 'Central' 
			            WHEN police_force = 97 THEN 'Strathclyde' 
			            WHEN police_force = 98 THEN 'Dumfries and Galloway'
			            WHEN police_force = 99 THEN 'Police Scotland' 
	                    ELSE NULL 
						END 

--road surface conditions

UPDATE uk_accidents.dbo.accidents
SET road_surface_conditions = CASE WHEN road_surface_conditions = 1 THEN 'Dry'
                                   WHEN road_surface_conditions = 2 THEN 'Wet or damp'
								   WHEN road_surface_conditions = 3 THEN 'Snow'
								   WHEN road_surface_conditions = 4 THEN 'Frost or ice'
								   WHEN road_surface_conditions = 5 THEN 'Flood over 3cm. deep'
								   WHEN road_surface_conditions = 9 THEN 'unknown (self reported)'
								   ELSE NULL 
								   END


--road type

UPDATE uk_accidents.dbo.accidents
SET road_type = CASE WHEN road_type = 1  THEN 'Roundabout'
                     WHEN road_type = 2  THEN 'One way street'
					 WHEN road_type = 3  THEN 'Dual carriageway'
					 WHEN road_type = 6  THEN 'Single carriageway'
					 WHEN road_type = 7  THEN 'Slip road'
					 WHEN road_type = 9  THEN 'Unknown'
					 WHEN road_type = 12 THEN 'One way street/Slip road'
					 ELSE NULL
					 END

--second road class

UPDATE uk_accidents.dbo.accidents
SET second_road_class = CASE WHEN second_road_class = 0  THEN 'Not at junction or within 20 metres'
                             WHEN second_road_class = 1  THEN 'Motorway'
							 WHEN second_road_class = 2  THEN 'A(M)'
							 WHEN second_road_class = 3  THEN 'A'
							 WHEN second_road_class = 4  THEN 'B'
							 WHEN second_road_class = 5  THEN 'C'
							 WHEN second_road_class = 6  THEN 'Unclassified'
							 WHEN second_road_class = 9  THEN '9'
							 ELSE NULL
							 END

--second road number

Update uk_accidents.dbo.accidents
SET second_road_number = Case WHEN second_road_number = -1 THEN 'Unknown'
                              WHEN second_road_number =  0 THEN 'Road class is C or Unclassified'
							  END
WHERE second_road_number = -1
OR    second_road_number =  0
      


--special conditions at site

UPDATE uk_accidents.dbo.accidents
SET special_conditions_at_site = CASE WHEN special_conditions_at_site = 0 THEN 'None'
                                      WHEN special_conditions_at_site = 1 THEN 'Auto traffic signal - out'
									  WHEN special_conditions_at_site = 2 THEN 'Auto signal part defective'
									  WHEN special_conditions_at_site = 3 THEN 'Road sign or marking defective or obscured'
									  WHEN special_conditions_at_site = 4 THEN 'Roadworks'
									  WHEN special_conditions_at_site = 5 THEN 'Road surface defective'
									  WHEN special_conditions_at_site = 6 THEN 'Oil or diesel'
									  WHEN special_conditions_at_site = 7 THEN 'Mud'
									  WHEN special_conditions_at_site = 9 THEN 'unknown (self reported)'
									  ELSE NULL
									  END


--trunk road flags

UPDATE uk_accidents.dbo.accidents
SET trunk_road_flag = CASE WHEN trunk_road_flag = 1 THEN 'Trunk (Roads managed by Highways England)'
                           WHEN trunk_road_flag = 2 THEN 'Non-trunk'
						   ELSE NULL
						   END


--urban or rural area

UPDATE uk_accidents.dbo.accidents
SET urban_or_rural_area = CASE WHEN urban_or_rural_area = 1 THEN 'Urban'
                               WHEN urban_or_rural_area = 2 THEN 'Rural'
							   WHEN urban_or_rural_area = 3 THEN 'Unallocated'
							   ELSE NULL
							   END		


--weather conditions

UPDATE uk_accidents.dbo.accidents
SET weather_conditions = CASE WHEN weather_conditions = 1 THEN 'Fine no high winds'
                              WHEN weather_conditions = 2 THEN 'Raining no high winds'
							  WHEN weather_conditions = 3 THEN 'Snowing no high winds'
							  WHEN weather_conditions = 4 THEN 'Fine + high winds'
							  WHEN weather_conditions = 5 THEN 'Raining + high winds'
							  WHEN weather_conditions = 6 THEN 'Snowing + high winds'
							  WHEN weather_conditions = 7 THEN 'Fog or mist'
							  WHEN weather_conditions = 8 THEN 'Other'
							  WHEN weather_conditions = 9 THEN 'Unknown'
							  ELSE NULL 
							  END							   				   


							 





					    





