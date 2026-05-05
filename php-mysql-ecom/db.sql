#Database connection#



CREATE DATABASE shop_db;
USE shop_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50)
);

INSERT INTO users (username, password) VALUES ('admin', '1234');

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    price INT
);

INSERT INTO products (name, price) VALUES
('Laptop', 800),
('Phone', 500),
('Headphone', 100);
