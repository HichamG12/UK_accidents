
--cast data types for accidents table

ALTER TABLE dbo.accidents
ADD
vehicles INT,
casualties INT


UPDATE uk_accidents.dbo.accidents
SET vehicles = convert(int, number_of_vehicles),
	casualties = convert(int, number_of_casualties)



---------------------------------------------------------------------------

--cast data types for casualties table

ALTER TABLE dbo.casualties
ADD casualty_age INT


UPDATE uk_accidents.dbo.casualties
SET casualty_age = CONVERT(int, age_of_casualty)




---------------------------------------------------------------------------

--cast data types for vehicles table

ALTER TABLE dbo.vehicles
ADD driver_age INT,
    vehicle_age INT


UPDATE uk_accidents.dbo.vehicles
SET driver_age = convert(int, age_of_driver),
    vehicle_age = convert(int, age_of_vehicle)









