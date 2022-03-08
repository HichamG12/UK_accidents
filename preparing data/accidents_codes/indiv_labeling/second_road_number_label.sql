--Label second road number

Update UK_accidents.dbo.accidents
SET second_road_number = Case WHEN second_road_number = -1 THEN REPLACE(second_road_number, -1, 'Unknown')
                              WHEN second_road_number = 0 THEN REPLACE(second_road_number, 0, 'Road class is C or Unclassified')
							  END
WHERE second_road_number = -1
OR    second_road_number = 0
      
