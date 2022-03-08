
--Remplace accident severity codes by its labels

UPDATE UK_accidents.dbo.accidents
SET accident_severity = CASE WHEN accident_severity = 1 THEN REPLACE(accident_severity, 1, 'Fatal') 
                             WHEN accident_severity = 2 THEN REPLACE(accident_severity, 2, 'Serious') 
	                         WHEN accident_severity = 3 THEN REPLACE(accident_severity, 3, 'Slight') 
	                         ELSE NULL 
							 END