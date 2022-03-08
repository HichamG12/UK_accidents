--accidents on restricted lane
SELECT COUNT(accident_index) AS accidents,
       vehicle_location_restricted_lane
FROM dbo.vehicles
WHERE vehicle_location_restricted_lane IS NOT NULL
    AND vehicle_location_restricted_lane != 'unknown (self reported)'
GROUP BY vehicle_location_restricted_lane
ORDER BY COUNT(accident_index) DESC