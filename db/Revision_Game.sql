#Creating a database
CREATE database if not exists quiz_db;


#Using a database
USE quiz_db;


#Creating tables with their respective primary keys and columns
CREATE TABLE IF NOT EXISTS quiz(
	category_id varchar (255),
    question_id int NOT NULL AUTO_INCREMENT,
    question varchar (255) NOT NULL,
    option_1 varchar (255) NOT NULL,
    option_2 varchar (255) NOT NULL,
    option_3 varchar (255) NOT NULL,
    option_4 varchar (255) NOT NULL,
    correct_answer varchar (255) NOT NULL,
    PRIMARY KEY (question_id)
    );

CREATE TABLE quiz_participants (
	quiz_participant_id INTEGER NOT NULL,
	quiz_id INTEGER NOT NULL,
	quiz_participant_first_name VARCHAR(255) NOT NULL,
	quiz_participant_last_name VARCHAR(255) NOT NULL,
	quiz_participant_email VARCHAR(255) NOT NULL,
	quiz_participant_userid VARCHAR(255) NOT NULL,
    PRIMARY KEY (quiz_participant_id)
);

CREATE TABLE quiz_participant_scores_history (
	quiz_id INTEGER NOT NULL,
    quiz_participant_id INTEGER NOT NULL,
    quiz_participant_score INTEGER NOT NULL,
    PRIMARY KEY (quiz_participant_id)
);


