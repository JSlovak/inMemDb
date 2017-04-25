--Create a user
DROP ROLE IF EXISTS michael;
CREATE ROL michael WITH ENCRYPTED PASSWORD 'stonebreaker';

-- Connect database
DROP DATABASE IF EXISTS morning_challenge;
CREATE DATABASE morning_challenge;

-- Connect to the database
\c morning_challenge;


-- Create a table users
CREATE TABLE IF NOT EXISTS users(
  id SERIAL PRIMARY KEY
  name VARCHAR(50) NOT NULL,
  age INTEGER NOT NULL,
  gender VARCHAR(1) NOT NULL,
  jobType VARCHAR(2) NOT NULL
);

--  Add users to that table
INSERT INTO users(name, age, gender, jobType) VALUES ('Alice', 12, 'f', 'st');
INSERT INTO users(name, age, gender, jobType) VALUES ('Bob', 21, 'm', 'dv');
INSERT INTO users(name, age, gender, jobType) VALUES ('Claire', 56, 'f', 'dv');
INSERT INTO users(name, age, gender, jobType) VALUES ('David', 9, 'm', 'na');
INSERT INTO users(name, age, gender, jobType) VALUES ('Eric', 61, 'm', 'dv');
INSERT INTO users(name, age, gender, jobType) VALUES ('Fred', 45, 'm', 'dv');
INSERT INTO users(name, age, gender, jobType) VALUES ('George', 38, 'm', 'dv');
INSERT INTO users(name, age, gender, jobType) VALUES ('Hannah', 15, 'f', 'na');
INSERT INTO users(name, age, gender, jobType) VALUES ('Ilona', 17, 'f', 'st');
INSERT INTO users(name, age, gender, jobType) VALUES ('Jake', 27, 'm', 'dv');
INSERT INTO users(name, age, gender, jobType) VALUES ('Kathy', 8, 'f', 'na');
INSERT INTO users(name, age, gender, jobType) VALUES ('Liam', 20, 'm', 'st');

-- SELECT all users, show their names and ids

SELECT id, name
FROM users;

-- SELECT the youngest user

SELECT *
FROM users
ORDER BY age ASC;

-- SELECT the oldest user

SELECT *
FROM users
ORDER BY age DESC;

-- SELECT all users, that are male
SELECT *
FROM users
WHERE gender = 'm';

-- SELECT all users, that are female
SELECT *
FROM users
WHERE gender = 'f';

-- JOIN, SELECT users and return tables that return users with same employer
SELECT *
FROM users
ORDER BY jobType

-- SELECT all users, that are above 21
SELECT *
FROM users
WHERE age > 21;