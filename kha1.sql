create schema library

create table library.Books(
	book_id serial primary key,
	title varchar(100) not null,
	author varchar(50) not null,
	published_year int,
	price numeric(10,2)
);