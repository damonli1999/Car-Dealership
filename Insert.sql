insert into used_car(
	car_id,
	year,
	make,
	model,
	mileage 
) values (
	1,
	2019,
	'Honda',
	'Accord',
	'20000'
)

insert into used_car(
	car_id,
	year,
	make,
	model,
	mileage 
) values (
	2,
	2022,
	'Kia',
	'Optima',
	'1431'
)

insert into new_car(
	car_id,
	year,
	make,
	model,
	mileage 
) values (
	1,
	2022,
	'Ford',
	'Explorer',
	'0'
)

insert into new_car(
	car_id,
	year,
	make,
	model,
	mileage 
) values (
	2,
	2023,
	'Honda',
	'Civic',
	'10'
)


insert into mechanic(
	mechanic_id,
	fist_name,
	last_name
) values (
	1,
	'Max',
	'Apple'
)

insert into mechanic(
	mechanic_id,
	fist_name,
	last_name
) values (
	2,
	'Rob',
	'Hummer'
)

insert into mechanic(
	mechanic_id,
	fist_name,
	last_name
) values (
	3,
	'Bob',
	'Joe'
)

insert into mechanic(
	mechanic_id,
	fist_name,
	last_name
) values (
	4,
	'Eddy',
	'Marley'
)

insert into parts(
	part_id,
	amount 
) values(
	1,
	12.99
)

insert into parts(
	part_id,
	amount 
) values(
	2,
	25.99
)

insert into salesperson(
	staff_id,
	first_name,
	last_name
) values (
	1,
	'Steve',
	'Aoki'
)

insert into salesperson(
	staff_id,
	first_name,
	last_name
) values (
	2,
	'Justin',
	'Beiber'
)

insert into salesperson(
	staff_id,
	first_name,
	last_name
) values (
	3,
	'Chris',
	'Evans'
)

insert into service(
	service_ticket,
	service_type,
	amount 
) values (
	1,
	'Oil Change',
	27.99
)

insert into service(
	service_ticket,
	service_type,
	amount 
) values (
	2,
	'Tire Rotation',
	79.99
)


CREATE OR REPLACE FUNCTION add_staff(_staff_id Integer, _first_name VARCHAR, _last_name VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO salesperson(staff_id,first_name,last_name)
	VALUES(_staff_id, _first_name, _last_name);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_staff(500,'John', 'Doe');


CREATE OR REPLACE FUNCTION add_mechanic(_mechanic_id Integer, _fist_name VARCHAR, _last_name VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO mechanic(mechanic_id,fist_name,last_name)
	VALUES(_mechanic_id, _fist_name, _last_name);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_mechanic(20,'Dwayne', 'Johnson');

select * from mechanic

