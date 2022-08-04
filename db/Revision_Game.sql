CREATE DATABASE Revision_Game;
USE Revision_Game;

CREATE TABLE quiz_categories (
    quiz_id INTEGER NOT NULL,
    quiz_category VARCHAR(255) NOT NULL
--     CONSTRAINT PK_quiz_id PRIMARY KEY (quiz_id)
);

CREATE TABLE all_quiz_questions (
    quiz_question_id INTEGER NOT NULL,
    quiz_id INTEGER NOT NULL,
    quiz_question VARCHAR(255) NOT NULL
);

CREATE TABLE quiz_question_answers (
    quiz_question_answer_id INTEGER NOT NULL,
    quiz_question_id INTEGER NOT NULL,
    quiz_answer_option_1 VARCHAR(255) NOT NULL,
    quiz_answer_option_2 VARCHAR(255) NOT NULL,
    quiz_answer_option_3 VARCHAR(255) NOT NULL,
    quiz_answer_option_4 VARCHAR(255) NOT NULL,
    quiz_question_correct_answer VARCHAR(255) NOT NULL
);

CREATE TABLE quiz_participants (
	quiz_participant_id INTEGER NOT NULL,
	quiz_id INTEGER NOT NULL,
	quiz_participant_first_name VARCHAR(255) NOT NULL,
	quiz_participant_last_name VARCHAR(255) NOT NULL,
	quiz_participant_email VARCHAR(255) NOT NULL,
	quiz_participant_userid VARCHAR(255) NOT NULL
);

CREATE TABLE quiz_participant_scores_history (
	quiz_id INTEGER NOT NULL,
    quiz_participant_id INTEGER NOT NULL,
    quiz_participant_score INTEGER NOT NULL
);

#Rebeccas
-- CREATE database if not exists quiz_game;

-- USE quiz_game;
-- CREATE TABLE IF NOT EXISTS Quiz(
-- 	topic_id varchar (255),
--     question varchar (255),
--     ans1 varchar (255),
--     ans2 varchar (255),
--     ans3 varchar (255),
--     ans4 varchar (255),
--     correct_ans varchar (255)
--     );
    

-- INSERT INTO Quiz(topic_id,question,ans1,ans2,ans3,ans4,correct_ans) 
-- VALUES ('Python','Which of the following is not a core data type in Python?','Lists','Dictionaries','Tuples','Classes','Classes'),
-- ('Python','What is the output of the following code? print(3%2)','0','1','2','2.5','1'), 
-- ('Python','What is the output of the following code? print(5**3)','5','15','25','125','125'), 
-- ('Python','What does the following code return? print("3" * 2)','6','5','33','TypeError','33'),
-- ('Python','What does the following code return? print("3" + "2")','5','32','TypeError','[''3'',''2'']','32'),
-- ('Python','What does the following code return? print(2+"1")','3','TypeError','21','2','TypeError'),
-- ('Python','Which of the following statements is false?','OOP uses the concept of objects and classes.','A class defines the blueprint, which can be instantiated to create object(s)','In Python we dont always need to use the keyword class to create a class.','An object is an instantiation of a class.','In Python we dont always need to use the keyword class to create a class.');
    
