--engine_capacity
--age_of_vehicle
--generic_make_model

UPDATE UK_accidents.dbo.vehicles
SET engine_capacity_cc = NULL WHERE engine_capacity_cc = -1

UPDATE UK_accidents.dbo.vehicles
SET age_of_vehicle = NULL WHERE age_of_vehicle = -1

UPDATE UK_accidents.dbo.vehicles
SET generic_make_model = NULL WHERE generic_make_model = '-1'