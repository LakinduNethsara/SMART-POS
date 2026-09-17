CREATE DATABASE IF NOT EXISTS nextstack_pos;

USE nextstack_pos;

CREATE TABLE IF NOT EXISTS role (
id VARCHAR(100) PRIMARY KEY,
role_name VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS user(
 user_id VARCHAR(100) PRIMARY KEY,
 user_name VARCHAR(45) NOT NULL,
 password VARCHAR(750),
 email VARCHAR(100) UNIQUE,
 contact_number VARCHAR(15),
 role_id VARCHAR(100),
 FOREIGN KEY (role_id) REFERENCES role(id)
);

DESC user;