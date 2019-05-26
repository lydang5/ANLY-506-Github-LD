-- Test db to practice connecting to mysql with python

DROP SCHEMA IF EXISTS testdb;
CREATE SCHEMA testdb;
USE testdb;

--
-- Table structure for table employee
--

CREATE TABLE employee (
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20),
  age INT,
  sex char(1),
  income float  
);

##create a user
DROP USER IF EXISTS 'testuser'@'localhost';
CREATE USER 'testuser'@'localhost' IDENTIFIED BY 'test123';
GRANT ALL PRIVILEGES ON testdb.* TO 'testuser'@'localhost';