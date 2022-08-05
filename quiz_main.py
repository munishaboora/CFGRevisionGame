# running this main
from quiz_data import *
from quiz_function import QuizLogic
from quiz_gui import QuizGui

from random import shuffle


questions = get_data("question")
options = get_options(option_1=get_data("ans1"), option_2=get_data("ans2"), option_3=get_data("ans3"),
                      option_4=get_data("ans4"))
correct_answers = get_correct_answers(correct=get_data("correct_ans"))


quiz_game = QuizLogic(questions)  # create a Quiz object
quiz_gui = QuizGui(quiz_game)  # create a GUI object
# quiz_gui.mainloop()  # Start the GUI

# print("You've completed the quiz")
# print(f"Your final score was: {quiz.score}/{quiz.question_no}")