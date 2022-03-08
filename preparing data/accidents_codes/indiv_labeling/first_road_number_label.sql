--Label first road number

Update UK_accidents.dbo.accidents
SET first_road_number = CASE WHEN first_road_number = 0 
                             THEN REPLACE(first_road_number, 0, 'Road class is C or Unclassified')
							 END
WHERE first_road_number = 0 

