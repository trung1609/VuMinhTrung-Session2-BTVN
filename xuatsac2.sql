create schema shop

create table shop.Users(
	user_id serial primary key,
	username varchar(50) unique not null,
	email varchar(100) not null unique,
	password varchar(100) not null,
	role varchar(20) check (role IN ('Customer','Admin'))
);

create table shop.Categories(
	category_id serial primary key,
	category_name varchar(100) unique not null
);

create table shop.Products(
	product_id serial primary key,
	product_name varchar(100) not null,
	price numeric(10,2) check(price>0),
	stock int check(stock>=0),
	category_id int not null,
	foreign key(category_id) references shop.Categories(category_id)
);

create table shop.Orders(
	order_id serial primary key,
	user_id int not null,
	order_date date not null,
	status varchar(20) CHECK (status IN ('Pending','Shipped','Delivered','Cancelled')),
	foreign key(user_id) references shop.Users(user_id)
);

create table shop.OrderDetails(
	order_detail_id serial primary key,
	order_id int not null,
	product_id int not null,
	quantity int check(quantity>0),
	price_each numeric(10,2) check(price_each>0),
	foreign key(order_id) references shop.Orders(order_id),
	foreign key(product_id) references shop.Products(product_id)
);

create table shop.Payments(
	payment_id serial primary key,
	order_id int not null,
	amount numeric(10,2) check(amount>=0),
	payment_date date not null,
	method varchar(30) check (method IN ('Credit Card','Momo','Bank Transfer','Cash')),
	foreign key(order_id) references shop.Orders(order_id)
);