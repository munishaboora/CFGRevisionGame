#Creating a database
CREATE DATABASE Quiz_Game;
CREATE database if not exists quiz_db;
USE quiz_db;

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

CREATE TABLE quiz_categories
AS SELECT
category_id,
question_id,
question
FROM quiz;


ALTER TABLE quiz_categories
ADD FOREIGN KEY (question_id) REFERENCES quiz(question_id); 

#Using a database
USE Quiz_Game;


#Creating tables with their respective primary keys and columns
CREATE TABLE quiz_categories (
    quiz_id INTEGER NOT NULL,
    quiz_category VARCHAR(255) NOT NULL,
    CONSTRAINT PK_quiz_id PRIMARY KEY (quiz_id)
);


CREATE TABLE all_quiz_questions (
    quiz_question_id INTEGER NOT NULL,
    quiz_id INTEGER NOT NULL,
    quiz_question VARCHAR(255) NOT NULL,
	CONSTRAINT PK_quiz_question_id PRIMARY KEY (quiz_question_id)
);


CREATE TABLE quiz_question_answers (
    quiz_question_answer_id INTEGER NOT NULL,
    quiz_question_id INTEGER NOT NULL,
    quiz_answer_option_1 VARCHAR(255) NOT NULL,
    quiz_answer_option_2 VARCHAR(255) NOT NULL,
    quiz_answer_option_3 VARCHAR(255) NOT NULL,
    quiz_answer_option_4 VARCHAR(255) NOT NULL,
    quiz_question_correct_answer VARCHAR(255) NOT NULL,
    CONSTRAINT PK_quiz_question_answer_id PRIMARY KEY (quiz_question_answer_id)
);


CREATE TABLE quiz_participants (
	quiz_participant_id INTEGER NOT NULL,
	quiz_id INTEGER NOT NULL,
	quiz_participant_first_name VARCHAR(255) NOT NULL,
	quiz_participant_last_name VARCHAR(255) NOT NULL,
	quiz_participant_email VARCHAR(255) NOT NULL,
	quiz_participant_userid VARCHAR(255) NOT NULL,
    CONSTRAINT PK_quiz_participant_id PRIMARY KEY (quiz_participant_id)
);


CREATE TABLE quiz_participant_scores_history (
	quiz_id INTEGER NOT NULL,
    quiz_participant_id INTEGER NOT NULL,
    quiz_participant_score INTEGER NOT NULL,
    CONSTRAINT PK_quiz_participant_id PRIMARY KEY (quiz_participant_id)
);


#Inserting data into tables
INSERT INTO quiz_categories 
(quiz_id, quiz_category) 
VALUES 
(1, 'Classes'),
(2, 'Decorators'),
(3, 'SQL Queries'),
(4, 'SQL Tables');


INSERT INTO all_quiz_questions 
(quiz_question_id, quiz_id, quiz_question ) 
VALUES 
(1, 1, 'What is Object Orientated Programming (OOP)?'),
(2, 1, 'Which option is not an advantage of Object Orientated Programming (OOP)?'),
(3, 1, 'Please select the false statement.'),
(4, 1, 'What is inheritance?'),
(5, 1, 'Which of the following best describes polymorphism?'),
(6, 1, 'Which of the following is not a fundamental feature of Object Orientated Programming (OOP)?'),
(7, 1, 'Methods of a class that provide access to private members of the class are _____ and _____ .'),
(8, 1, 'The open/closed principle states that classes should be open for _____ but closed for _____ .'),
(9, 1, 'What is the relationship between abstraction and encapsulation?'),
(10, 1, 'Concerning the SOLID design principle, which of these is the odd one out?'),
(11, 2, 'How do we decorate a function?'),
(12, 2, 'Which one of the following is not an advantage of Python citizens?'),
(13, 2, 'In programming language design, what is a first-class citizen?'),
(14, 2, 'What is a decorator?'),
(15, 2, 'What is another word for a decorator?'),
(16, 2, 'Please select the false statement.'),
(17, 2, 'Please select the true statement.'),
(18, 2, 'Decorators do not modify a function _____.'),
(19, 2, 'What type of arguments are used to create general-purpose decorators?'),
(20, 2, 'Which decorator is used to define a static method?'),
(21, 3, 'Which operator defines a range of values that the column values must fall in?'),
(22, 3, 'Which statement is valid?'),
(23, 3, 'Select the clause which sorts the data of a table.'),
(24, 3, 'Which query displays the employees whose names begin with any two characters, followed by hn, and ending with any sequence of characters:'),
(25, 3, 'What does SQL stand for?'),
(26, 3, 'Which of the following is true about NULL values in SQL?'),
(27, 3, 'How can you filter duplicate data while retrieving records from a table?'),
(28, 3, 'What is the difference between DROP and TRUNCATE?'),
(29, 3, 'How do you select every row in a given table called inventory?'),
(30, 3, 'How would you retrieve data on all the customers where no phone number is stored?'),
(31, 4, 'We cannot use subqueries with which of the clauses given below?'),
(32, 4, 'You need to run a complex query with recursibe subqueries but without creating a stored procedure or a function. Which command or clause do you use?'),
(33, 4, 'Which keyword is used to specify the foreign key after the table is created?'),
(34, 4, 'Join is required when:'),
(35, 4, 'Which of the following join extracts data of matching rows from both tables?'),
(36, 4, 'n an efficiently designed relational database, what does every table have?'),
(37, 4, 'Which key decalres that an index in one table is related to that in another?'),
(38, 4, 'Inside a transaction, several operations need to be performed. What would you do if an exception happens during that transaction?'),
(39, 4, 'The left and right joins are also known as _____ _____.'),
(40, 4, 'Which clause is used to remove a foreign key constraint?')
;


