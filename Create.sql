
create table parts (
	part_id SERIAL primary key,
	amount numeric (8,2)
)

create table salesperson(
	staff_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
)

create table used_car(
	car_id SERIAl primary key,
	year Integer,
	make VARCHAR(100),
	model VARCHAR(100),
	mileage Integer
)


create table new_car(
	car_id SERIAl primary key,
	year Integer,
	make VARCHAR(100),
	model VARCHAR(100),
	mileage Integer
)

create table appointment(
	appointmrnt_id SERIAL primary key,
	staff_id SERIAL not null,
	foreign key (staff_id) references salesperson(staff_id)
)

create table mechanic(
	mechanic_id SERIAL primary key,
	fist_name VARCHAR(100),
	last_name VARCHAR(100)
)

create table service_history(
	previous_service date primary key,
	amount NUMERIC(8,2),
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	customer_id SERIAL not null,
	staff_id SERIAL not null,
	mechanic_id SERIAL not null,
	foreign key (customer_id) references customer(customer_id),
	foreign key (staff_id) references salesperson(staff_id),
	foreign key (mechanic_id) references mechanic(mechanic_id)
)


create table service(
	service_ticket integer primary key,
	service_type VARCHAR(100),
	amount NUMERIC(8,3),
	car_id SERIAL not null,
	part_id SERIAL not null,
	foreign key (car_id) references used_car(car_id),
	foreign key (part_id) references parts(part_id)
)

create table invoice(
	invocie_id Integer primary key,
	amount NUMERIC(8,2),
	car_id SERIAL,
	staff_id SERIAL not null,
	part_id SERIAL not null,
	service_ticket Integer not null,
	foreign key (staff_id) references salesperson(staff_id),
	foreign key (part_id) references parts(part_id),
	foreign key (service_ticket) references service(service_ticket)
)


create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	service_ticket Integer not null,
	invocie_id Integer not null,
	appointmrnt_id Integer not null,
	part_id SERIAL not null,
	used_car_id SERIAL not null,
	new_car_id SERIAL not null,
	foreign key (service_ticket) references service(service_ticket),
	foreign key (invocie_id) references invoice(invocie_id),
	foreign key (appointmrnt_id) references appointment(appointmrnt_id),
	foreign key (part_id)  references parts(part_id),
	foreign key (used_car_id) references used_car(car_id),
	foreign key (new_car_id) references new_car(car_id)
)






