DROP DATABASE IF EXISTS saas_company;
CREATE DATABASE saas_company;
USE saas_company;

CREATE TABLE customers(
customer_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(60) NOT NULL,
signup_date DATE NOT NULL,
plan VARCHAR(20) NOT NULL,
country VARCHAR(60) NOT NULL,
customer_status VARCHAR(20) NOT NULL
);

INSERT INTO customers(first_name,last_name,email,signup_date,plan,country,customer_status)
VALUES
('Kelvin','Eka','kelvineka2003@gmail.com','2022-05-23','Basic','Nigeria','Churned'),
('Shazi','Ozy','shaziozy2006@gmail.com','2025-05-23','Pro','Nigeria','Churned'),
('Jay','Hus','jayhus@gmail.com','2024-11-23','Enterprise','Norway','Active'),
('Pee','Ano','peeano@gmail.com','2023-01-23','Basic','Norway','Active'),
('Fela','Kuti','felakuti@gmail.com','2022-01-23','Pro','France','Active'),
('Brad','Pitt','bradpitt@gmail.com','2023-01-23','Enterprise','France','Churned');

SELECT * FROM saas_company.customers ORDER BY first_name,last_name;

SELECT * FROM saas_company.customers WHERE plan="Pro" AND customer_status="Active";

SELECT plan, COUNT(*)
FROM saas_company.customers
GROUP BY plan;

SELECT *
FROM saas_company.customers
ORDER BY signup_date DESC;

SELECT *
FROM saas_company.customers WHERE country="Nigeria"
ORDER BY signup_date;


SELECT country, COUNT(country)
FROM saas_company.customers WHERE customer_status='Active'
GROUP BY country ORDER BY customer_status;