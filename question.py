class Question:
    def __init__(self, category, topics, question, op1, op2, op3, op4, correct):
        self.category = category
        self.topics = topics
        self.question = question
        self.op1 = op1
        self.op2 = op2
        self.op3 = op3
        self.op4 = op4
        self.cor = correct


q1 = Question('python', 'classes', 'What is Object Orientated Programming (OOP)?',
              'A programming concept that provides patterns for structuring programs where properties and behaviors are bundled into individual objects',
              'A programming concept that provides patterns for structuring programs where properties and behaviors are not bundled into individual objects.',
              'A programming paradigm where programs are constructed by applying and composing functions.',
              'A programming paradigm specially designed to handle symbolic computation and list processing applications.',
              'A programming concept that provides patterns for structuring programs where properties and behaviors are bundled into individual objects.')
q2 = Question('python', 'classes', 'Which option is not an advantage of Object Orientated Programming (OOP)?',
              'Faster and cheaper development.', "Better software maintainability.",
              'Designing a program with an OOP concept is fairly easy.', 'Results in higher-quality software.',
              'Designing a program with an OOP concept is fairly easy.')
q3 = Question('python', 'classes', 'Please select the false statement.', 'OOP uses the concept of objects and classes.',
              'A class defines the blueprint, which can be instantiated to create object(s)',
              'In python we dont always need to use the keyword class to create a class.',
              'An object is an instantiation of a class.',
              'In python we dont always need to use the keyword class to create a class.')
q4 = Question('python', 'classes', 'What is inheritance?',
              'Inheritance is the process by which one class takes on the attributes and methods of another.',
              'Means of bundling instance variables and methods in order to restrict access to certain class members',
              'Focuses on variables and passing of variables to functions',
              'Allows for implementation of elegant software that is well designed and easily modified.',
              'Inheritance is the process by which one class takes on the attributes and methods of another.')
q5 = Question('python', 'classes', 'Which of the following best describes polymorphism?',
              'Ability of a class to derive members of another class as a part of its own definition.',
              'Allows for objects of different types and behaviour to be treated as the same general type.',
              'Means of bunding instance variables and methods in order to restrict access to certain class members.',
              'Focuses on variables and passing of variables to functions.',
              'Allows for objects of different types and behaviour to be treated as the same general type.')
q6 = Question('python', 'classes',
              'Which of these is not a fundamental feature of Object Orientated Programming (OOP)?', 'Encapsulation',
              'Inheritance', 'Polymorphism', 'Instantiation', 'Instantiation')
q7 = Question('python', 'classes',
              'Methods of a class that provide access to private members of the class are _____ and _____ .',
              '_repr_ / _str_', 'getters / setters', 'user-defined functions / in-built functions', '_init_ / _del_',
              'getters / setters')
q8 = Question('python', 'classes',
              'The open/closed principle states that classes should be open for _____ but closed for _____ .',
              'refactoring; duplication', 'reuse; encapsulation', 'modification; duplication',
              'extension; modification', 'extension; modification')
q9 = Question('python', 'classes', 'What is the relationship between abstraction and encapsulation?',
              'Abstraction and encapsulation are essentially the same.', 'Abstraction and encapsulation are unrelated.',
              'Abstraction is about making relevant information visible, while encapsulation enables a programmer to implement the desired level of abstraction.',
              'Encapsulation is about making relevant information visible, while abstraction enables a programmer to implement the desired level of encapsulation.',
              'Abstraction is about making relevant information visible, while encapsulation enables a programmer to implement the desired level of abstraction.')
q10 = Question('python', 'classes', 'Concerning the SOLID design principle, which of these is the odd one out?',
               'Single command principle', 'Open-closed principle', 'Liskov Substitution principle',
               'Dependency Injection principle', 'Single command principle')
q11 = Question('python', 'decorators', "How do we 'decorate' a function?",
               "We 'decorate' a function with a decorator by adding the @ sign and the name of a decorator on top of the function body.",
               "We 'decorate' a function with a decorator by adding the $ sign and the name of a decorator on top of the function body.",
               "We 'decorate' a function with a decorator by adding the @ sign and the name of a decorator anywhere before the function body.",
               "We 'decorate' a function with a decorator by adding the $ sign and the name of a decorator anywhere before the function body.",
               "We 'decorate' a function with a decorator by adding the @ sign and the name of a decorator on top of the function body.")
q12 = Question('python', 'decorators', 'Which one of the following is not an advantage of Python citizens?',
               'We can pass them to other functions as arguments.',
               'We can return them from other functions as values.',
               'We can store them in variables and data structures.',
               'We can pass them to other functions as parameters.',
               'We can pass them to other functions as parameters.')
