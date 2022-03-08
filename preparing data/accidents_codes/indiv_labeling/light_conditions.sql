--light_conditions

UPDATE UK_accidents.dbo.accidents
SET light_conditions = CASE WHEN light_conditions = 1 THEN REPLACE(light_conditions, 1, 'Daylight')
                            WHEN light_conditions = 4 THEN REPLACE(light_conditions, 4, 'Darkness - lights lit')
							WHEN light_conditions = 5 THEN REPLACE(light_conditions, 5, 'Darkness - lights unlit')
							WHEN light_conditions = 6 THEN REPLACE(light_conditions, 6, 'Darkness - no lighting')
							WHEN light_conditions = 7 THEN REPLACE(light_conditions, 7, 'Darkness - lighting unknown')
						    ELSE NULL
							END