CREATE TABLE weather (
  id SERIAL PRIMARY KEY,
  city VARCHAR (255) NOT NULL,
  average_temperature DOUBLE PRECISION
);