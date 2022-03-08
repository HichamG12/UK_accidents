--age band of casualty

UPDATE uk_accidents.dbo.casualties
SET age_band_of_casualty = CASE
                               WHEN age_band_of_casualty = 1 THEN '0 - 5'
                               WHEN age_band_of_casualty = 2 THEN '6 - 10'
                               WHEN age_band_of_casualty = 3 THEN '11 - 15'
                               WHEN age_band_of_casualty = 4 THEN '16 - 20'
                               WHEN age_band_of_casualty = 5 THEN '21 - 25'
                               WHEN age_band_of_casualty = 6 THEN '26 - 35'
                               WHEN age_band_of_casualty = 7 THEN '36 - 45'
                               WHEN age_band_of_casualty = 8 THEN '46 - 55'
                               WHEN age_band_of_casualty = 9 THEN '56 - 65'
                               WHEN age_band_of_casualty = 10 THEN '66 - 75'
                               WHEN age_band_of_casualty = 11 THEN 'Over 75'
                               ELSE NULL
                           END 



--age_of_casualty

UPDATE uk_accidents.dbo.casualties
SET age_of_casualty = NULL
WHERE age_of_casualty = -1 



--bus_or_coach_passenger

UPDATE uk_accidents.dbo.casualties
SET bus_or_coach_passenger = CASE
                                 WHEN bus_or_coach_passenger = 0 THEN 'Not a bus or coach passenger'
                                 WHEN bus_or_coach_passenger = 1 THEN 'Boarding'
                                 WHEN bus_or_coach_passenger = 2 THEN 'Alighting'
                                 WHEN bus_or_coach_passenger = 3 THEN 'Standing passenger'
                                 WHEN bus_or_coach_passenger = 4 THEN 'Seated passenger'
                                 WHEN bus_or_coach_passenger = 9 THEN 'unknown (self reported)'
                                 ELSE NULL
                             END 




--car_passenger

UPDATE uk_accidents.dbo.casualties
SET car_passenger = CASE
                        WHEN car_passenger = 0 THEN 'Not car passenger'
                        WHEN car_passenger = 1 THEN 'Front seat passenger'
                        WHEN car_passenger = 2 THEN 'Rear seat passenger'
                        WHEN car_passenger = 9 THEN 'unknown (self reported)'
                        ELSE NULL
                    END 




--casualty_class

UPDATE uk_accidents.dbo.casualties
SET casualty_class = CASE
                         WHEN casualty_class = 1 THEN 'Driver or rider'
                         WHEN casualty_class = 2 THEN 'Passenger'
                         WHEN casualty_class = 3 THEN 'Pedestrian'
                     END 




--casualty_home_area_type

UPDATE uk_accidents.dbo.casualties
SET casualty_home_area_type = CASE
                                  WHEN casualty_home_area_type = 1 THEN 'Urban area'
                                  WHEN casualty_home_area_type = 2 THEN 'Small town'
                                  WHEN casualty_home_area_type = 3 THEN 'Rural'
                                  ELSE NULL
                              END 




--casualty_imd_decile

UPDATE uk_accidents.dbo.casualties
SET casualty_imd_decile = CASE
                              WHEN casualty_imd_decile = 1 THEN 'Most deprived 10%'
                              WHEN casualty_imd_decile = 2 THEN 'More deprived 10-20%'
                              WHEN casualty_imd_decile = 3 THEN 'More deprived 20-30%'
                              WHEN casualty_imd_decile = 4 THEN 'More deprived 30-40%'
                              WHEN casualty_imd_decile = 5 THEN 'More deprived 40-50%'
                              WHEN casualty_imd_decile = 6 THEN 'Less deprived 40-50%'
                              WHEN casualty_imd_decile = 7 THEN 'Less deprived 30-40%'
                              WHEN casualty_imd_decile = 8 THEN 'Less deprived 20-30%'
                              WHEN casualty_imd_decile = 9 THEN 'Less deprived 10-20%'
                              WHEN casualty_imd_decile = 10 THEN 'Least deprived 10%'
                              ELSE NULL
                          END 




--casualty_severity

UPDATE uk_accidents.dbo.casualties
SET casualty_severity = CASE
                            WHEN casualty_severity = 1 THEN 'Fatal'
                            WHEN casualty_severity = 2 THEN 'Serious'
                            WHEN casualty_severity = 3 THEN 'Slight'
                        END 




--casualty_type

