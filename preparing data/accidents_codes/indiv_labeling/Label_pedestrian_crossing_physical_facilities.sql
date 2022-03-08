--Label pedestrian crossing physical facilities

UPDATE UK_accidents.dbo.accidents
SET pedestrian_crossing_physical_facilities = CASE WHEN pedestrian_crossing_physical_facilities = 0 THEN REPLACE(pedestrian_crossing_physical_facilities, 0, 'No physical crossing facilities within 50 metres')
                                                   WHEN pedestrian_crossing_physical_facilities = 1 THEN REPLACE(pedestrian_crossing_physical_facilities, 1, 'Zebra')
												   WHEN pedestrian_crossing_physical_facilities = 4 THEN REPLACE(pedestrian_crossing_physical_facilities, 4, 'non-junction pedestrian light crossing')
												   WHEN pedestrian_crossing_physical_facilities = 5 THEN REPLACE(pedestrian_crossing_physical_facilities, 5, 'Pedestrian phase at traffic signal junction')
												   WHEN pedestrian_crossing_physical_facilities = 7 THEN REPLACE(pedestrian_crossing_physical_facilities, 7, 'Footbridge or subway')
												   WHEN pedestrian_crossing_physical_facilities = 8 THEN REPLACE(pedestrian_crossing_physical_facilities, 8, 'Central refuge')
												   WHEN pedestrian_crossing_physical_facilities = 9 THEN REPLACE(pedestrian_crossing_physical_facilities, 9, 'unknown (self reported)')
												   ELSE NULL 
												   END