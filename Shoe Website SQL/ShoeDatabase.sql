drop database if exists shoes;
create database if not exists shoes;
use shoes;
DROP TABLE if exists id cascade;
DROP TABLE if exists type_shoe cascade;
DROP TABLE if exists quantity cascade;
DROP TABLE if exists size cascade;
DROP TABLE if exists price cascade;
DROP TABLE if exists color cascade;
DROP TABLE if exists name_user cascade;
DROP TABLE if exists stock cascade;
DROP TABLE if exists shoe_image cascade;


DROP TABLE if exists email cascade;
DROP TABLE if exists password_user cascade;
DROP TABLE if exists billing_address cascade;
DROP TABLE if exists shipping_address cascade;
DROP TABLE if exists is_guest cascade;

CREATE TABLE shoes (
  id INT PRIMARY KEY,
  type_shoe VARCHAR(255),
  quantity INT,
  size FLOAT,
  price FLOAT,
  color VARCHAR(255),
  stock INT,
  shoe_image VARCHAR(255)
);

CREATE TABLE customers (
  id INT PRIMARY KEY,
  name_user VARCHAR(255),
  email VARCHAR(255),
  password_user VARCHAR(255),
  billing_address VARCHAR(255),
  shipping_address VARCHAR(255),
  is_guest BOOLEAN
);

INSERT INTO shoes (id, type_shoe, quantity, size, price, color, stock)
VALUES (1, 'hiking', 2, 10, 100, 'red', 48, '');

INSERT INTO customers (id, name_user, email, password_user, billing_address, shipping_address)
VALUES (1, 'John Doe', 'john.doe@example.com', 'password', '123 Main St, Anytown USA', '456 Park Ave, Anytown USA');

INSERT INTO customers (id, is_guest) VALUES (2, TRUE);

SELECT * FROM shoes;
SELECT * FROM customers;

SELECT * FROM shoes WHERE color = 'red';

SELECT * FROM customers WHERE name_user = 'John Doe';

UPDATE shoes SET quantity = 10 WHERE id = 1;