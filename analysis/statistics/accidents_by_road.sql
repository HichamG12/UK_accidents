
--counting number of accidents by severity
   
   select
   accident_severity,
   COUNT(accident_index) AS number_of_accidents
   FROM
   dbo.accidents
   where 
   accident_severity IS NOT NULL
   GROUP BY 
   accident_severity  
   ORDER BY
   COUNT(accident_index) DESC
   ---------------------------------------------------------

   --counting number of accidents by road type
   select
   road_type,
   COUNT(accident_index) AS number_of_accidents
   FROM
   dbo.accidents
   where
   road_type <> 'Unknown' 
   AND
   road_type IS NOT NULL
   GROUP BY 
   road_type
   ORDER BY
   COUNT(accident_index) DESC
   --------------------------------------------------------------

   --counting number of accidents by area
   SELECT
     urban_or_rural_area,
   CASE 
      WHEN urban_or_rural_area = 'urban'
   THEN
      COUNT(accident_index)
      WHEN urban_or_rural_area = 'rural'
   THEN
      COUNT(accident_index)
      WHEN urban_or_rural_area = 'Unallocated'
   THEN
     COUNT(accident_index)
   END
     AS number_of_accidents
   FROM
     dbo.accidents
   WHERE urban_or_rural_area IS NOT NULL	 
   GROUP BY 
     urban_or_rural_area
   ORDER BY
    COUNT(accident_index) DESC