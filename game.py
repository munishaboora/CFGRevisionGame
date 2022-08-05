import itertools
from db_connection import database_connection
from prettytable import PrettyTable


def get_data(column_name, table_name, other_commands=""):
    """
    This retrieves data relating to our quiz from an SQL database.

    :param column_name: the exact name of the required column(s) as it appears in the database.
    :param table_name: the exact name of the required table(s) as it appears in the database.
    :param other_commands: other SQL commands which go AFTER the table name clause can be included here, such as GROUP
    BY or HAVING. An empty string is the default so no other commands are included unless specified.
    :return: the data from the selected column(s) and table(s).
    """
    quiz_db = database_connection()
    my_cursor = quiz_db.cursor()

    my_cursor.execute(f"SELECT {column_name} FROM {table_name} {other_commands}")
    return my_cursor.fetchall()


def string_slice(db_data):  # this is to remove unwanted punctuation when printing
    return (str(db_data))[2:-3]


def category_choice():
    print("These are the categories:")
    all_categories = [string_slice(category) for category in get_data("category_id","quiz_categories GROUP BY "
                                                                                    "category_id")]

    [print(category) for category in all_categories]
    user_category = input("\nSelect a category to revise: ")

    while user_category not in all_categories:
        user_category = input("\nSelect a category to revise: ")

    return user_category


class MultipleChoiceQuiz:
    def __init__(self, user_category):
        self.user_category = user_category
        self.questions = get_data("question", "quiz", f"WHERE category_id = \"{user_category}\"")
        self.ans1 = get_data("ans1", "quiz", f"WHERE category_id = \"{user_category}\"")
        self.ans2 = get_data("ans2", "quiz", f"WHERE category_id = \"{user_category}\"")
        self.ans3 = get_data("ans3", "quiz", f"WHERE category_id = \"{user_category}\"")
        self.ans4 = get_data("ans4", "quiz", f"WHERE category_id = \"{user_category}\"")
        self.correct_ans = get_data("correct_ans", "quiz", f"WHERE category_id = \"{user_category}\"")
        self.score = 0
        self.quiz_length = len(self.questions)
        self.num_questions_answered = 0
        self.answered_incorrectly = {}

    def start_game(self):
        print("Let's get started!")
        while self.num_questions_answered < self.quiz_length:
            for question, correct_answer, ansA, ansB, ansC, ansD in itertools.zip_longest(self.questions,
                                                                                          self.correct_ans, self.ans1,
                                                                                          self.ans2, self.ans3,
                                                                                          self.ans4):

                print(f"\n{string_slice(question)}\na- {string_slice(ansA)}\nb- {string_slice(ansB)}\n"
                      f"c- {string_slice(ansC)}\nd- {string_slice(ansD)}\n")
                input_answer = (input("Enter your answer [a/b/c/d]: ").lower())

                while input_answer not in ["a", "b", "c", "d"]:
                    input_answer = (input("Enter your answer [a/b/c/d]: ").lower())

                if input_answer == "a":
                    input_answer = ansA
                elif input_answer == "b":
                    input_answer = ansB
                elif input_answer == "c":
                    input_answer = ansC
                elif input_answer == "d":
                    input_answer = ansD

                if input_answer == correct_answer:
                    self.score += 1
                # else:    # appends incorrectly answered question with the correct answer
                #     self.answered_incorrectly.update({string_slice(question): string_slice(correct_answer)})

                self.num_questions_answered += 1

        percentage = int(round((self.score / self.quiz_length) * 100))
        print(f"\nFinal score: {self.score}/{self.quiz_length}"
              f"\nPercentage: {percentage}%")

        # # prints a table of incorrectly answered questions and their correct answers
        # if self.answered_incorrectly:    # only  prints if dict is not empty
        #     print(f"\n\nIncorrect answers:")
        #
        #     def dicttable(dic):
        #         incorrect_answers = list(self.answered_incorrectly.items())
        #         table = PrettyTable(["Question", "Correct answer"])
        #
        #         for q, a in incorrect_answers:
        #             table.add_row([q, a])
        #
        #         print(table)
        #
        #     dicttable({'SA': 3, 'MC': 4, 'UG': 6})
        # else:
        #     "Well done!"

new_game = MultipleChoiceQuiz(user_category=category_choice())
new_game.start_game()
