CREATE USER myuser IDENTIFIED BY mypassword;
GRANT CONNECT, RESOURCE TO myuser;



CREATE TABLE employees (
    id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    salary NUMBER(10, 2),
    hire_date DATE
);

SELECT * FROM employees

SELECT * FROM ALL_TABLES WHERE TABLE_NAME = "employees";

SELECT *
FROM ALL_TABLES
WHERE TABLE_NAME = 'EMPLOYEES';
