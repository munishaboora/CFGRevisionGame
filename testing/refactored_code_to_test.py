import itertools
from api.revision_game import get_data, string_slice

class MultipleChoiceQuiz:
    def __init__(self):
        self.questions = get_data("question")
        self.ans1 = get_data("ans1")
        self.ans2 = get_data("ans2")
        self.ans3 = get_data("ans3")
        self.ans4 = get_data("ans4")
        self.correct_ans = get_data("correct_ans")
        self.score = 0
        self.quiz_length = len(self.questions)
        self.num_questions_answered = 0
        self.answered_incorrectly = {}

    def start_game(self):

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
                else:
                    self.answered_incorrectly.update({string_slice(question): string_slice(correct_answer)})

                self.num_questions_answered += 1

        percentage = int(round((self.score / self.quiz_length) * 100))
        return print(f"Final score: {self.score}/{self.quiz_length}")


new_game = MultipleChoiceQuiz()
new_game.start_game()
