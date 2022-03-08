--urban_or_rural_area

UPDATE UK_accidents.dbo.accidents
SET urban_or_rural_area = CASE WHEN urban_or_rural_area = 1 THEN REPLACE(urban_or_rural_area, 1, 'Urban')
                               WHEN urban_or_rural_area = 1 THEN REPLACE(urban_or_rural_area, 1, 'Rural')
							   WHEN urban_or_rural_area = 1 THEN REPLACE(urban_or_rural_area, 1, 'Unallocated')
							   ELSE NULL
							   END