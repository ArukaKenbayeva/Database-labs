-- task 1
CREATE DATABASE lab1;
--task 2
CREATE TABLE users(
    id int primary key, --task6
    firstname varchar(50),
    lastname varchar(50)
);
--task 3
ALTER TABLE users
   ADD isadmin bool;
--task 4
ALTER TABLE users
ALTER COLUMN isadmin TYPE boolean;
--task 5
ALTER TABLE users
ALTER isadmin SET DEFAULT 'false';

--task 7
CREATE TABLE tasks(
    id int primary key,
    name varchar(50),
    user_id int
);
--task 8
DROP TABLE tasks;
--task 9
DROP DATABASE lab1;