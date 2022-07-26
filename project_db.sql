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
    
