-- create users table 
create table users (
	user_id serial primary key, 
	user_name text
	)
drop table divelog cascade;
CREATE TABLE divelog (
	dive_key serial primary key,
	user_id int references users(user_id),
	location text not null,
	date DATE,
	max_depth integer, 
	duration integer,
	difficulty integer, 
	summary text,
	buddy_name text,
	visibility integer,
	air_used integer,
	water_type text,
	is_training_dive boolean,
	water_temp integer,
	air_temp integer
	)
CREATE TABLE challenges (
	dive_no int references divelog(dive_key),
	challenge_description text,
	primary key (dive_no, challenge_description)
	)
CREATE TABLE marine_species(
	name text primary key,
	dive_no int references divelog(dive_key)
	)
CREATE TABLE marine_species(
	name text primary key,
    turkish_name text,
	dive_no int references divelog(dive_key)
	)
