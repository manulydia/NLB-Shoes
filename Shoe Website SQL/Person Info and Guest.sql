CREATE DATABASE online_shoe_store;

USE online_shoe_store;

CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255)
);

CREATE TABLE guest_checkout (
  id INT AUTO_INCREMENT PRIMARY KEY,
  billing_name VARCHAR(255),
  billing_address VARCHAR(255),
  billing_city VARCHAR(255),
  billing_state VARCHAR(255),
  billing_zip VARCHAR(255),
  billing_country VARCHAR(255),
  shipping_name VARCHAR(255),
  shipping_address VARCHAR(255),
  shipping_city VARCHAR(255),
  shipping_state VARCHAR(255),
  shipping_zip VARCHAR(255),
  shipping_country VARCHAR(255)
);

CREATE TABLE shoes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  price DECIMAL(10,2),
  quantity INT
);

CREATE TABLE orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  guest_id INT,
  date DATE,
  total_price DECIMAL(10,2),
  FOREIGN KEY (customer_id) REFERENCES customers(id),
  FOREIGN KEY (guest_id) REFERENCES guest_checkout(id)
);

CREATE TABLE order_items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  shoe_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (shoe_id) REFERENCES shoes(id)
);

