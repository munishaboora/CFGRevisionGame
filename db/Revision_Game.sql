----Creating a database
--CREATE DATABASE Quiz_Game;
--
----Using a database
--USE Quiz_Game;
--
----Creating tables with their respective primary keys and columns
--CREATE TABLE quiz_categories (
--    quiz_id INTEGER NOT NULL,
--    quiz_category VARCHAR(255) NOT NULL,
--    CONSTRAINT PK_quiz_id PRIMARY KEY (quiz_id)
--);
--
--CREATE TABLE all_quiz_questions (
--    quiz_question_id INTEGER NOT NULL,
--    quiz_id INTEGER NOT NULL,
--    quiz_question VARCHAR(255) NOT NULL,
--	CONSTRAINT PK_quiz_question_id PRIMARY KEY (quiz_question_id)
--);
--
--CREATE TABLE quiz_question_answers (
--    quiz_question_answer_id INTEGER NOT NULL,
--    quiz_question_id INTEGER NOT NULL,
--    quiz_answer_option_1 VARCHAR(255) NOT NULL,
--    quiz_answer_option_2 VARCHAR(255) NOT NULL,
--    quiz_answer_option_3 VARCHAR(255) NOT NULL,
--    quiz_answer_option_4 VARCHAR(255) NOT NULL,
--    quiz_question_correct_answer VARCHAR(255) NOT NULL,
--    CONSTRAINT PK_quiz_question_answer_id PRIMARY KEY (quiz_question_answer_id)
--);
--
--CREATE TABLE quiz_participants (
--	quiz_participant_id INTEGER NOT NULL,
--	quiz_id INTEGER NOT NULL,
--	quiz_participant_first_name VARCHAR(255) NOT NULL,
--	quiz_participant_last_name VARCHAR(255) NOT NULL,
--	quiz_participant_email VARCHAR(255) NOT NULL,
--	quiz_participant_userid VARCHAR(255) NOT NULL,
--    CONSTRAINT PK_quiz_participant_id PRIMARY KEY (quiz_participant_id)
--);
--
--CREATE TABLE quiz_participant_scores_history (
--	quiz_id INTEGER NOT NULL,
--    quiz_participant_id INTEGER NOT NULL,
--    quiz_participant_score INTEGER NOT NULL,
--    CONSTRAINT PK_quiz_participant_id PRIMARY KEY (quiz_participant_id)
--);
--
--#Inserting data into tables
--INSERT INTO quiz_categories
--(quiz_id, quiz_category)
--VALUES
--(1, 'Classes'),
--(2, 'Decorators'),
--(3, 'SQL Queries'),
--(4, 'SQL Tables');
--
--
--INSERT INTO all_quiz_questions
--(quiz_question_id, quiz_id, quiz_question )
--VALUES
--(1, 1, 'What is Object Orientated Programming (OOP)?'),
--(2, 1, 'Which option is not an advantage of Object Orientated Programming (OOP)?'),
--(3, 1, 'Please select the false statement.'),
--(4, 1, 'What is inheritance?'),
--(5, 1, 'Which of the following best describes polymorphism?'),
--(6, 1, 'Which of the following is not a fundamental feature of Object Orientated Programming (OOP)?'),
--(7, 1, 'Methods of a class that provide access to private members of the class are _____ and _____ .'),
--(8, 1, 'The open/closed principle states that classes should be open for _____ but closed for _____ .'),
--(9, 1, 'What is the relationship between abstraction and encapsulation?'),
--(10, 1, 'Concerning the SOLID design principle, which of these is the odd one out?'),
---- (11, 2,''),
---- (12, 2, ''),
---- (13, 2, ''),
---- (14, 2, ''),
---- (15, 2, ''),
---- (16, 2, ''),
---- (17, 2, ''),
---- (18, 2, ''),
---- (19, 2, ''),
---- (20, 2, ''),
---- (21, 3, ''),
---- (22, 3, ''),
---- (23, 3, ''),
---- (24, 3, ''),
---- (25, 3, ''),
---- (26, 3, ''),
---- (27, 3, ''),
---- (28, 3, ''),
---- (29, 3, ''),
---- (30, 3, ''),
---- (31, 4, ''),
---- (32, 4, ''),
---- (33, 4, ''),
---- (34, 4, ''),
---- (35, 4, ''),
---- (36, 4, ''),
---- (37, 4, ''),
---- (38, 4, ''),
---- (39, 4, ''),
---- (40, 4, '')
--;
--
--
--INSERT INTO quiz_question_answers
--(quiz_question_answer_id, quiz_question_id, quiz_answer_option_1, quiz_answer_option_2, quiz_answer_option_3, quiz_answer_option_4, quiz_question_correct_answer)
--VALUES
--(1, ''),
--(2, 'Which option is not an advantage of Object Orientated Programming (OOP)?'),
--(3, 'Please select the false statement.'),
--(4, 'What is inheritance?'),
--(5, 'Which of the following best describes polymorphism?'),
--(6, 'Which of the following is not a fundamental feature of Object Orientated Programming (OOP)?'),
--(7, 'Methods of a class that provide access to private members of the class are _____ and _____ .'),
--(8, 'The open/closed principle states that classes should be open for _____ but closed for _____ .'),
--(9, 'What is the relationship between abstraction and encapsulation?'),
--(10, 'Concerning the SOLID design principle, which of these is the odd one out?'),
---- (11, 2,''),
---- (12, 2, ''),
---- (13, 2, ''),
---- (14, 2, ''),
---- (15, 2, ''),
---- (16, 2, ''),
---- (17, 2, ''),
---- (18, 2, ''),
---- (19, 2, ''),
---- (20, 2, ''),
---- (21, 3, ''),
---- (22, 3, ''),
---- (23, 3, ''),
---- (24, 3, ''),
---- (25, 3, ''),
---- (26, 3, ''),
---- (27, 3, ''),
---- (28, 3, ''),
---- (29, 3, ''),
---- (30, 3, ''),
---- (31, 4, ''),
---- (32, 4, ''),
---- (33, 4, ''),
---- (34, 4, ''),
---- (35, 4, ''),
---- (36, 4, ''),
---- (37, 4, ''),
---- (38, 4, ''),
---- (39, 4, ''),
---- (40, 4, '')
--;
--
--
--INSERT INTO quiz_participants
--(quiz_id, quiz_category)
--VALUES
--(1, 'Classes'),
--(2, 'Decorators'),
--(3, 'SQL Queries'),
--(4, 'SQL Tables');
--
--
--INSERT INTO quiz_participant_scores_history
--(quiz_id, quiz_category)
--VALUES
--(1, 'Classes'),
--(2, 'Decorators'),
--(3, 'SQL Queries'),
--(4, 'SQL Tables');
--
--
----Adding foreign keys
--ALTER TABLE email_address
--ADD  CONSTRAINT
--FK_email_address_customer
--FOREIGN KEY(customer_id)
--REFERENCES customer (customer_id);
--


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
    
