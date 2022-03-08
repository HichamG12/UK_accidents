--towing_and_articulation

UPDATE UK_accidents.dbo.vehicles
SET towing_and_articulation = CASE WHEN towing_and_articulation = 0 THEN REPLACE(towing_and_articulation, 0, 'No tow/articulation')
                                   WHEN towing_and_articulation = 1 THEN REPLACE(towing_and_articulation, 1, 'Articulated vehicle')
								   WHEN towing_and_articulation = 2 THEN REPLACE(towing_and_articulation, 2, 'Double or multiple trailer')
								   WHEN towing_and_articulation = 3 THEN REPLACE(towing_and_articulation, 3, 'Caravan')
								   WHEN towing_and_articulation = 4 THEN REPLACE(towing_and_articulation, 4, 'Single trailer')
								   WHEN towing_and_articulation = 5 THEN REPLACE(towing_and_articulation, 5, 'Other tow')
								   WHEN towing_and_articulation = 9 THEN REPLACE(towing_and_articulation, 9, 'unknown (self reported)')
								   ELSE NULL 
								   END