q13 = Question('python', 'decorators', 'In programming language design, what is a first-class citizen?',
               'A first-class citizen in a given programming language is an entity which supports all the operations generally available to other entities.',
               'A type, object, entity, or value.', 'All of above.', 'None of the above', 'All of above.')
q14 = Question('python', 'decorators', 'What is a decorator?',
               'A decorator is a function which takes another function as an argument and returns a modified version of it, enhancing its functionality in some way.',
               'A decorator is a function which takes another function as a parameter and returns a modified version of it, enhancing its functionality in some way.',
               'A decorator is a function which takes an argument and returns a modified version of it, enhancing its functionality in some way.',
               'A decorator is an object which takes another object as an argument and returns a modified version of it, enhancing its functionality in some way.',
               'A decorator is a function which takes another function as an argument and returns a modified version of it, enhancing its functionality in some way.')
q15 = Question('python', 'decorators', 'What is another word for a decorator?', 'Stylist', 'Metaprogramming',
               'Couturier', 'A design pattern', 'Metaprogramming')
q16 = Question('python', 'decorators', 'Please select the false statement.',
               'Decorators wrap a function, modifying its behaviour.',
               'The @ symbol is also called ‚Äúpie‚Äù syntax or syntactical ‚Äúsugar‚Äù.',
               'A decorator is just a regular Python function, so it can be reused as many times as you want.',
               'A decorator is not like a regular Python function, so it cannot be reused as many times as you want.',
               'A decorator is not like a regular Python function, so it cannot be reused as many times as you want.')
q17 = Question('python', 'decorators', 'Please select the true statement.',
               'We can define a decorator as a class. In order to do that, we have to use a __call__ method of classes.',
               'We can define a decorator as a class. In order to do that, we have to use a __init__ method of classes.',
               'We can define a decorator as a class. In order to do that, we have to use a __name__ method of classes.',
               'We cannot define a decorator as a class.',
               'We can define a decorator as a class. In order to do that, we have to use a __call__ method of classes.')
q18 = Question('python', 'decorators', 'Decorators do not modify a function ______.', 'Permanently ', 'Temporarily',
               'Cannot be determined', 'None of the above', 'Permanently ')
q19 = Question('python', 'decorators', 'What type of arguments are used to create general-purpose decorators?',
               'Positional arguments', 'Default arguments', 'Keyword arguments', 'Arbitrary arguments',
               'Arbitrary arguments')
q20 = Question('python', 'decorators', 'Which decorator is used to define a static method?', '@static.method',
               '@static', '@static', 'None of the above', '@staticmethod')
q21 = Question('sql', 'queries', 'Which operator defines a range of values that the column values must fall in?', 'IN',
               'LIKE', 'BETWEEN', 'IS', 'BETWEEN')
q22 = Question('sql', 'queries', 'Which statement is valid? ', 'ALTER TABLE EMPLOYEE\nMODIFY (last_name CHAR2(2000));',
               'ALTER TABLE EMPLOYEE\nCHANGE (last_name CHAR2(2000));',
               'ALTER TABLE EMPLOYEE CHANGE (last_name VARCHAR2 (2000));',
               'ALTER TABLE EMPLOYEE MODIFY (last_name VARCHAR2 (2000));',
               'ALTER TABLE EMPLOYEE MODIFY (last_name VARCHAR2 (2000));')
q23 = Question('sql', 'queries', 'Select the clause which sorts the data of a table.', 'GROUP BY', 'HAVING', 'ORDER BY',
               'WHERE', 'ORDER BY')
q24 = Question('sql', 'queries',
               'Write an SQL query to fetch the employees whose name begins with any two characters, followed by a text “hn” and ending with any sequence of characters.',
               'SELECT FullName\nFROM EmployeeDetails\nWHERE FullName LIKE ‚Äò__hn%‚Äô;',
               'SELECT FullName\nFROM EmployeeDetails\nWHERE FullName LIKE ‚Äò__%hn‚Äô;',
               'SELECT FullName\nFROM EmployeeDetails\nWHERE FullName LIKE ‚Äò__%hn%‚Äô;',
               'SELECT FullName\nFROM EmployeeDetails\nWHERE FullName LIKE ‚Äò%__hn‚Äô;',
               'SELECT FullName\nFROM EmployeeDetails\nWHERE FullName LIKE ‚Äò__hn%‚Äô;')
q25 = Question('sql', 'queries', 'What does SQL stand for?', 'Structured Question Language',
               'Structural Query Language', 'Structuring Query Language', 'Structured Query Language',
               'Structured Query Language')
