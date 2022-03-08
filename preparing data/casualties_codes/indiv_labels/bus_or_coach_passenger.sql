
UPDATE UK_accidents.dbo.casualties
SET bus_or_coach_passenger = CASE WHEN bus_or_coach_passenger = 0 THEN REPLACE(bus_or_coach_passenger, 0, 'Not a bus or coach passenger')
                                  WHEN bus_or_coach_passenger = 1 THEN REPLACE(bus_or_coach_passenger, 1, 'Boarding')
								  WHEN bus_or_coach_passenger = 2 THEN REPLACE(bus_or_coach_passenger, 2, 'Alighting')
								  WHEN bus_or_coach_passenger = 3 THEN REPLACE(bus_or_coach_passenger, 3, 'Standing passenger')
								  WHEN bus_or_coach_passenger = 4 THEN REPLACE(bus_or_coach_passenger, 4, 'Seated passenger')
								  WHEN bus_or_coach_passenger = 9 THEN REPLACE(bus_or_coach_passenger, 9, 'unknown (self reported)')
								  ELSE NULL 
								  END 