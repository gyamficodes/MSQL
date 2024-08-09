
----Sunstring
SELECT SUBSTRING("Gyamfi John",7, 5);
SELECT SUBSTRING("John", 2);
SELECT SUBSTRING(first_name,2,3) FROM users;

---Replace 
SELECT REPLACE("Micheal Gyamfi","Micheal", "John" );

SELECT REPLACE(first_name, "Jane" , "John") FROM users ;

-- Reverse
SELECT REVERSE("Hello World");

--Char_length
SELECT CHAR_LENGTH("Hello World");



----Ordrer by && limit
--oder by ascending order
SELECT first_name FROM users ORDER BY first_name ASC;

--oder by descending order
SELECT first_name FROM users ORDER BY first_name DESC;

--limit - to show amount you want
SELECT first_name FROM users LIMIT 5 ;

---- like this wildcard matches the zero or more characters.
SELECT * FROM basic.users
WHERE first_name LIKE "_mma";
-- WHERE first_name LIKE "%emma%";
-- WHERE first_name LIKE "%j%";


---- Count 
SELECT COUNT(*) FROM users; 
SELECT COUNT(first_name) FROM users;
SELECT COUNT(*) FROM users WHERE first_name = "emma";


--- Max() and Min();
SELECT MIN(age) FROM users;
SELECT MAX(age) FROM users;
SELECT AVG(age) FROM users;
SELECT SUM(age) FROM users;



------GROUP BY
SELECT first_name,  AVG(age) FROM users GROUP BY first_name;



----Not Equal To !=
SELECT first_name , last_name , age FROM users 
WHERE first_name != "jane";
-- WHERE age != 35;



------Graterthan >
SELECT * FROM users WHERE age > 50;
SELECT * FROM users WHERE LENGTH(first_name) > 5;



--LeesThan <
SELECT * FROM users WHERE age < 50;
SELECT * FROM users WHERE LENGTH(first_name) < 5;



----And Operator
SELECT * FROM users 
-- WHERE age > 50 AND LENGTH(first_name) > 5;
WHERE first_name = "emma" AND last_name = "Johnson";



----Or Operator
SELECT * FROM users WHERE age < 30 OR age > 70;


---between
SELECT * FROM users WHERE age BETWEEN 40 AND 50;



----- In
SELECT  * FROM users 
-- WHERE age IN (20,30,34);
WHERE first_name IN ("jane", "olivia");


----case statement
SELECT first_name, age,
       CASE 
         WHEN age < 18 THEN 'A kid'
         WHEN age >= 18 AND age <= 30 THEN 'Young'
         ELSE 'Old Man'
       END AS users_group
FROM users;




--- Unique mean one data can not have the same value;

CREATE TABLE Series(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) UNIQUE,
    release_year INT,
    genre VARCHAR(255)
)

INSERT INTO series(title, release_year,genre)
VALUES("Power Rangers",2024,"Adventure") 
      ("Vampires Diarries", 2016, "Fantasy");

SELECT * FROM series;

CREATE TABLE employeer(
    em_id int AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(255),
    emp_age INT CHECK (emp_age >= 18 AND emp_age < 60 ),
    emp_salary DECIMAL
)





---name constrain
--- this wiil faild because of the chk_emp_age constrain .
INSERT INTO employeer(emp_id , emp_name ,  emp_age ,  emp_salary)
            VALUES(1, "John", 25, 18 );

SELECT * FROM employeer;

---- Alter Keyword
--Drop A Cretain  Colum  From DB;
ALTER TABLE employeer DROP COLUMN emp_salary ;

--   Modify a certain tabel colum data From DB Table;
ALTER TABLE employeer MODIFY COLUMN  emp_name VARCHAR(50);

--- change a certain colunm name;
ALTER TABLE employeer  CHANGE emp_name  full_name VARCHAR(50);


--- Relational database
-- one-to-one relation
--one-to-many relation 
--many-to-many relation


--- one-to-many relation 

CREATE TABLE engineer(
    engineer_id INT AUTO_INCREMENT PRIMARY KEY,
    engineer_name VARCHAR(255) NOT NULL,
    profession VARCHAR(255) NOT NULL,
    email VARCHAR(50)
);

INSERT INTO engineer(engineer_name,profession,email) 
VALUES("Gyamfi John", "Full Stack", "info@gmail.com"),
       ("Alice", "Frontend Developer", "info@gmail.com"),
       ("Emma", "Full Stack", "info@gmail.com");



CREATE TABLE Task (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    task_name VARCHAR(255),
    task_description TEXT,
    engineer_id INT,
    FOREIGN KEY (engineer_id) REFERENCES engineer(engineer_id)
);

INSERT INTO Task (task_name, task_description, engineer_id)
VALUES 
    ('task 1', 'Design The UI in Figma', 1),
    ('task 2', 'Build the server in bun', 2),
    ('task 3', 'Code the UI in Tailwind CSS', 1);
 
--- cross join 
SELECT * FROM engineer CROSS JOIN task;


SELECT * FROM engineer;


CREATE TABLE  Musician(
    dev_id INT AUTO_INCREMENT PRIMARY KEY,
    dev_name VARCHAR(255),
    dev_info TEXT
);

INSERT INTO  musician(dev_name,dev_info)
VALUES("Rema","He is Afrobeat Singer");
                     
SELECT * FROM musician WHERE dev_id <= 1;

CREATE TABLE  Job(
    job_id INT AUTO_INCREMENT PRIMARY KEY,
    job_name VARCHAR(255),
    job_info TEXT,
    dev_id INT ,
   FOREIGN KEY ( dev_id) REFERENCES Musician( dev_id)
);

INSERT INTO job(job_name,job_info,dev_id)
VALUES("Ragea","From nigerial",1)


SELECT * FROM job CROSS JOIN musician;



---INNER JOIN
-- SELECT * FROM musician INNER JOIN job ON  musician.dev_id = job.dev_id;

-- left Join
SELECT * FROM musician LEFT JOIN job On musician.dev_id = job.dev_id;

--right-john
SELECT *
FROM musician RIGHT JOIN job On musician.dev_id = job.dev_id;

--Many-To-Many Relation

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    year INT NOT NULL,
    director VARCHAR(100) NOT NULL,
    genre VARCHAR(100)
);

INSERT INTO Movies(movie_id, title, year, director, genre)
 VALUES(),



CREATE TABLE Person (
    person_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(100),
    genre VARCHAR(100),
    country VARCHAR(100)
)
