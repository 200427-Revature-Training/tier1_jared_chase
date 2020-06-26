select * from user_role;

--A--
select * from app_user where role_id = 3;

select * from app_user;

--B--
insert into app_user (username, password, first_name, last_name, role_id) values 
	('jchase', 'jpassword', 'Jared', 'Chase', 4);
	
--C--
select * from app_user
inner join study_set 
on study_set.owner_id = app_user.user_id
where user_id = 4;

--D--
