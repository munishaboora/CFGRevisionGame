from tkinter import Tk, IntVar, Label, Radiobutton, Button, messagebox
from CFGRevisionGame.client.quiz_functions import QuizLogic
from CFGRevisionGame.client.invalid_selection_error import *
from CFGRevisionGame.gui.constants import *


class QuizGui:
    def __init__(self, quiz_logic = QuizLogic) -> None:
        self.quiz = quiz_logic
        self.window = Tk()
        self.window.title('CFG Project Quiz')
        self.window.geometry('986x635')
        self.window.resizable(False, False)
        self.window.config(bg = WHITE)

        # display title
        self.display_title()

        # display question
        self.display_question()

        # declare a IntVar() to store options selected
        self.opt_selected = IntVar()

        # display four option buttons
        self.opts = self.option_buttons()
        self.display_options()

        # Next and Quit Button
        self.buttons()

        # mainloop
        self.window.mainloop()

    def display_title(self):
        """To display title"""

        # title
        title = Label(self.window,
                      text = 'CFG Project Quiz',
                      width = 28,
                      bg = PURPLE,
                      fg = WHITE,
                      font = TITLE_FONT
                      )

        # place of the title
        title.place(x = 0, y = 0)

    def display_question(self):
        """To display questions"""

        # question
        question_txt = Label(self.window,
                             text = self.quiz.next_q(),
                             width = 60,
                             wraplength = 760,
                             bg = WHITE,
                             justify = 'left',
                             pady = 25,
                             font = QUESTION_FONT,
                             anchor = 'w'
                             )

        # place of the question
        question_txt.place(x=100, y=122)

    def option_buttons(self):
        """To create four option buttons using radio buttons"""

        # initialise an empty list for the options
        opt_list = []

        # position of the first option
        y_axis = 250

        # adding options to the list
        while len(opt_list) < 4:

            # setting the radio button properties
            radio_button = Radiobutton(self.window,
                                       text = ' ',
                                       wraplength = 675,
                                       variable = self.opt_selected,
                                       bg = WHITE,
                                       value = len(opt_list) + 1,
                                       font = OPTIONS_FONT,
                                       justify = 'left'
                                       )

            # adding the buttons to the list
            opt_list.append(radio_button)

            # place of the button
            radio_button.place(x = 145, y = y_axis)

            # incrementing the y-axis by 65
            y_axis += 70

        # return the radio buttons
        return opt_list

    def display_options(self):
        """To display four options"""

        val = 0

        # resetting the options selected
        self.opt_selected.set(0)

        # display the option to each button
        for option in self.quiz.curr_q.options:
            self.opts[val]['text'] = option
            val += 1

    def next_button(self):
        """Making sure an option is selected before going to the next
        question and check for remaining questions"""

        # checking the answer
        opt_num = self.opt_selected.get()
        self.quiz.check_answer(opt_num)

        try:
            valid_option_selected(opt_num)

        # raise an exception when no option is selected
        except NoOptionSelectedError as no_opt_msg:
            messagebox.showwarning('Warning', f'{no_opt_msg}')

            while opt_num == 0:
                valid_option_selected(opt_num)

        if self.quiz.remaining_q():
            # display the next question and its options
            self.display_question()
            self.display_options()
        else:
            # display the result when there's no more question left
            self.result_messagebox()

            # destroys the window when the quiz is done
            self.window.destroy()

    def buttons(self):
        """To show the next and quit button"""

        # display the next button
        next_button = Button(self.window,
                             text = 'Next',
                             command = self.next_button,
                             width = 6,
                             bg = LIGHTPURPLE,
                             font = BUTTON_FONT)
        # place of the next button
        next_button.place(x = 430, y = 545)

    def result_messagebox(self):
        """To display the result using messagebox"""

        correct, wrong, score_perc = self.quiz.get_score()
        correct = f'Correct: {correct}'
        wrong = f'Wrong: {wrong}'

        # calculates the percentage of correct answers
        result = f'Score: {score_perc}%'

        # shows a message box to display the result
        messagebox.showinfo(f'Result', f'{result}\n{correct}\n{wrong}')
