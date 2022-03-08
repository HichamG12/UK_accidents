
UPDATE UK_accidents.dbo.casualties
SET casualty_severity = CASE WHEN casualty_severity = 1 THEN REPLACE(casualty_severity, 1, 'Fatal')
                             WHEN casualty_severity = 2 THEN REPLACE(casualty_severity, 2, 'Serious')
							 WHEN casualty_severity = 3 THEN REPLACE(casualty_severity, 3, 'Slight')
							 END