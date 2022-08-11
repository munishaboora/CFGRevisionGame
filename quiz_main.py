# main
from db_connection import database_connection
from question_model import Question
from quiz_data_x import *
from quiz_function_x import QuizLogic
from quiz_gui_x import *


questions = get_data('question')
options = get_options(option_1=get_data('ans1'), option_2=get_data('ans2'), option_3=get_data('ans3'),
                      option_4=get_data('ans4'))
correct_answers = get_correct_answers(correct=get_data('correct_ans'))


question_bank = []

for question_number in range(len(questions)):
    question_text = str(questions[question_number])[2:-3]
    option = options[question_number]
    ch = [''.join(i) for i in option]
    correct_answer = correct_answers[question_number]
    ans = [''.join(i) for i in correct_answer]
    new_question = Question(question_text, ans[0], ch)
    question_bank.append(new_question)


quiz_game = QuizLogic(question_bank)
quiz_gui = QuizGui(quiz_game)