q26 = Question('sql', 'queries', 'Which of the following is true about NULL values in SQL?', 'A NULL value means zero.',
               'A null value can only be used with numeric attributes.',
               'Null value just means that data of that attribute is not available.', 'None of these.',
               'Null value just means that data of that attribute is not available.')
q27 = Question('sql', 'queries', 'How can you filter duplicate data while retrieving records from a table?', 'DISTINCT',
               'WHERE', 'LIMIT', 'AS', 'DISTINCT')
q28 = Question('sql', 'queries', 'What is the difference between DROP and TRUNCATE?',
               'They both refer to the same operation of deleting the table completely.',
               'They both refer to the same operation of clearing the table, but keeping its definition intact.',
               'TRUNCATE deletes table completely, removing its definition as well. DROP clears the table but does not delete the definition.',
               'DROP deletes table completely, removing its definition as well. TRUNCATE clears the table but does not delete the definition.',
               'DROP deletes table completely, removing its definition as well. TRUNCATE clears the table but does not delete the definition.')
q29 = Question('sql', 'queries', 'How do you select every row in a given table named "inventory"?',
               'SELECT *\nFROM inventory;', 'SELECT all\nFROM inventory;', 'FROM inventory SELECT all;',
               'FROM inventory SELECT *;', 'SELECT * FROM inventory;')
q30 = Question('sql', 'queries', 'How would you retrieve data on all the customers where no phone number is stored?',
               'SELECT *\nFROM customers\nWHERE PhoneNumber = NULL;',
               'SELECT *\nFROM customers\nWHERE PhoneNumber IS NOT VALID;',
               'SELECT *\nFROM customers\nWHERE PhoneNumber IS NULL;',
               'SELECT * FROM customers WHERE PhoneNumber IS UNKNOWN;;',
               'SELECT *\nFROM customers\nWHERE PhoneNumber IS NULL;')
q31 = Question('sql', 'tables', 'We can’t use subqueries with which of the clauses given below?', 'SELECT', 'ORDER BY',
               'HAVING ', 'FROM', 'ORDER BY')
q32 = Question('sql', 'tables',
               'You need to run a complex query with recursibe subqueries but without creating a stored procedure or a function. Which command or clause do you use?',
               'COLLATE', 'UNION', 'FULL JOIN', 'WITH', 'UNION')
q33 = Question('sql', 'tables', 'Which keyword is used to specify the foreign key after the table is created?',
               'ALTER TABLE', 'SPECIFY', 'SETUP', 'SET', 'ALTER TABLE')
q34 = Question('sql', 'tables', 'Join is required when:',
               'We need to join information from multiple rows of a table in a result',
               'We need to join information from multiple tables in a result',
               'We want to join result of two queries into one', 'None of the above',
               'We need to join information from multiple tables in a result.')
q35 = Question('sql', 'tables', 'Which of the following join extracts data of matching rows from both tables?',
               'Full Outer Join', 'Left Join', 'Right Join', 'None of these.', 'Full Outer Join')
q36 = Question('sql', 'tables', 'n an efficiently designed relational database, what does every table have?',
               'Set of triggers', 'Sequential id field', 'Minimum of three columns', 'Primary Key', 'Primary Key')
q37 = Question('sql', 'tables', 'Which key decalres that an index in one table is related to that in another?',
               'Foreign', 'Cross', 'Primary', 'Secondary', 'Foreign')
q38 = Question('sql', 'tables',
               'Inside a transaction, several operations need to be performed. What would you do if an exception happens during that transaction?',
               'UNDO', 'UNCOMMIT', 'ROLLBACK', 'REVERSE', 'ROLLBACK')
q39 = Question('sql', 'tables', 'The left and right joins are also known as _____ _____.', 'INNER JOIN', 'NATURAL JOIN',
               'OUTER JOIN', 'CARTESIAN JOIN', 'OUTER JOIN')
q40 = Question('sql', 'tables', 'Which clause is used to remove a foreign key constraint?', 'EXCLUDE', 'DELETE', 'DROP',
               'REMOVE', 'DROP')

python_Questions = [q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15, q16, q17, q18, q19, q20]
python_Classes_Questions = [q1, q2, q3, q4, q5, q6, q7, q8, q9, q10]
python_Decorators_Questions = [q11, q12, q13, q14, q15, q16, q17, q18, q19, q20]

sql_Questions = [q21, q22, q23, q24, q25, q26, q27, q28, q29, q30, q31, q32, q33, q34, q35, q36, q37, q38, q39, q40]
sql_Queries_Questions = [q21, q22, q23, q24, q25, q26, q27, q28, q29, q30]
sql_Tables_Questions = [q31, q32, q33, q34, q35, q36, q37, q38, q39, q40]