INSERT INTO quiz_question_answers 
(quiz_question_answer_id, quiz_question_id, quiz_answer_option_1, quiz_answer_option_2, quiz_answer_option_3, quiz_answer_option_4, quiz_question_correct_answer) 
VALUES 
(1, 1, 'A programming concept that provides patterns for structuring programs where properties and behaviors are bundled into individual objects.', 'A programming concept that provides patterns for structuring programs where properties and behaviors are not bundled into individual objects.', 'A programming paradigm where programs are constructed by applying and composing functions.', 'A programming paradigm specially designed to handle symbolic computation and list processing applications.', 'A programming concept that provides patterns for structuring programs where properties and behaviors are bundled into individual objects.'),
(2, 2, 'Faster and cheaper development.', 'Better software maintainability.', 'Designing a program with an OOP concept is fairly easy.', 'Results in higher-quality software.', 'Designing a program with an OOP concept is fairly easy.'),
(3, 3, 'OOP uses the concept of objects and classes.', 'A class defines the blueprint, which can be instantiated to create object(s).', 'In python we dont always need to use the keyword class to create a class.', 'An object is an instantiation of a class.', 'In python we dont always need to use the keyword class to create a class.'),
(4, 4, 'Inheritance is the process by which one class takes on the attributes and methods of another.', 'Means of bundling instance variables and methods in order to restrict access to certain class members.', 'Focuses on variables and passing of variables to functions.', 'Allows for implementation of elegant software that is well designed and easily modified.', 'Inheritance is the process by which one class takes on the attributes and methods of another.'),
(5, 5, 'Ability of a class to derive members of another class as a part of its own definition.', 'Allows for objects of different types and behaviour to be treated as the same general type.', 'Means of bunding instance variables and methods in order to restrict access to certain class members.', 'Focuses on variables and passing of variables to functions.', 'Allows for objects of different types and behaviour to be treated as the same general type.'),
(6, 6, 'Encapsulation', 'Inheritance', 'Polymorphism', 'Instantiation', 'Instantiation'),
(7, 7, '_repr_ / _str_', 'getters / setters', 'user-defined functions / in-built functions', '_init_ / _del_', 'getters / setters'),
(8, 8, 'refactoring; duplication', 'reuse; encapsulation', 'modification; duplication', 'extension; modification', 'extension; modification'),
(9, 9, 'Abstraction and encapsulation are essentially the same.', 'Abstraction and encapsulation are unrelated.', 'Abstraction is about making relevant information visible, while encapsulation enables a programmer to implement the desired level of abstraction.', 'Encapsulation is about making relevant information visible, while abstraction enables a programmer to implement the desired level of encapsulation.', 'Abstraction is about making relevant information visible, while encapsulation enables a programmer to implement the desired level of abstraction.'),
(10, 10, 'Single command principle', 'Open-closed principle', 'Liskov Substitution principle', 'Dependency Injection principle', 'Single command principle'),
(11, 11, 'We decorate a function with a decorator by adding the @ sign and the name of a decorator on top of the function body.', 'We decorate a function with a decorator by adding the $ sign and the name of a decorator on top of the function body.', 'We decorate a function with a decorator by adding the @ sign and the name of a decorator anywhere before the function body.', 'We decorate a function with a decorator by adding the $ sign and the name of a decorator anywhere before the function body.', 'We decorate a function with a decorator by adding the @ sign and the name of a decorator on top of the function body.'),
(12, 12, 'We can pass them to other functions as arguments.', 'We can return them from other functions as values.', 'We can store them in variables and data structures.', 'We can pass them to other functions as parameters.', 'We can pass them to other functions as parameters.'),
(13, 13, 'A first-class citizen in a given programming language is an entity which supports all the operations generally available to other entities.', 'A type, object, entity, or value.', 'All of above.', 'None of the above', 'All of above.'),
(14, 14, 'A decorator is a function which takes another function as an argument and returns a modified version of it, enhancing its functionality in some way.', 'A decorator is a function which takes another function as a parameter and returns a modified version of it, enhancing its functionality in some way.', 'A decorator is a function which takes an argument and returns a modified version of it, enhancing its functionality in some way.', 'A decorator is an object which takes another object as an argument and returns a modified version of it, enhancing its functionality in some way.', 'A decorator is a function which takes another function as an argument and returns a modified version of it, enhancing its functionality in some way.'),
(15, 15, 'Stylist', 'Metaprogramming', 'Couturier', 'A design pattern', 'Metaprogramming'),
(16, 16, 'Decorators wrap a function, modifying its behaviour.', 'The @ symbol is also called pie syntax or syntactical sugar.', 'A decorator is just a regular Python function, so it can be reused as many times as you want.', 'A decorator is not like a regular Python function, so it cannot be reused as many times as you want.', 'A decorator is not like a regular Python function, so it cannot be reused as many times as you want.'),
(17, 17, 'We can define a decorator as a class. In order to do that, we have to use a __call__ method of classes.', 'We can define a decorator as a class. In order to do that, we have to use a __init__ method of classes.', 'We can define a decorator as a class. In order to do that, we have to use a __name__ method of classes.', 'We cannot define a decorator as a class.', 'We can define a decorator as a class. In order to do that, we have to use a __call__ method of classes.'),
(18, 18, 'Permanently', 'Temporarily', 'Cannot be determined', 'None of the above', 'Permanently'),
(19, 19, 'Positional arguments', 'Default arguments', 'Keyword arguments', 'Arbitrary arguments', 'Arbitrary arguments'),
(20, 20, '@static.method', '@static', '@static', 'None of the above', '@staticmethod'),
(21, 21, 'IN', 'LIKE', 'BETWEEN', 'IS', 'BETWEEN'),
(22, 22, 'ALTER TABLE EMPLOYEE MODIFY (last_name CHAR2(2000));', 'ALTER TABLE EMPLOYEE CHANGE (last_name CHAR2(2000));', 'ALTER TABLE EMPLOYEE CHANGE (last_name VARCHAR2 (2000));', 'ALTER TABLE EMPLOYEE MODIFY (last_name VARCHAR2 (2000));', 'ALTER TABLE EMPLOYEE MODIFY (last_name VARCHAR2 (2000));'),
(23, 23, 'GROUP BY', 'HAVING', 'ORDER BY', 'WHERE', 'ORDER BY'),
(24, 24, 'SELECT FullName FROM EmployeeDetails WHERE FullName LIKE ‘__hn%’;', 'SELECT FullName FROM EmployeeDetails WHERE FullName LIKE ‘__%hn’;', 'SELECT FullName FROM EmployeeDetails WHERE FullName LIKE ‘__%hn%’;', 'SELECT FullName FROM EmployeeDetails WHERE FullName LIKE ‘%__hn’;', 'SELECT FullName FROM EmployeeDetails WHERE FullName LIKE ‘__hn%’;'),
(25, 25, 'Structured Question Language', 'Structural Query Language', 'Structuring Query Language', 'Structured Query Language', 'Structured Query Language'),
(26, 26, 'A NULL value means zero.', 'A null value can only be used with numeric attributes.', 'Null value just means that data of that attribute is not available.', 'None of these.', 'Null value just means that data of that attribute is not available.'),
(27, 27, 'DISTINCT', 'WHERE', 'LIMIT', 'AS', 'DISTINCT'),
(28, 28, 'They both refer to the same operation of deleting the table completely.', 'They both refer to the same operation of clearing the table, but keeping its definition intact.', 'TRUNCATE deletes table completely, removing its definition as well. DROP clears the table but does not delete the definition.', 'DROP deletes table completely, removing its definition as well. TRUNCATE clears the table but does not delete the definition.', 'DROP deletes table completely, removing its definition as well. TRUNCATE clears the table but does not delete the definition.'),
(29, 29, 'SELECT * FROM inventory;', 'SELECT all FROM inventory;', 'FROM inventory SELECT all;', 'FROM inventory SELECT *;', 'SELECT * FROM inventory;'),
(30, 30, 'SELECT * FROM customers WHERE PhoneNumber = NULL;', 'SELECT * FROM customers WHERE PhoneNumber IS NOT VALID;', 'SELECT * FROM customers WHERE PhoneNumber IS NULL;', 'SELECT * FROM customers WHERE PhoneNumber IS UNKNOWN;', 'SELECT * FROM customers WHERE PhoneNumber IS NULL;'),
(31, 31, 'SELECT', 'ORDER BY', 'HAVING', 'FROM', 'ORDER BY'),
(32, 32, 'COLLATE', 'UNION', 'FULL JOIN', 'WITH', 'UNION'),
(33, 33, 'ALTER TABLE', 'SPECIFY', 'SETUP', 'SET', 'ALTER TABLE'),
(34, 34, 'We need to join information from multiple rows of a table in a result', 'We need to join information from multiple tables in a result', 'We want to join result of two queries into one', 'None of the above', 'We need to join information from multiple tables in a result.'),
(35, 35, 'Full Outer Join', 'Left Join', 'Right Join', 'None of these.', 'Full Outer Join'),
(36, 36, 'Set of triggers', 'Sequential id field', 'Minimum of three columns', 'Primary Key', 'Primary Key'),
(37, 37, 'Foreign', 'Cross', 'Primary', 'Secondary', 'Foreign'),
(38, 38, 'UNDO', 'UNCOMMIT', 'ROLLBACK', 'REVERSE', 'ROLLBACK'),
(39, 39, 'INNER JOIN', 'NATURAL JOIN', 'OUTER JOIN', 'CARTESIAN JOIN', 'OUTER JOIN'),
(40, 40, 'EXCLUDE', 'DELETE', 'DROP', 'REMOVE', 'DROP')
;


