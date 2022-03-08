--vehicle accidents by type
SELECT vehicle_type,
       count(accident_index) AS vehicle_accidents
FROM vehicles
WHERE vehicle_type IS NOT NULL
   and vehicle_type != 'Unknown vehicle type (self rep only)'
GROUP BY vehicle_type
ORDER BY count(accident_index) DESC