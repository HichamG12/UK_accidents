--total accidents by year

SELECT accident_year,
       COUNT(accident_index) AS total_accidents
FROM accidents
GROUP BY accident_year
ORDER BY accident_year DESC