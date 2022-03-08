--did_police_officer_attend_scene_of_accident

UPDATE UK_accidents.dbo.accidents
SET did_police_officer_attend_scene_of_accident = CASE WHEN did_police_officer_attend_scene_of_accident = '1'THEN REPLACE(did_police_officer_attend_scene_of_accident, '1', 'Yes')
                                                       WHEN did_police_officer_attend_scene_of_accident = '2'THEN REPLACE(did_police_officer_attend_scene_of_accident, '2', 'No')
													   WHEN did_police_officer_attend_scene_of_accident = '3'THEN REPLACE(did_police_officer_attend_scene_of_accident, '3', 'No accident was reported')
													   ELSE NULL
													   END
