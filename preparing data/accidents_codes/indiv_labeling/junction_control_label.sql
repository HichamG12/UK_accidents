--label junction detail

UPDATE UK_accidents.dbo.accidents
SET junction_control = CASE WHEN junction_control = 0 THEN REPLACE(junction_control, 0, 'Not at junction or within 20 metres')
                            WHEN junction_control = 1 THEN REPLACE(junction_control, 1, 'Authorised person')
							WHEN junction_control = 2 THEN REPLACE(junction_control, 2, 'Auto traffic signal')
							WHEN junction_control = 3 THEN REPLACE(junction_control, 3, 'Stop sign')
							WHEN junction_control = 4 THEN REPLACE(junction_control, 4, 'Give way or uncontrolled')
							WHEN junction_control = 9 THEN REPLACE(junction_control, 9, 'unknown (self reported)')
							ELSE NULL
							END

                            