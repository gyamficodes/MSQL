
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