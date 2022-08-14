from CFGRevisionGame.database_connection.data import *
from CFGRevisionGame.client.question_model import Question
from CFGRevisionGame.gui.main_menu_gui import CategorySelection
from CFGRevisionGame.client.quiz_functions import QuizLogic
from CFGRevisionGame.gui.quiz_gui import QuizGui
from random import shuffle


def topic_question_bank(user_category):
    """This function retrieves questions related to a category in which it groups the questions,
    options and the correct answers in a class object"""

    # initialise an empty list for question_bank
    question_bank = []

    # retrieving required data from the database
    questions1 = get_data("question", "quiz", f"WHERE category_id = \"{user_category}\"")
    options1 = get_options(option_1 = get_data("option_1", "quiz", f"WHERE category_id = \"{user_category}\""),
                           option_2 = get_data("option_2", "quiz", f"WHERE category_id = \"{user_category}\""),
                           option_3 = get_data("option_3", "quiz", f"WHERE category_id = \"{user_category}\""),
                           option_4 = get_data("option_4", "quiz", f"WHERE category_id = \"{user_category}\""))
    correct_answers1 = get_data("correct_answer", "quiz", f"WHERE category_id = \"{user_category}\"")

    # removes unnecessary characters from the data
    for question_number in range(len(questions1)):
        question_text = str(questions1[question_number])[2:-3]
        option = options1[question_number]
        opt = [''.join(i) for i in option]
        correct_answer = correct_answers1[question_number]
        ans = [''.join(i) for i in correct_answer]
        shuffle(opt)
        new_question = Question(question_text, ans[0], opt)
        question_bank.append(new_question)
    return question_bank


# Getting categories from DB
categories = get_data("category_id", "quiz_categories", "GROUP BY category_id")

# Calls the main menu gui
category_select = CategorySelection(categories)
user_cat = category_select.user_category

# Calls the quiz gui
quiz_game = QuizLogic(topic_question_bank(user_cat))
quiz_gui = QuizGui(quiz_game)
