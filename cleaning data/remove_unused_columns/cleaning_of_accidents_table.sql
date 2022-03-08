--remove unused columns from accident table

ALTER TABLE accidents
DROP COLUMN
accident_reference,
location_easting_osgr,
location_northing_osgr,
longitude,
latitude,
local_authority_district,
local_authority_ons_district,
local_authority_highway,
did_police_officer_attend_scene_of_accident,
lsoa_of_accident_location,
number_of_vehicles,
number_of_casualties


--remove unused columns from casualties table

ALTER TABLE casualties
DROP COLUMN 
accident_reference,
age_of_casualty


--remove unused columns from vehicles table

ALTER TABLE vehicles
DROP COLUMN
accident_reference,
age_of_driver,
age_of_vehicle


