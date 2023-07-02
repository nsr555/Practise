CREATE TABLE Employee (
    id INT,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10, 2)
);

CREATE TABLE Employee1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10, 2)
);

INSERT INTO Employee (name, age, salary)
VALUES ('John Doe', 30, 5000),
       ('Jane Smith', 28, 6000),
       ('Michael Johnson', 35, 7000),
       ('Emily Davis', 32, 5500),
       ('Robert Brown', 29, 6500),
       ('Sophia Wilson', 27, 7500);

DESCRIBE Employee;
SELECT * FROM Employee;
UPDATE Employee
SET salary = 8000
WHERE name = 'John Doe';

DELETE FROM Employee
WHERE id = 3;
DELETE FROM Employee
WHERE id = 3;
SELECT COUNT(*) FROM Employee;
DELETE FROM Employee;
DROP TABLE Employee;
SELECT * FROM Employee
WHERE age > 30 OR salary > 6000;
SELECT * FROM Employee
ORDER BY age DESC, salary ASC;

/* Assignment -2 */

/*comparision*/

SELECT * FROM Employee WHERE age > 30;
SELECT * FROM Employee WHERE salary <= 50000;
SELECT * FROM Employee WHERE name = 'John Doe';
SELECT * FROM Employee WHERE age <> 25;

/*logical operators*/
SELECT * FROM Employee WHERE age > 30 AND salary > 50000;
SELECT * FROM Employee WHERE age <= 30 OR salary > 50000;
SELECT * FROM Employee WHERE age IN (25, 30, 35);


/*Keywords*/
SELECT DISTINCT department FROM Employee;
SELECT COUNT(*) FROM Employee;
SELECT AVG(salary) FROM Employee;
SELECT department, SUM(salary) FROM Employee GROUP BY department;

/*Wild Cards*/
SELECT * FROM Employeee WHERE name LIKE 'J%';
SELECT * FROM Employeee WHERE name LIKE '_o%';

/*Union*/
SELECT name, age FROM Employee1
UNION
SELECT name, age FROM Employee2;




