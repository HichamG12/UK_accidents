
UPDATE UK_accidents.dbo.casualties
SET casualty_home_area_type = CASE WHEN casualty_home_area_type = 1 THEN REPLACE(casualty_home_area_type, 1, 'Urban area')
                                   WHEN casualty_home_area_type = 2 THEN REPLACE(casualty_home_area_type, 2, 'Small town')
								   WHEN casualty_home_area_type = 3 THEN REPLACE(casualty_home_area_type, 3, 'Rural')
								   ELSE NULL 
								   END