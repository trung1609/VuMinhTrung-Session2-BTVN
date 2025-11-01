
CREATE SCHEMA sales;


CREATE TABLE sales.customers (
    customer_id serial primary key,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    email varchar(255) NOT NULL unique,
    phone int 
);

CREATE TABLE sales.orderitems (
    order_item_id serial primary key,
    order_id int NOT NULL,
    product_id int NOT NULL,
    quantity int check(quantity>1),
   	foreign key(order_id) references sales.Orders(order_id),
	foreign key(product_id) references sales.Products(product_id)
);


CREATE TABLE sales.orders (
    order_id serial primary key,
    customer_id int NOT NULL,
    order_date timestamp Default now(),
	foreign key(customer_id) references sales.Customers(customer_id)
);



CREATE TABLE sales.products (
    product_id serial primary key,
    product_name varchar(100) not null unique,
    price numeric(10,2) NOT NULL,
    stock_quantity int NOT NULL
);


