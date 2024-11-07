-- create table name student

CREATE TABLE students (
    id VARCHAR(20) PRIMARY KEY,        -- Student ID as string
    first_name VARCHAR(50),            -- First name
    last_name VARCHAR(50),             -- Last name
    cgpa NUMBER(3,2),                  -- CGPA (e.g., 3.75)
    joining_date DATE,                 -- Joining date of the student
    semester VARCHAR(15)               -- Semester (e.g., '23-24 Summer')
);

-- inserting thje value into the table

INSERT INTO students(id, first_name,last_name,cgpa, joining_date,Semester)
VALUES('24-56547-1','Mohammad Shihab','Hossain',3.86, TO_DATE('2024-01-22','YYYY-MM-DD'),'23-24 spring');

INSERT INTO students (id, first_name, last_name, cgpa, joining_date, semester)
VALUES ('24-56543-1', 'Shanjihan Jaman', 'Shuchi', 3.94, TO_DATE('2024-01-22', 'YYYY-MM-DD'), '23-24 Spring');


--inserting multiples values
INSERT ALl
    INSERT INTO students (id, first_name, last_name, cgpa, joining_date, semester)
    VALUES ('24-56547-2', 'Md. Khan', 'Jamali Onim', 3.84, TO_DATE('2024-01-22', 'YYYY-MM-DD'), '23-24 Spring');

    INSERT INTO students (id, first_name, last_name, cgpa, joining_date, semester)
    VALUES ('24-56549-1', 'Ayon', 'Saha', 3.82, TO_DATE('2024-01-22', 'YYYY-MM-DD'), '23-24 Spring');

    INSERT INTO students (id, first_name, last_name, cgpa, joining_date, semester)
    VALUES ('24-56548-4', 'Rikti', 'Ahmed', 3.75, TO_DATE('2024-01-22', 'YYYY-MM-DD'), '23-24 Spring');
SELECT * From DUAL;





--Checking the table info 
SELECT * from students;


--Delete user information
DELETE FROM students
WHERE id NOT IN ('24-56547-1');

-- showing id in desending order
SELECT id,first_name,last_name
FROM students
ORDER BY id DESC;

-- updating information
Update students
SET id = '24-56546-1'
where cgpa = 3.84;

-- showing cgpa in asending 
SELECT first_name, last_name, id, cgpa
FROM students
ORDER BY cgpa ASC;
