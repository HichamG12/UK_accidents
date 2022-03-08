--Label pedestrian crossing human control

UPDATE UK_accidents.dbo.accidents
SET pedestrian_crossing_human_control = CASE WHEN pedestrian_crossing_human_control = 0 THEN REPLACE(pedestrian_crossing_human_control, 0, 'None within 50 metres')
                                             WHEN pedestrian_crossing_human_control = 1 THEN REPLACE(pedestrian_crossing_human_control, 1, 'Control by school crossing patrol')
											 WHEN pedestrian_crossing_human_control = 2 THEN REPLACE(pedestrian_crossing_human_control, 2, 'Control by other authorised person')
											 WHEN pedestrian_crossing_human_control = 9 THEN REPLACE(pedestrian_crossing_human_control, 9, 'unknown (self reported)')
											 ELSE NULL 