ALTER TABLE dbo.casualties
ALTER COLUMN casualty_type VARCHAR(60)
UPDATE uk_accidents.dbo.casualties
SET casualty_type = CASE
                        WHEN casualty_type = 0 THEN 'Pedestrian'
                        WHEN casualty_type = 1 THEN 'Cyclist'
                        WHEN casualty_type = 2 THEN 'Motorcycle 50cc and under rider or passenger'
                        WHEN casualty_type = 3 THEN 'Motorcycle 125cc and under rider or passenger'
                        WHEN casualty_type = 4 THEN 'Motorcycle over 125cc and up to 500cc rider or  passenger'
                        WHEN casualty_type = 5 THEN 'Motorcycle over 500cc rider or passenger'
                        WHEN casualty_type = 8 THEN 'Taxi/Private hire car occupant'
                        WHEN casualty_type = 9 THEN 'Car occupant'
                        WHEN casualty_type = 10 THEN 'Minibus (8 - 16 passenger seats) occupant'
                        WHEN casualty_type = 11 THEN 'Bus or coach occupant (17 or more pass seats)'
                        WHEN casualty_type = 16 THEN 'Horse rider'
                        WHEN casualty_type = 17 THEN 'Agricultural vehicle occupant'
                        WHEN casualty_type = 18 THEN 'Tram occupant'
                        WHEN casualty_type = 19 THEN 'Van / Goods vehicle (3.5 tonnes mgw or under) occupant'
                        WHEN casualty_type = 20 THEN 'Goods vehicle (over 3.5t. and under 7.5t.) occupant'
                        WHEN casualty_type = 21 THEN 'Goods vehicle (7.5 tonnes mgw and over) occupant'
                        WHEN casualty_type = 22 THEN 'Mobility scooter rider'
                        WHEN casualty_type = 23 THEN 'Electric motorcycle rider or passenger'
                        WHEN casualty_type = 90 THEN 'Other vehicle occupant'
                        WHEN casualty_type = 97 THEN 'Motorcycle - unknown cc rider or passenger'
                        WHEN casualty_type = 98 THEN 'Goods vehicle (unknown weight) occupant'
                        WHEN casualty_type = 99 THEN 'Unknown vehicle type (self rep only)'
                        WHEN casualty_type = 103 THEN 'Motorcycle - Scooter (1979-1998)'
                        WHEN casualty_type = 104 THEN 'Motorcycle (1979-1998)'
                        WHEN casualty_type = 105 THEN 'Motorcycle - Combination (1979-1998)'
                        WHEN casualty_type = 106 THEN 'Motorcycle over 125cc (1999-2004)'
                        WHEN casualty_type = 108 THEN 'Taxi (excluding private hire cars) (1979-2004)'
                        WHEN casualty_type = 109 THEN 'Car (including private hire cars) (1979-2004)'
                        WHEN casualty_type = 110 THEN 'Minibus/Motor caravan (1979-1998)'
                        WHEN casualty_type = 113 THEN 'Goods over 3.5 tonnes (1979-1998)'
                    END 




--pedestrian_location

ALTER TABLE dbo.casualties
ALTER COLUMN pedestrian_location VARCHAR(75)
UPDATE uk_accidents.dbo.casualties
SET pedestrian_location = CASE
                              WHEN pedestrian_location = 0 THEN 'Not a Pedestrian'
                              WHEN pedestrian_location = 1 THEN 'Crossing on pedestrian crossing facility'
                              WHEN pedestrian_location = 2 THEN 'Crossing in zig-zag approach lines'
                              WHEN pedestrian_location = 3 THEN 'Crossing in zig-zag exit lines'
                              WHEN pedestrian_location = 4 THEN 'Crossing elsewhere within 50m. of pedestrian crossing'
                              WHEN pedestrian_location = 5 THEN 'In carriageway, crossing elsewhere'
                              WHEN pedestrian_location = 6 THEN 'On footway or verge'
                              WHEN pedestrian_location = 7 THEN 'On refuge, central island or central reservation'
                              WHEN pedestrian_location = 8 THEN 'In centre of carriageway - not on refuge, island or central reservation'
                              WHEN pedestrian_location = 9 THEN 'In carriageway, not crossing'
                              WHEN pedestrian_location = 10 THEN 'Unknown or other'
                              ELSE NULL
                          END 




--pedestrian_movement

ALTER TABLE dbo.casualties
ALTER COLUMN pedestrian_movement VARCHAR(100)
UPDATE uk_accidents.dbo.casualties
SET pedestrian_movement = CASE
                              WHEN pedestrian_movement = 0 THEN 'Not a Pedestrian'
                              WHEN pedestrian_movement = 1 THEN 'Crossing from driver nearside'
                              WHEN pedestrian_movement = 2 THEN 'Crossing from nearside (masked by parked or stationary vehicle)'
                              WHEN pedestrian_movement = 3 THEN 'Crossing from driver offside'
                              WHEN pedestrian_movement = 4 THEN 'Crossing from offside (masked by  parked or stationary vehicle)'
                              WHEN pedestrian_movement = 5 THEN 'In carriageway stationary, not crossing (standing or playing)'
                              WHEN pedestrian_movement = 6 THEN 'In carriageway stationary, not crossing (standing or playing) masked by parked or stationary vehicle'
                              WHEN pedestrian_movement = 7 THEN 'Walking along in carriageway facing traffic'
                              WHEN pedestrian_movement = 8 THEN 'Walking along in carriageway back to traffic'
                              WHEN pedestrian_movement = 9 THEN 'Unknown or other'
                              ELSE NULL
                          END 




--pedestrian_road_maintenance_worker

UPDATE uk_accidents.dbo.casualties
SET pedestrian_road_maintenance_worker = CASE
                                             WHEN pedestrian_road_maintenance_worker = 0 THEN 'No / Not applicable'
                                             WHEN pedestrian_road_maintenance_worker = 1 THEN 'Yes'
                                             WHEN pedestrian_road_maintenance_worker = 2 THEN 'Not Known'
                                             WHEN pedestrian_road_maintenance_worker = 3 THEN 'Probable'
                                             ELSE NULL
                                         END 




--sex_of_casualty

UPDATE uk_accidents.dbo.casualties
SET sex_of_casualty = CASE
                          WHEN sex_of_casualty = 1 THEN 'Male'
                          WHEN sex_of_casualty = 2 THEN 'Female'
                          WHEN sex_of_casualty = 9 THEN 'unknown (self reported)'
                          ELSE NULL
                      END
