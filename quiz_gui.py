from tkinter import *
from quiz_function import QuizLogic
from tkinter import Tk, Canvas, StringVar, Label, Radiobutton, Button, messagebox


class QuizGui:
    def __init__(self, quiz_logic: QuizLogic) -> None:
        self.quiz = quiz_logic
        self.gui = Tk()
        self.gui.title("CFG Project Quiz")
        self.gui.geometry("1000x600")

        self.display_title()

        self.canvas = Canvas(width=800, height=250)
        self.question_text = self.canvas.create_text(400, 125,
                                                     text="Question here",
                                                     width=680,
                                                     # fill=THEME_COLOR,
                                                     font=(
                                                         'Ariel', 15, 'italic')
                                                     )
        self.canvas.grid(row = 2, column = 0, columnspan = 2, pady = 50)
        self.display_question()

        # Declare a StringVar to store user's answer
        self.user_answer = StringVar()

        # Display four options(radio buttons)
        self.opts = self.option_buttons()
        self.display_options()

        # To show whether the answer is correct or wrong
        self.feedback = Label(self.gui, pady = 10, font = ("ariel", 15, "bold"))
        self.feedback.place(x = 300, y = 380)

        # Next and Quit Button
        self.buttons()

        # Mainloop
        self.gui.mainloop()

    def display_title(self):
        # title
        title = Label(self.gui, text = "CFG Project Quiz", width = 25, bg = "dark slate blue", fg = "white",
                      font = ("courier", 50, "bold"))

        # place of the title
        title.place(x = 0, y = 2)

    # def display_question(self):
    #     each_opt = Label(self.gui, text=str(question[self.question_number])[2:-3], width=60,
    #                      font=('courier', 14, 'bold'), anchor='w')
    #     each_opt.place(x=100, y=160)

    def display_question(self):
        q_text = self.quiz.next_question()
        self.canvas.itemconfig(self.question_text, text = q_text)

    def option_buttons(self):
        q_list = []
        y_axis = 230

        while len(q_list) < 4:
            radio_btn = Radiobutton(self.gui, text=" ", wraplength=800, variable=self.user_answer,
                                    value=len(q_list) + 1, font=("courier", 13))

            q_list.append(radio_btn)
            radio_btn.place(x=110, y=y_axis)
            y_axis += 65

        # return the radio buttons
        return q_list

    # def next_btn(self):
    #
    #     if self.quiz.check_answer(self.user_answer.get()):  # check this part
    #         self.correct += 1
    #
    #     self.question_number += 1
    #
    #     if self.question_number == self.quiz_length:  # invert these
    #         self.results_messagebox()
    #         quiz_gui.destroy()
    #     else:
    #         self.display_question()
    #         self.show_options()
    def display_options(self):
        """To display four options"""

        val = 0

        # deselecting the options
        self.user_answer.set(None)

        # looping over the options to be displayed for the
        # text of the radio buttons.
        for option in self.quiz.current_question.choices:
            self.opts[val]['text'] = option
            self.opts[val]['value'] = option
            val += 1

    # def show_options(self):
    #     val = 0
    #     self.opt_selected.set(0)
    #
    #     for option in options[self.question_number]:
    #         option = str(option)
    #         option = option[2:-3]
    #         self.opts[val]['text'] = option
    #         val += 1

    def next_btn(self):
        """To show feedback for each answer and keep checking for more questions"""

        # Check if the answer is correct
        if self.quiz.check_answer(self.user_answer.get()):
            self.feedback["fg"] = "green"
            self.feedback["text"] = 'Correct answer! \U0001F44D'
        else:
            self.feedback['fg'] = 'red'
            self.feedback['text'] = ('\u274E Oops! \n'
                                     f'The right answer is: {self.quiz.current_question.correct_answer}')

        if self.quiz.remaining_questions():
            # Moves to next to display next question and its options
            self.display_question()
            self.option_buttons()
        else:
            # if no more questions, then it displays the score
            self.display_result()

            # destroys the self.window
            self.gui.destroy()


    def buttons(self):
        """To show next button and quit button"""

        # The first button is the Next button to move to the
        # next Question
        next_button = Button(self.gui, text="Next", command=self.next_btn,
                             width=10, bg="green", fg="white", font=("ariel", 16, "bold"))

        # palcing the button  on the screen
        next_button.place(x=350, y=460)

        # This is the second button which is used to Quit the self.window
        quit_button = Button(self.gui, text="Quit", command=self.gui.destroy,
                             width=5, bg="red", fg="white", font=("ariel", 16, " bold"))

        # placing the Quit button on the screen
        quit_button.place(x=700, y=50)


    def display_result(self):
        """To display the result using messagebox"""
        correct, wrong, score_percent = self.quiz.get_score()

        correct = f"Correct: {correct}"
        wrong = f"Wrong: {wrong}"

        # calculates the percentage of correct answers
        result = f"Score: {score_percent}%"

        # Shows a message box to display the result
        messagebox.showinfo("Result", f"{result}\n{correct}\n{wrong}")


    # def buttons(self):
    #     next_button = Button(quiz_gui, text="Next", command=self.next_button,
    #                          width=6, bg="dark slate blue", fg="white", font=("courier", 16, "bold"))
    #     next_button.place(x=820, y=483)