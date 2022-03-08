--Label second road class

UPDATE UK_accidents.dbo.accidents
SET second_road_class = CASE WHEN second_road_class = 0  THEN REPLACE(second_road_class, 0, 'Not at junction or within 20 metres')
                             WHEN second_road_class = 1  THEN REPLACE(second_road_class, 1, 'Motorway')
							 WHEN second_road_class = 2  THEN REPLACE(second_road_class, 2, 'A(M)')
							 WHEN second_road_class = 3  THEN REPLACE(second_road_class, 3, 'A')
							 WHEN second_road_class = 4  THEN REPLACE(second_road_class, 4, 'B')
							 WHEN second_road_class = 5  THEN REPLACE(second_road_class, 5, 'C')
							 WHEN second_road_class = 6  THEN REPLACE(second_road_class, 6, 'Unclassified')
							 WHEN second_road_class = 9  THEN REPLACE(second_road_class, 9, '9')
							 WHEN second_road_class = -1 THEN REPLACE(second_road_class, -1, NULL)
							 END


							 

