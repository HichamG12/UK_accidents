--special_conditions_at_site

UPDATE UK_accidents.dbo.accidents
SET special_conditions_at_site = CASE WHEN special_conditions_at_site = 0 THEN REPLACE(special_conditions_at_site, 0, 'None')
                                      WHEN special_conditions_at_site = 1 THEN REPLACE(special_conditions_at_site, 1, 'Auto traffic signal - out')
									  WHEN special_conditions_at_site = 2 THEN REPLACE(special_conditions_at_site, 2, 'Auto signal part defective')
									  WHEN special_conditions_at_site = 3 THEN REPLACE(special_conditions_at_site, 3, 'Road sign or marking defective or obscured')
									  WHEN special_conditions_at_site = 4 THEN REPLACE(special_conditions_at_site, 4, 'Roadworks')
									  WHEN special_conditions_at_site = 5 THEN REPLACE(special_conditions_at_site, 5, 'Road surface defective')
									  WHEN special_conditions_at_site = 6 THEN REPLACE(special_conditions_at_site, 6, 'Oil or diesel')
									  WHEN special_conditions_at_site = 7 THEN REPLACE(special_conditions_at_site, 7, 'Mud')
									  WHEN special_conditions_at_site = 9 THEN REPLACE(special_conditions_at_site, 9, 'unknown (self reported)')
									  ELSE NULL
									  END
