--Tạo database LibraryDB
create database LibraryDB;
--Tạo schema library
create schema library;
--Tạo bảng books trong schema library
create table library.books(
	book_id bigserial primary key,
	title varchar(100) not null,
	author varchar(50) not null,
	published_year int,
	price numeric(10,2)
);
--Xem tất cả database
select datname
from pg_database
where datistemplate = false;
--Xem tất cả schema trong LibraryDB
select schema_name
from information_schema.schemata;
--Xem cấu trúc bảng books
select
	column_name,
	data_type,
	character_maximum_length,
	is_nullable
from information_schema.columns
where table_schema = 'library'
and table_name = 'books';