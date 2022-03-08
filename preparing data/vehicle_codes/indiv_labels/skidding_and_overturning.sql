--skidding_and_overturning
 UPDATE UK_accidents.dbo.vehicles
SET skidding_and_overturning = CASE WHEN skidding_and_overturning = 0  THEN REPLACE(skidding_and_overturning, 0, 'None')
                                    WHEN skidding_and_overturning = 1  THEN REPLACE(skidding_and_overturning, 1, 'Skidded')
							        WHEN skidding_and_overturning = 2  THEN REPLACE(skidding_and_overturning, 2, 'Skidded and overturned')
							        WHEN skidding_and_overturning = 3  THEN REPLACE(skidding_and_overturning, 3, 'Jackknifed')
							        WHEN skidding_and_overturning = 4  THEN REPLACE(skidding_and_overturning, 4, 'Jackknifed and overturned')
							        WHEN skidding_and_overturning = 5  THEN REPLACE(skidding_and_overturning, 5, 'Overturned')
							        WHEN skidding_and_overturning = 9  THEN REPLACE(skidding_and_overturning, 9, 'unknown (self reported)')
							        ELSE NULL 
							        END