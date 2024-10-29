-- Step 1: Create the Student table
CREATE TABLE Student (
    StudentId NUMBER PRIMARY KEY,
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    CGPA NUMBER(4,3)
);

-- Step 2: Insert a record into the Student table
INSERT INTO Student (StudentId, FirstName, LastName, CGPA)
VALUES (24565471, 'Mohammad Shihab', 'Hosssain', 3.86);

-- Step 3: Select all records from the Student table
SELECT * FROM Student;

-- Step 4: Describe the Student table structure
DESCRIBE Student;
