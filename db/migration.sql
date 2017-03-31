-- psql -a -f migration.sql

CREATE DATABASE twitter;

\c twitter;

CREATE TABLE users (id SERIAL PRIMARY KEY, username varchar(255), password_digest varchar(255));

CREATE TABLE tweets (id SERIAL PRIMARY KEY, content varchar(140), user_id INT references users(id));
