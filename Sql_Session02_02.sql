-- Tạo database UniversityDB
create database UniversityDB;
-- Tạo schema university
create schema university;
-- Tạo table Students
create table university.students(
	student_id bigserial primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	birth_date date,
	email varchar(200) not null unique
);
-- Tạo table Courses
create table university.courses(
	course_id bigserial primary key,
	course_name varchar(100) not null,
	credits int
);
-- Tạo table Enrollments
create table university.enrollments(
	enrollment_id bigserial primary key,
	student_id bigint not null references university.students(student_id),
	course_id bigint not null references university.courses(course_id),
	enroll_date date
);
-- Xem database list
select datname from pg_database;
-- Xem schema list
select schema_name
from information_schema.schemata;
-- Xem table structure
select
	column_name,
	data_type,
	is_nullable,
	column_default
from
	information_schema.columns
where
	table_name in ('students', 'courses', 'enrollments');