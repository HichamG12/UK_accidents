--Label first road class

UPDATE UK_accidents.dbo.accidents
SET first_road_class = CASE WHEN first_road_class = 1 THEN REPLACE(first_road_class, 1, 'Motorway')
                            WHEN first_road_class = 2 THEN REPLACE(first_road_class, 2, 'A(M)')
		                    WHEN first_road_class = 3 THEN REPLACE(first_road_class, 3, 'A')
		                    WHEN first_road_class = 4 THEN REPLACE(first_road_class, 4, 'B')
		                    WHEN first_road_class = 5 THEN REPLACE(first_road_class, 5, 'C')
		                    WHEN first_road_class = 6 THEN REPLACE(first_road_class, 6, 'Unclassified')
		                    ELSE NULL 
							END 
