
UPDATE UK_accidents.dbo.casualties
SET casualty_imd_decile = CASE WHEN casualty_imd_decile = 1  THEN REPLACE(casualty_imd_decile, 1 , 'Most deprived 10%')
                               WHEN casualty_imd_decile = 2  THEN REPLACE(casualty_imd_decile, 2 , 'More deprived 10-20%')
							   WHEN casualty_imd_decile = 3  THEN REPLACE(casualty_imd_decile, 3 , 'More deprived 20-30%')
							   WHEN casualty_imd_decile = 4  THEN REPLACE(casualty_imd_decile, 4 , 'More deprived 30-40%')
							   WHEN casualty_imd_decile = 5  THEN REPLACE(casualty_imd_decile, 5 , 'More deprived 40-50%')
							   WHEN casualty_imd_decile = 6  THEN REPLACE(casualty_imd_decile, 6 , 'Less deprived 40-50%')
							   WHEN casualty_imd_decile = 7  THEN REPLACE(casualty_imd_decile, 7 , 'Less deprived 30-40%')
							   WHEN casualty_imd_decile = 8  THEN REPLACE(casualty_imd_decile, 8 , 'Less deprived 20-30%')
							   WHEN casualty_imd_decile = 9  THEN REPLACE(casualty_imd_decile, 9 , 'Less deprived 10-20%')
							   WHEN casualty_imd_decile = 10 THEN REPLACE(casualty_imd_decile, 10, 'Least deprived 10%')
							   ELSE NULL 
							   END