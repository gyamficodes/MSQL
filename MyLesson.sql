
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







