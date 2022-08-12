from unittest import TestCase, main
from CFGRevisionGame.client.quiz_functions import QuizLogic
from CFGRevisionGame.client.main import topic_question_bank

# testing remaining_q function from quiz_functions.py file
class TestRemainingQ(TestCase):
    def test_remaining_q_case_true(self):
        question = [('What is Object Orientated Programming (OOP)?',),
                    ('Which option is not an advantage of Object Orientated Programming (OOP)?',),
                    ('Please select the false statement.',),
                    ('What is inheritance?',),
                    ('Which of the following best describes polymorphism?',),
                    ('Which of these is not a fundamental feature of Object Orientated Programming (OOP)?',),
                    ('Methods of a class that provide access to private members of the class are _____ and _____ .',),
                    ('The open/closed principle states that classes should be open for _____ but closed for _____ .',),
                    ('What is the relationship between abstraction and encapsulation?',),
                    ('Concerning the SOLID design principle, which of these is the odd one out?',)]
        quiz_true = QuizLogic(question)
        quiz_true.question_num = 9
        quiz_true.questions = 10
        self.assertTrue(quiz_true.question_num < quiz_true.questions)

    def test_remaining_q_case_false(self):
        question = [('What is Object Orientated Programming (OOP)?',),
                    ('Which option is not an advantage of Object Orientated Programming (OOP)?',),
                    ('Please select the false statement.',),
                    ('What is inheritance?',),
                    ('Which of the following best describes polymorphism?',),
                    ('Which of these is not a fundamental feature of Object Orientated Programming (OOP)?',),
                    ('Methods of a class that provide access to private members of the class are _____ and _____ .',),
                    ('The open/closed principle states that classes should be open for _____ but closed for _____ .',),
                    ('What is the relationship between abstraction and encapsulation?',),
                    ('Concerning the SOLID design principle, which of these is the odd one out?',)]
        quiz_false = QuizLogic(question)
        quiz_false.question_num = 15
        quiz_false.questions = 10
        self.assertFalse(quiz_false.question_num < quiz_false.questions)


# testing next_q function from quiz_functions.py file
class TestNextQ(TestCase):
    def test_next_q(self):
        question = 'Python Classes'
        quiz_l = QuizLogic(topic_question_bank(question))
        quiz_l.question_num = 6
        result = quiz_l.next_q()
        expected = 'Q7: Methods of a class that provide access to private members of the class are _____ and _____ .'
        self.assertEqual(result, expected)


# testing get_score function from quiz_functions.py file
class TestGetScore(TestCase):
    def test_get_score(self):
        question = 'Python Classes'
        quiz_s = QuizLogic(topic_question_bank(question))
        quiz_s.question_num = 10
        quiz_s.correct = 7
        result = quiz_s.get_score()
        expected = 7, 3, 70
        self.assertEqual(result, expected)


if __name__ == "__main__":
    main()
