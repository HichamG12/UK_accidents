--factors related to nature

SELECT COUNT (accident_index) AS number_of_accidents,
             SUM (vehicles) AS totalVehicles,
                 SUM (casualties) AS totalCasualties,
                     light_conditions,
                     weather_conditions,
                     road_surface_conditions,
                     special_conditions_at_site,
                     carriageway_hazards
FROM dbo.accidents
WHERE light_conditions IS NOT NULL
    AND weather_conditions IS NOT NULL
    AND weather_conditions != 'Unknown'
    AND road_surface_conditions IS NOT NULL
    AND road_surface_conditions != 'unknown (self reported)'
    AND special_conditions_at_site IS NOT NULL
    AND special_conditions_at_site != 'unknown (self reported)'
    AND carriageway_hazards IS NOT NULL
    AND carriageway_hazards != 'unknown (self reported)'
GROUP BY light_conditions,
         weather_conditions,
         road_surface_conditions,
         special_conditions_at_site,
         carriageway_hazards
ORDER BY COUNT (accident_index) DESC




