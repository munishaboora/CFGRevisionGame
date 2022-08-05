# functions
from tkinter import *
from quiz_data import *

options = get_options(option_1 = get_data("ans1"), option_2 = get_data("ans2"), option_3 = get_data("ans3"),
                      option_4 = get_data("ans4"))
correct_answers = get_correct_answers(correct = get_data("correct_ans"))


class NoOptionSelectedError(Exception):
    def __init__(self, no_opt_msg):
        super().__init__(no_opt_msg)


def valid_option_selected(number_chosen):
    if number_chosen == 0:
        raise NoOptionSelectedError("You must enter an answer.")


class QuizLogic:
    def __init__(self, questions):
        self.question_no = 0
        self.score = 0
        self.questions = questions
        self.quiz_length = len(questions)
        self.opt_selected = IntVar()
        self.current_question = None

    # Check if the quiz has more questions
    def remaining_questions(self):

        return self.question_no < len(self.questions)

    def next_question(self):
        # if self.check_answer(self.question_no):    # check this part
        #     self.score += 1
        #
        # self.question_no += 1
        self.current_question = self.questions[self.question_no]
        self.question_no += 1
        q_text = self.current_question.question_text
        return f"Q.{self.question_no}: {q_text}"

    def check_answer(self, q_no):
        # correct_answer = self.current_question.correct_answer
        # if user_answer.lower() == correct_answer.lower():
        #     self.score += 1
        #     return True
        # else:
        #     return False

        # try:
        number_chosen = self.opt_selected.get()
        valid_option_selected(number_chosen)

        # except NoOptionSelectedError as
            #     as no_opt_msg: # at this point raise exception if no option is selected
            #
            # messagebox.showerror("Warning", f"{no_opt_msg}")
            # number_chosen = self.opt_selected.get()

        while number_chosen == 0:
            number_chosen = self.opt_selected.get()
            valid_option_selected(number_chosen)
        # else:
        user_answer = options[self.question_no]
        user_answer = str(user_answer[number_chosen - 1])
        user_answer = user_answer[2:-3]

        answer = correct_answers[self.question_no]
        answer = str(answer)
        answer = answer[3:-4]

        if user_answer == answer:
            self.score += 1


    def get_score(self):
        """Get the number of correct answers, wrong answers and score percentage."""
        #
        # wrong = self.question_no - self.score
        # score_percent = int(self.score / self.question_no * 100)
        # return (self.score, wrong, score_percent)
        correct = f"Correct: {self.score}"
        incorrect = f"Incorrect: {(self.quiz_length - self.score)}"
        percentage = f"Percentage: {(int(self.score / self.quiz_length * 100))}%"

        # messagebox.showinfo("Your results", f"{percentage}\n{correct}\n{incorrect}")
        #
