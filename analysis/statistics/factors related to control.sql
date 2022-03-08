--factors related to control

SELECT COUNT (accident_index) AS number_of_accidents,
       SUM (vehicles) AS totalVehicles,
       SUM (casualties) AS totalCasualties,
           speed_limit,
           junction_control
FROM dbo.accidents
WHERE junction_control IS NOT NULL
    AND junction_control != 'unknown (self reported)'
    AND speed_limit NOT IN ('-1', 'NULL')
GROUP BY speed_limit,
         junction_control
ORDER BY COUNT (accident_index) DESC