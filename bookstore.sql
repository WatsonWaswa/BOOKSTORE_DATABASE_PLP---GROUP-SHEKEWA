/* 

----MEMBERS----

LIWA WATSON - watsonliwa@yahoo.com
SHEKINAH NYAMBURA - nshekinah7@gmail.com
KENNEDY MWANIKI - kennedymwaniki089@gmail.com

*/

/* 

git branch -M main 
git remote add origin https://github.com/WatsonWaswa/BOOKSTORE_DATABASE_PLP---GROUP-SHEKEWA.git 

*/

-- Create Database
CREATE DATABASE IF NOT EXISTS bookstore_db;
USE bookstore_db;

-- Table: country
CREATE TABLE country (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL
);

-- Table: address
CREATE TABLE address (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(100),
    postal_code VARCHAR(20),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

-- Table: address_status
CREATE TABLE address_status (
    address_status_id INT AUTO_INCREMENT PRIMARY KEY,
    status_name VARCHAR(50) NOT NULL
);

-- Table: customer
CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(150)
);