#Adding foreign keys
ALTER TABLE all_quiz_questions  
ADD CONSTRAINT 
FK_all_quiz_questions__quiz_categories
FOREIGN KEY(quiz_id)
REFERENCES quiz_categories (quiz_id);


ALTER TABLE quiz_participants  
ADD CONSTRAINT 
FK_quiz_participants__quiz_categories
FOREIGN KEY(quiz_id)
REFERENCES quiz_categories (quiz_id);


ALTER TABLE quiz_participant_scores_history  
ADD CONSTRAINT 
FK_quiz_participant_scores_history__quiz_categories
FOREIGN KEY(quiz_id)
REFERENCES quiz_categories (quiz_id);


ALTER TABLE quiz_question_answers  
ADD CONSTRAINT 
FK_quiz_question_answers__all_quiz_questions
FOREIGN KEY(quiz_question_id)
REFERENCES all_quiz_questions (quiz_question_id);


ALTER TABLE quiz_participant_scores_history  
ADD CONSTRAINT 
FK_quiz_participant_scores_history__quiz_participants
FOREIGN KEY(quiz_participant_id)
REFERENCES quiz_participants (quiz_participant_id);


ALTER TABLE quiz_participants  
ADD CONSTRAINT 
FK_quiz_participants__quiz_participant_scores_history
FOREIGN KEY(quiz_participant_id)
REFERENCES quiz_participant_scores_history (quiz_participant_id);





