create schema library

create table library.Books(
	book_id serial primary key,
	title varchar(100) not null,
	author varchar(50) not null,
	published_year int,
	price numeric(10,2)
);

SELECT datname FROM pg_database

SELECT nspname FROM pg_catalog.pg_namespace;

SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_name = 'books';

