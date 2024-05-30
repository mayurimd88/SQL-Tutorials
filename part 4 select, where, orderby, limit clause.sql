
CREATE TABLE classroom (
    rollno INT8 PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    house CHAR(12) NOT NULL,
    grade CHAR(1)
);
INSERT INTO classroom
(rollno, name, house, grade)
VALUES
(1, "Sam", "Akash", "B"),
(2, "Ram", "Agni", "A"),
(3, "Shyam", "Jal", "B"),
(4, "Sundar", "Agni", "A"),
(5, "Ram", "Yayu", "B");

select * from classroom;

SELECT name FROM classroom;

SELECT DISTINCT grade FROM classroom;

SELECT name FROM classroom
WHERE grade="A";

SELECT name FROM classroom
LIMIT 3;

SELECT name FROM classroom
ORDER BY rollno  ASC;  -- ORDER BY rollno DESC; --

