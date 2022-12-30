
create table if not exists staging.Dim_Customer(
	id serial primary key,
	e_name varchar(255)
);

create table if not exists staging.Dim_Products(
	id serial primary key,
	name varchar(255)
);

create table if not exists staging.Dim_Order(
	id serial primary key,
	pid int,
	eid int,
	qty int,
	order_date varchar(255)
);

-- Inserting data to dim_customer
insert into staging.dim_customer (e_name) values('saman');
insert into staging.dim_customer (e_name) values('kamal');
insert into staging.dim_customer (e_name) values('meena');

-- Inserting data to dim_products
insert into staging.dim_products (name) Values('Sony headset');
insert into staging.dim_products (name) Values('Ankor headset');
insert into staging.dim_products (name) Values('WJ headset');
insert into staging.dim_products (name) Values('Razor headset');
insert into staging.dim_products (name) Values('Infinity headset');

-- Inserting data to dim_order
insert into staging.dim_order (pid, eid, qty, order_date) values(1,2,1,'2022-02-05');
insert into staging.dim_order (pid, eid, qty, order_date) values(1,4,4,'2022-01-15');
insert into staging.dim_order (pid, eid, qty, order_date) values(2,1,1,'2022-02-05');
insert into staging.dim_order (pid, eid, qty, order_date) values(3,3,4,'2022-01-05');
insert into staging.dim_order (pid, eid, qty, order_date) values(2,1,1,'2022-02-05');
insert into staging.dim_order (pid, eid, qty, order_date) values(3,3,4,'2022-01-15');