--task 1
CREATE DATABASE lab2;
--task 2
CREATE TABLE countries(
    country_id serial primary key,
    country_name varchar(100),
    region_id int,
    population int
);
--task 3
INSERT INTO countries
VALUES (default, 'France', 111, 37590000);
--task 4
INSERT INTO countries (country_id, country_name)
VALUES ( default,'Russia');
--task 5
INSERT INTO countries
VALUES (default, 'Canada', NULL, 56789000);
--task 6
INSERT INTO countries (country_id, country_name, region_id, population)
VALUES (default, 'Italy', 222, 34578000),
       (default, 'Spain', 333, 42537658),
       (default, 'Germany', 444, 56700000);
--task 7
ALTER TABLE countries
ALTER COLUMN country_name SET DEFAULT 'Kazakhstan';
--task 8
INSERT INTO countries
VALUES(default, default, 555, 6378393);
--task 9
INSERT INTO countries
VALUES(default);
--task 10
CREATE TABLE countries_new(
    LIKE countries
);
--task 11
INSERT INTO counties_new
SELECT *FROM countries returning *;
--task 12
UPDATE countries SET region_id= 1 WHERE  region_id IS NULL;
--task 13
UPDATE countries
SET population = population *1.1 returning country_name, population as "new population";
--task 14
DELETE FROM countries WHERE population < 100000;
--task 15
DELETE FROM countries_new AS sn USING countries AS s WHERE sn.country_id = s.country_id returning *;
--task 16
DELETE FROM countries returning *;






