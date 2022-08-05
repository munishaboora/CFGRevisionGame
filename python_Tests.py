from tkinter import *
from xml.dom.minidom import ReadOnlySequentialNamedNodeMap
from constants import *
from question import *
from random import choice


def show_Python_Tests_Window(category):
    python_Tests_Window = Tk()
    python_Tests_Window.title('CFG Revision Game')
    python_Tests_Window.iconbitmap('icon.ico')
    python_Tests_Window.config(bg = BLACK)
    python_Tests_Window.resizable(0, 0)

    def show_Title():
        label_Title = Label(python_Tests_Window, text = 'CFG Revision Game', font = TITLE_FONT, fg = WHITE,
                            bg = BLUE)
        label_Title.grid(row = 0, column = 0, columnspan = 2)

    def show_Question():
        global random_Question
        random_Question = choice(category)
        question_Label = Label(python_Tests_Window, text = random_Question.question, font = QUESTION_FONT, bg = BLACK,
                               fg = WHITE)
        question_Label.grid(row = 1, column = 0, columnspan = 2)

    def show_Answer_Choices():
        ob1 = Button(python_Tests_Window, text = random_Question.op1, font = QUESTION_OPTIONS_FONT, bg = BLACK,
                     fg = WHITE, bd = 0)
        ob1.grid(row = 2, column = 0)

        ob2 = Button(python_Tests_Window, text = random_Question.op2, font = QUESTION_OPTIONS_FONT, bg = BLACK,
                     fg = WHITE, bd = 0)
        ob2.grid(row = 2, column = 1)

        ob3 = Button(python_Tests_Window, text = random_Question.op3, font = QUESTION_OPTIONS_FONT, bg = BLACK,
                     fg = WHITE, bd = 0)
        ob3.grid(row = 3, column = 0)

        ob4 = Button(python_Tests_Window, text = random_Question.op4, font = QUESTION_OPTIONS_FONT, bg = BLACK,
                     fg = WHITE, bd = 0)
        ob4.grid(row = 3, column = 1)

    show_Title()
    show_Question()
    show_Answer_Choices()

    python_Tests_Window.mainloop()