#Inserting data into tables
INSERT INTO quiz(category_id, question, option_1, option_2, option_3, option_4, correct_answer) 
VALUES 

    ('Python Classes', 'What is Object Orientated Programming (OOP)?', 'A programming concept that provides patterns for structuring programs where properties and behaviors are bundled into individual objects', 'A programming concept that provides patterns for structuring programs where properties and behaviors are not bundled into individual objects', 'A programming paradigm where programs are constructed by applying and composing functions.', 'A programming paradigm specially designed to handle symbolic computation and list processing applications.', 'A programming concept that provides patterns for structuring programs where properties and behaviors are bundled into individual objects.'),
    ('Python Classes', 'Which option is not an advantage of Object Orientated Programming (OOP)?', 'Faster and cheaper development.', 'Better software maintainability.', 'Designing a program with an OOP concept is fairly easy.', 'Results in higher-quality software. ', 'Designing a program with an OOP concept is fairly easy.'),
    ('Python Classes', 'Please select the false statement.', 'OOP uses the concept of objects and classes.', 'A class defines the blueprint\, which can be instantiated to create object(s)', 'In Python we dont always need to use the keyword class to create a class.', 'An object is an instantiation of a class.', 'In Python we dont always need to use the keyword class to create a class.'),
    ('Python Classes', 'What is inheritance?', 'Inheritance is the process by which one class takes on the attributes and methods of another.', 'Means of bundling instance variables and methods in order to restrict access to certain class members', 'Focuses on variables and passing of variables to functions', 'Allows for implementation of elegant software that is well designed and easily modified.', 'Inheritance is the process by which one class takes on the attributes and methods of another.'),
    ('Python Classes', 'Which of the following best describes polymorphism?', 'Ability of a class to derive members of another class as a part of its own definition.', 'Allows for objects of different types and behaviour to be treated as the same general type.', 'Means of bunding instance variables and methods in order to restrict access to certain class members.', 'Focuses on variables and passing of variables to functions.', 'Allows for objects of different types and behaviour to be treated as the same general type.'),
    ('Python Classes', 'Which of these is not a fundamental feature of Object Orientated Programming (OOP)?', 'Encapsulation', 'Inheritance', 'Polymorphism', 'Instantiation', 'Instantiation'),
    ('Python Classes', 'Methods of a class that provide access to private members of the class are _____ and _____ .', '_repr_ and _str_', 'getters and setters', 'user-defined functions and in-built functions', '_init_ and _del_', 'getters / setters'),
    ('Python Classes', 'The open/closed principle states that classes should be open for _____ but closed for _____ .', 'refactoring; duplication', 'reuse; encapsulation', 'modification; duplication', 'extension; modification', 'extension; modification'),
    ('Python Classes', 'What is the relationship between abstraction and encapsulation?', 'Abstraction and encapsulation are essentially the same.', 'Abstraction and encapsulation are unrelated.', 'Abstraction is about making relevant information visible\, while encapsulation enables a programmer to implement the desired level of abstraction.', 'Encapsulation is about making relevant information visible\, while abstraction enables a programmer to implement the desired level of encapsulation.', 'Abstraction is about making relevant information visible\, while encapsulation enables a programmer to implement the desired level of abstraction.'),
    ('Python Classes', 'Concerning the SOLID design principle\, which of these is the odd one out?', 'Single command principle', 'Open-closed principle', 'Liskov Substitution principle', 'Dependency Injection principle', 'Single command principle'),
    ('Python Decorators', 'How do we \'decorate\' a function?', 'We \'decorate\' a function with a decorator by adding the @ sign and the name of a decorator on top of the function body.', 'We \'decorate\' a function with a decorator by adding the $ sign and the name of a decorator on top of the function body.', 'We \'decorate\' a function with a decorator by adding the @ sign and the name of a decorator anywhere before the function body.', 'We \'decorate\' a function with a decorator by adding the $ sign and the name of a decorator anywhere before the function body.', 'We \'decorate\' a function with a decorator by adding the @ sign and the name of a decorator on top of the function body.'),
    ('Python Decorators', 'Which one of the following is not an advantage of Python citizens?', 'We can pass them to other functions as arguments.', 'We can return them from other functions as values.', 'We can store them in variables and data structures.', 'We can pass them to other functions as parameters.', 'We can pass them to other functions as parameters.'),
    ('Python Decorators', 'In programming language design\, what is a first-class citizen?', 'A first-class citizen in a given programming language is an entity which supports all the operations generally available to other entities.', 'A type\, object\, entity\, or value.', 'All of above.', 'None of the above', 'All of above.'),
    ('Python Decorators', 'What is a decorator?', 'A decorator is a function which takes another function as an argument and returns a modified version of it\, enhancing its functionality in some way.', 'A decorator is a function which takes another function as a parameter and returns a modified version of it\, enhancing its functionality in some way.', 'A decorator is a function which takes an argument and returns a modified version of it\, enhancing its functionality in some way.', 'A decorator is an object which takes another object as an argument and returns a modified version of it\, enhancing its functionality in some way.', 'A decorator is a function which takes another function as an argument and returns a modified version of it\, enhancing its functionality in some way.'),
    ('Python Decorators', 'What is another word for a decorator?', 'Stylist', 'Metaprogramming', 'Couturier', 'A design pattern', 'Metaprogramming'),
    ('Python Decorators', 'Please select the false statement.', 'Decorators wrap a function\, modifying its behaviour.', 'The @ symbol is also called pie syntax or syntactical sugar.', 'A decorator is just a regular Python function\, so it can be reused as many times as you want.', 'A decorator is not like a regular Python function\, so it cannot be reused as many times as you want.', 'A decorator is not like a regular Python function\, so it cannot be reused as many times as you want.'),
    ('Python Decorators', 'Please select the true statement.', 'We can define a decorator as a class. In order to do that\, we have to use a __call__ method of classes.', 'We can define a decorator as a class. In order to do that\, we have to use a __init__ method of classes.', 'We can define a decorator as a class. In order to do that\, we have to use a __name__ method of classes.', 'We cannot define a decorator as a class.', 'We can define a decorator as a class. In order to do that\, we have to use a __call__ method of classes.'),
    ('Python Decorators', 'Decorators do not modify a function ______.', 'Permanently ', 'Temporarily', 'Cannot be determined', 'None of the above', 'Permanently '),
    ('Python Decorators', 'What type of arguments are used to create general-purpose decorators?', 'Positional arguments', 'Default arguments', 'Keyword arguments', 'Arbitrary arguments', 'Arbitrary arguments'),
	('SQL Queries', 'Which operator defines a range of values that the column values must fall in?', 'IN', 'LIKE', 'BETWEEN', 'IS', 'BETWEEN'),
    ('SQL Queries', 'Which statement is valid? ', 'ALTER TABLE EMPLOYEE MODIFY (last_name CHAR2(2000));', 'ALTER TABLE EMPLOYEE CHANGE (last_name CHAR2(2000));', 'ALTER TABLE EMPLOYEE CHANGE (last_name VARCHAR2 (2000));', 'ALTER TABLE EMPLOYEE MODIFY (last_name VARCHAR2 (2000));', 'ALTER TABLE EMPLOYEE MODIFY (last_name VARCHAR2 (2000));'),
    ('SQL Queries', 'Select the clause which sorts the data of a table.', 'GROUP BY', 'HAVING', 'ORDER BY', 'WHERE', 'ORDER BY'),
    ('SQL Queries', 'What does SQL stand for?', 'Structured Question Language', 'Structural Query Language', 'Structuring Query Language', 'Structured Query Language', 'Structured Query Language'),
    ('SQL Queries', 'Which of the following is true about NULL values in SQL?', 'A NULL value means zero.', 'A null value can only be used with numeric attributes.', 'Null value just means that data of that attribute is not available.', 'None of these.', 'Null value just means that data of that attribute is not available.'),
    ('SQL Queries', 'How can you filter duplicate data while retrieving records from a table?', 'DISTINCT', 'WHERE', 'LIMIT', 'AS', 'DISTINCT'),
    ('SQL Queries', 'What is the difference between DROP and TRUNCATE?', 'They both refer to the same operation of deleting the table completely.', 'They both refer to the same operation of clearing the table\, but keeping its definition intact.', 'TRUNCATE deletes table completely\, removing its definition as well. DROP clears the table but does not delete the definition.', 'DROP deletes table completely\, removing its definition as well. TRUNCATE clears the table but does not delete the definition.', 'DROP deletes table completely\, removing its definition as well. TRUNCATE clears the table but does not delete the definition.'),
    ('SQL Queries', 'How do you select every row in a given table named inventory?', 'SELECT * FROM inventory;', 'SELECT all FROM inventory;', 'FROM inventory SELECT all;', 'FROM inventory SELECT *;', 'SELECT * FROM inventory;'),
    ('SQL Queries', 'How would you retrieve data on all the customers where no phone number is stored?', 'SELECT * FROM customers WHERE PhoneNumber = NULL;', 'SELECT * FROM customers WHERE PhoneNumber IS NOT VALID;', 'SELECT * FROM customers WHERE PhoneNumber IS NULL;', 'SELECT * FROM customers WHERE PhoneNumber IS UNKNOWN;', 'SELECT * FROM customers WHERE PhoneNumber IS NULL;'),
    ('SQL Tables', 'We can’t use subqueries with which of the clauses given below?', 'SELECT', 'ORDER BY', 'HAVING ', 'FROM', 'ORDER BY'),
    ('SQL Tables', 'You need to run a complex query with recursibe subqueries but without creating a stored procedure or a function. Which command or clause do you use?', 'COLLATE', 'UNION', 'FULL JOIN', 'WITH', 'UNION'),
    ('SQL Tables', 'Which keyword is used to specify the foreign key after the table is created?', 'ALTER TABLE', 'SPECIFY', 'SETUP', 'SET', 'ALTER TABLE'),
    ('SQL Tables', 'Join is required when:', 'We need to join information from multiple rows of a table in a result', 'We need to join information from multiple tables in a result', 'We want to join result of two queries into one', 'None of the above', 'We need to join information from multiple tables in a result.'),
    ('SQL Tables', 'Which of the following join extracts data of matching rows from both tables?', 'Full Outer Join', 'Left Join', 'Right Join', 'None of these.', 'Full Outer Join'),
    ('SQL Tables', 'In an efficiently designed relational database\, what does every table have?', 'Set of triggers', 'Sequential id field', 'Minimum of three columns', 'Primary Key', 'Primary Key'),
    ('SQL Tables', 'Which key decalres that an index in one table is related to that in another?', 'Foreign', 'Cross', 'Primary', 'Secondary', 'Foreign'),
    ('SQL Tables', 'Inside a transaction\, several operations need to be performed. What would you do if an exception happens during that transaction?', 'UNDO', 'UNCOMMIT', 'ROLLBACK', 'REVERSE', 'ROLLBACK'),
    ('SQL Tables', 'The left and right joins are also known as _____ _____.', 'INNER JOIN', 'NATURAL JOIN', 'OUTER JOIN', 'CARTESIAN JOIN', 'OUTER JOIN'),
    ('SQL Tables', 'Which clause is used to remove a foreign key constraint?', 'EXCLUDE', 'DELETE', 'DROP', 'REMOVE', 'DROP')

;


#Creating a new quiz categories table
CREATE TABLE quiz_categories
AS SELECT
category_id,
question_id,
question
FROM quiz;


#Adding a foreign key
ALTER TABLE quiz_categories
ADD FOREIGN KEY (question_id) REFERENCES quiz(question_id);

