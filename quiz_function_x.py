class QuizLogic:
    def __init__(self, questions):
        self.questions = questions
        self.correct = 0
        self.question_num = 0
        self.curr_q = None

    def remaining_q(self):
        """To check for any more questions left"""

        return self.question_num < len(self.questions)

    def next_q(self):
        """Get the next question by incrementing the question number"""

        self.curr_q = self.questions[self.question_num]
        self.question_num += 1
        q_text = self.curr_q.question_text
        return f'Q{self.question_num}: {q_text}'

    def check_answer(self, opt_num):
        """Check if the option selected is correct"""
        user_ans = self.curr_q.options
        user_ans = str(user_ans[opt_num - 1])

        ans = str(self.curr_q.correct_answer)
        if user_ans == ans:
            self.correct += 1

    def get_score(self):
        """Get the number of correct, wrong and score percentage"""

        wrong = self.question_num - self.correct
        score_perc = int(self.correct / self.question_num * 100)
        return self.correct, wrong, score_perc