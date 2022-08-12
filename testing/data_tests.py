from unittest import TestCase, main
from CFGRevisionGame.database_connection.data import *


# testing get_data function from data.py file
class TestGetData(TestCase):
    def test_get_data(self):
        user_category = 'Python Classes'
        result = get_data("question", "quiz", f"WHERE category_id = \"{user_category}\"")
        expected = [('What is Object Orientated Programming (OOP)?',),
                    ('Which option is not an advantage of Object Orientated Programming (OOP)?',),
                    ('Please select the false statement.',),
                    ('What is inheritance?',),
                    ('Which of the following best describes polymorphism?',),
                    ('Which of these is not a fundamental feature of Object Orientated Programming (OOP)?',),
                    ('Methods of a class that provide access to private members of the class are _____ and _____ .',),
                    ('The open/closed principle states that classes should be open for _____ but closed for _____ .',),
                    ('What is the relationship between abstraction and encapsulation?',),
                    ('Concerning the SOLID design principle, which of these is the odd one out?',)]
        self.assertEqual(expected, result)

    def test_get_correct_answers(self):
        user_category2 = 'Python Decorators'
        result = get_data("correct_answer", "quiz", f"WHERE category_id = \"{user_category2}\"")
        expected = [("We 'decorate' a function with a decorator by adding the @ sign and the name of a decorator on top of the function body.",), ('We can pass them to other functions as parameters.',), ('All of above.',), ('A decorator is a function which takes another function as an argument and returns a modified version of it, enhancing its functionality in some way.',), ('Metaprogramming',), ('A decorator is not like a regular Python function, so it cannot be reused as many times as you want.',), ('We can define a decorator as a class. In order to do that, we have to use a __call__ method of classes.',), ('Permanently ',), ('Arbitrary arguments',)]
        self.assertEqual(expected, result)


# testing get_options function from data.py file
class TestGetOptions(TestCase):
    def test_get_options(self):
        user_category1 = 'SQL Tables'
        result = get_options(option_1 = get_data("option_1", "quiz", f"WHERE category_id = \"{user_category1}\""),
                             option_2 = get_data("option_2", "quiz", f"WHERE category_id = \"{user_category1}\""),
                             option_3 = get_data("option_3", "quiz", f"WHERE category_id = \"{user_category1}\""),
                             option_4 = get_data("option_4", "quiz", f"WHERE category_id = \"{user_category1}\""))
        expected = [[('SELECT',), ('ORDER BY',), ('HAVING ',), ('FROM',)], [('COLLATE',), ('UNION',), ('FULL JOIN',), ('WITH',)], [('ALTER TABLE',), ('SPECIFY',), ('SETUP',), ('SET',)], [('We need to join information from multiple rows of a table in a result',), ('We need to join information from multiple tables in a result',), ('We want to join result of two queries into one',), ('None of the above',)], [('Full Outer Join',), ('Left Join',), ('Right Join',), ('None of these.',)], [('Set of triggers',), ('Sequential id field',), ('Minimum of three columns',), ('Primary Key',)], [('Foreign',), ('Cross',), ('Primary',), ('Secondary',)], [('UNDO',), ('UNCOMMIT',), ('ROLLBACK',), ('REVERSE',)], [('INNER JOIN',), ('NATURAL JOIN',), ('OUTER JOIN',), ('CARTESIAN JOIN',)], [('EXCLUDE',), ('DELETE',), ('DROP',), ('REMOVE',)]]
        self.assertEqual(expected, result)


if __name__ == "__main__":
    main()

