-- create users table 
create table users (
	user_id serial primary key, 
	user_name text
	)
CREATE TABLE divelog (
	dive_key serial primary key,
	user_id int references users(user_id),
	location text,
	date timestamp default NOW(),
	max_depth integer, 
	duration integer,
	difficulty integer, 
	summary text,
	buddy_name text,
	visibility integer,
	air_used integer,
	water_type text,
	is_training_dive boolean
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
