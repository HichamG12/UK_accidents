--Label trunk road flags

UPDATE UK_accidents.dbo.accidents
SET trunk_road_flag = CASE WHEN trunk_road_flag = 1 THEN REPLACE(trunk_road_flag, 1, 'Trunk (Roads managed by Highways England)')
                           WHEN trunk_road_flag = 2 THEN REPLACE(trunk_road_flag, 2, 'Non-trunk')
						   ELSE NULL
						   END