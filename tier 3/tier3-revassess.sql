create table user_role(
	role_id integer generated always as identity primary key,
	name varchar(20) unique not null
)


create table app_user(
	user_id integer generated always as identity primary key,
	username varchar(20) unique not null,
	password varchar(20) not null,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	role_id integer references user_role(role_id)
)


create table study_set(
	study_set_id integer generated always as identity primary key,
	name varchar(20) unique not null,
	owner_id integer references app_user(user_id)
)

--come back to make
create table study_set_card(
	study_set_id integer references study_set(study_set_id),
	flashcard_id integer references flashcard(flashcard_id),
	primary key(study_set_id, flashcard_id)
)


create table flashcard(
	flashcard_id integer generated always as identity primary key,
	question varchar(50) unique not null,
	answer varchar(20) not null,
	category_id integer references category(category_id)
)


create table category(
	category_id integer generated always as identity primary key,
	name varchar(20) unique not null
)






