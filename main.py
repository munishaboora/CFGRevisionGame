from data import *
from question_model import Question
from mmenu_gui import CategorySelection
from functions import QuizLogic
from gui import QuizGui
from random import shuffle


def topic_question_bank(user_category):
    question_bank = []

    questions1 = get_data1("question", "quiz", f"WHERE category_id = \"{user_category}\"")
    options1 = get_options(option_1 = get_data1("option_1", "quiz", f"WHERE category_id = \"{user_category}\""),
                           option_2 = get_data1("option_2", "quiz", f"WHERE category_id = \"{user_category}\""),
                           option_3 = get_data1("option_3", "quiz", f"WHERE category_id = \"{user_category}\""),
                           option_4 = get_data1("option_4", "quiz", f"WHERE category_id = \"{user_category}\""))
    correct_answers1 = get_data1("correct_answer", "quiz", f"WHERE category_id = \"{user_category}\"")
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


categories = get_data1("category_id", "quiz_categories", "GROUP BY category_id")  # Getting categories from DB
category_select = CategorySelection(categories)
user_cat = category_select.user_category

quiz_game = QuizLogic(topic_question_bank(user_cat))
quiz_gui = QuizGui(quiz_game)
