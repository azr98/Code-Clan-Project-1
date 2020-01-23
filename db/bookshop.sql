require('pg')

DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;


CREATE TABLE authors(
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  background VARCHAR,
  num_of_books INT
);

CREATE TABLE books(
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  description VARCHAR,
  stock INT,
  cost INT,
  sell_price INT,
  author_id INT REFERENCES authors(id),
  genre VARCHAR
);
