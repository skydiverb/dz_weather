DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS dropzones CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) NOT NULL,
  password_digest VARCHAR(255) NOT NULL
  -- dropzones INTEGER
);

CREATE TABLE dropzones (
  id SERIAL PRIMARY KEY,
  name VARCHAR (225) NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone_number INTEGER NOT NULL,
  users_id INTEGER REFERENCES users(id)
);