--Rebeccas


 CREATE database if not exists quiz_game;

 USE quiz_game;
 CREATE TABLE IF NOT EXISTS Quiz(
 	topic_id varchar (255),
     question varchar (255),
     ans1 varchar (255),
     ans2 varchar (255),
     ans3 varchar (255),
     ans4 varchar (255),
     correct_ans varchar (255)
     );
    

 INSERT INTO Quiz(topic_id,question,ans1,ans2,ans3,ans4,correct_ans)
 VALUES ('Python','Which of the following is not a core data type in Python?','Lists','Dictionaries','Tuples','Classes','Classes'),
 ('Python','What is the output of the following code? print(3%2)','0','1','2','2.5','1'),
 ('Python','What is the output of the following code? print(5**3)','5','15','25','125','125'),
 ('Python','What does the following code return? print("3" * 2)','6','5','33','TypeError','33'),
 ('Python','What does the following code return? print("3" + "2")','5','32','TypeError','[''3'',''2'']','32'),
 ('Python','What does the following code return? print(2+"1")','3','TypeError','21','2','TypeError'),
 ('Python','Which of the following statements is false?','OOP uses the concept of objects and classes.','A class defines the blueprint, which can be instantiated to create object(s)','In Python we dont always need to use the keyword class to create a class.','An object is an instantiation of a class.','In Python we dont always need to use the keyword class to create a class.');
    

Rebecca v2
CREATE database if not exists quiz_db;
USE quiz_db;

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

CREATE TABLE quiz_categories
AS SELECT
category_id,
question_id,
question
FROM quiz;


ALTER TABLE quiz_categories
ADD FOREIGN KEY (question_id) REFERENCES quiz(question_id); 
