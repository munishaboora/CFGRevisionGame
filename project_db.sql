CREATE database if not exists quiz_project;
USE quiz_project;

CREATE TABLE IF NOT EXISTS quiz(
	category_id varchar (255),
    question varchar (255),
    option_1 varchar (255),
    option_2 varchar (255),
    option_3 varchar (255),
    option_4 varchar (255),
    correct_answer varchar (255),
    PRIMARY KEY (question)
    );


INSERT INTO quiz(category_id, question, option_1, option_2, option_3, option_4, correct_answer) 
VALUES ('Python','Which of the following is not a core data type in Python?','Lists','Dictionaries','Tuples','Classes','Classes'),
('Python','What is the output of the following code? print(3%2)','0','1','2','2.5','1'), 
('Python','What is the output of the following code? print(5**3)','5','15','25','125','125'), 
('Python','What does the following code return? print("3" * 2)','6','5','33','TypeError','33'),
('Python','What does the following code return? print("3" + "2")','5','32','TypeError','[''3'',''2'']','32'),
('Python','What does the following code return? print(2+"1")','3','TypeError','21','2','TypeError'),
('Python','Which of the following statements is false?','OOP uses the concept of objects and classes.','A class defines the blueprint, which can be instantiated to create object(s)','In Python we dont always need to use the keyword class to create a class.','An object is an instantiation of a class.','In Python we dont always need to use the keyword class to create a class.'),
('Computer Science','What is the meaning of \'concurrency\'?',
'When two ore more tasks are run at the very same instant.',
'When two or tasks run over the same period, although not the same instant.',
'A system of money in general use in a particular country.',
'Agreeing or consistent.', 
'When two or tasks run over the same period, although not the same instant.'),
('SQL', 'What does SQL stand for?', 'Structured Question Language', 'Strong Question Language', 'Structured Query Language', "Structured Question Language", 'Structured Query Language');


CREATE TABLE quiz_categories
AS SELECT
category_id,
question
FROM quiz;


ALTER TABLE quiz_categories
ADD FOREIGN KEY (question) REFERENCES quiz(question); 