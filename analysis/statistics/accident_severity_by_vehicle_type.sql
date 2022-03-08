--accident severity by vehicle type

SELECT accidents.accident_severity,
       vehicles.vehicle_type,
       COUNT(vehicles.vehicle_type) AS total_accidents
FROM dbo.accidents
INNER JOIN dbo.vehicles ON accidents.accident_index = vehicles.accident_index
WHERE accident_severity = 'Fatal'
    AND vehicle_type IS NOT NULL
GROUP BY accident_severity,
         vehicle_type
ORDER BY COUNT(vehicles.vehicle_type) DESC

SELECT accidents.accident_severity,
       vehicles.vehicle_type,
       COUNT(vehicles.vehicle_type) AS total_accidents
FROM dbo.accidents
INNER JOIN dbo.vehicles ON accidents.accident_index = vehicles.accident_index
WHERE accident_severity = 'Slight'
    AND vehicle_type IS NOT NULL
GROUP BY accident_severity,
         vehicle_type
ORDER BY COUNT(vehicles.vehicle_type) DESC


SELECT accidents.accident_severity,
       vehicles.vehicle_type,
       COUNT(vehicles.vehicle_type) AS total_accidents
FROM dbo.accidents
INNER JOIN dbo.vehicles ON accidents.accident_index = vehicles.accident_index
WHERE accident_severity = 'Serious'
    AND vehicle_type IS NOT NULL
GROUP BY accident_severity,
         vehicle_type
ORDER BY COUNT(vehicles.vehicle_type) DESC
