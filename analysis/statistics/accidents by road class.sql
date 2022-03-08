
--accidents by road class

SELECT 
count(accident_index) as accidents,
accident_year,
first_road_class,
first_road_number
FROM [uk_accidents].[dbo].[accidents]
group by 
accident_year,
first_road_class,
first_road_number
order by
COUNT(accident_index) desc

select
COUNT(*)
from accidents
--where second_road_class is null