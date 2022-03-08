--carriageway_hazards

UPDATE UK_accidents.dbo.accidents
SET carriageway_hazards = CASE WHEN carriageway_hazards = 0 THEN REPLACE(carriageway_hazards, 0, 'None')
                               WHEN carriageway_hazards = 1 THEN REPLACE(carriageway_hazards, 1, 'Vehicle load on road')
							   WHEN carriageway_hazards = 2 THEN REPLACE(carriageway_hazards, 2, 'Other object on road')
							   WHEN carriageway_hazards = 3 THEN REPLACE(carriageway_hazards, 3, 'Previous accident')
							   WHEN carriageway_hazards = 6 THEN REPLACE(carriageway_hazards, 6, 'Pedestrian in carriageway not injured')
							   WHEN carriageway_hazards = 7 THEN REPLACE(carriageway_hazards, 7, 'Any animal in carriageway (except ridden horse)')
							   WHEN carriageway_hazards = 9 THEN REPLACE(carriageway_hazards, 9, 'unknown (self reported)')
							   ELSE NULL 
							   END
