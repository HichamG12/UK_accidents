--Label junction detail

UPDATE UK_accidents.dbo.accidents
SET junction_detail = CASE WHEN junction_detail = 0  THEN REPLACE(junction_detail, 0, 'Not at junction or within 20 metres')
                           WHEN junction_detail = 1  THEN REPLACE(junction_detail, 1, 'Roundabout')
						   WHEN junction_detail = 2  THEN REPLACE(junction_detail, 2, 'Mini-roundabout')
						   WHEN junction_detail = 3  THEN REPLACE(junction_detail, 3, 'T or staggered junction')
						   WHEN junction_detail = 5  THEN REPLACE(junction_detail, 5, 'Slip road')
						   WHEN junction_detail = 6  THEN REPLACE(junction_detail, 6, 'Crossroads')
						   WHEN junction_detail = 7  THEN REPLACE(junction_detail, 7, 'More than 4 arms (not roundabout)')
						   WHEN junction_detail = 8  THEN REPLACE(junction_detail, 8, 'Private drive or entrance')
						   WHEN junction_detail = 9  THEN REPLACE(junction_detail, 9, 'Other junction')
						   WHEN junction_detail = 99 THEN REPLACE(junction_detail, 99, 'unknown (self reported)')
						   ELSE NULL 
						   END


