--Create a user
DROP ROLE IF EXISTS michael;
CREATE ROL michael WITH ENCRYPTED PASSWORD 'stonebreaker';

-- Connect database
DROP DATABASE IF EXISTS morning_challenge;
CREATE DATABASE morning_challenge;

-- Connect to the database
\c morning_challenge;

-- Create a table employers
CREATE TABLE IF NOT EXISTS employers(
  id VARCHAR(2) PRIMARY KEY,
  description VARCHAR(10)
);

INSERT INTO employers(id, description) VALUES
('dv','DevLeague'),
('st','Student'),
('na','N/A');


-- Create a table users
CREATE TABLE IF NOT EXISTS users(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INTEGER NOT NULL,
  gender VARCHAR(1) NOT NULL,
  job_type VARCHAR(10) NOT NULL REFERENCES employers(id)
);

--  Add users to that table
INSERT INTO users(name, age, gender, job_type) VALUES ('Alice', 12, 'f', 'st');
INSERT INTO users(name, age, gender, job_type) VALUES ('Bob', 21, 'm', 'dv');
INSERT INTO users(name, age, gender, job_type) VALUES ('Claire', 56, 'f', 'dv');
INSERT INTO users(name, age, gender, job_type) VALUES ('David', 9, 'm', 'na');
INSERT INTO users(name, age, gender, job_type) VALUES ('Eric', 61, 'm', 'dv');
INSERT INTO users(name, age, gender, job_type) VALUES ('Fred', 45, 'm', 'dv');
INSERT INTO users(name, age, gender, job_type) VALUES ('George', 38, 'm', 'dv');
INSERT INTO users(name, age, gender, job_type) VALUES ('Hannah', 15, 'f', 'na');
INSERT INTO users(name, age, gender, job_type) VALUES ('Ilona', 17, 'f', 'st');
INSERT INTO users(name, age, gender, job_type) VALUES ('Jake', 27, 'm', 'dv');
INSERT INTO users(name, age, gender, job_type) VALUES ('Kathy', 8, 'f', 'na');
INSERT INTO users(name, age, gender, job_type) VALUES ('Liam', 20, 'm', 'st');


-- SELECT all users, show their names and ids

SELECT id, name
FROM users;

-- SELECT the youngest user

SELECT *
FROM users
WHERE age = (SELECT MIN(age) FROM users);

-- SELECT the oldest user

SELECT *
FROM users
WHERE age = (SELECT MAX(age) FROM users);

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
INNER JOIN employers ON users.job_type = employers.id
WHERE employers.description = 'DevLeague';

-- SELECT all users, that are above 21
SELECT *
FROM users
WHERE age > 2;


