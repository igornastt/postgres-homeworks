-- SQL-команды для создания таблиц
-- SQL-команды для создания таблиц
CREATE TABLE employees
(
    employee_id int PRIMARY KEY,
	first_name varchar(40) NOT NULL,
	last_name varchar(40) NOT NULL,
	title varchar(40) NOT NULL,
	birth_date date NOT NULL,
	notes text
);

CREATE TABLE customers
(
    customer_id varchar(40) PRIMARY KEY,
	company_name varchar(40) NOT NULL,
	contact_name varchar(40) NOT NULL
);

CREATE TABLE orders
(
    order_id int PRIMARY KEY,
	customer_id varchar(40) REFERENCES customers(customers_id) NOT NULL,
	employee_id int REFERENCES employees(employee_id) NOT NULL,
	order_date date NOT NULL,
	ship_city varchar(40) NOT NULL
);