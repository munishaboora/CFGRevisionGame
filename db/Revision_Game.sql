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