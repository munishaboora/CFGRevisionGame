from db_connection import database_connection
from tkinter import *
from tkinter import messagebox
from PIL import Image, ImageTk


def create_gui():
    gui = Tk()
    gui.geometry("1000x600")
    gui.title("CFG Project Quiz")

    # # Load and place background image
    # background_image = Image.open("background_layout_frame.jpg")
    # background = ImageTk.PhotoImage(background_image)
    # label1 = Label(image=background)
    # label1.image = background
    # label1.place(x=-2, y=0)

    title = Label(gui, text="CFG Project Quiz", width=25, bg="dark slate blue", fg="white", font=("courier", 50, "bold"))
    title.place(x=0, y=2)
    return gui


def get_data(column_name):  # getting data from quiz db
    quiz_db = database_connection()
    my_cursor = quiz_db.cursor()
    my_cursor.execute(f"SELECT {column_name} FROM quiz")
    return my_cursor.fetchall()


def get_options(option_1, option_2, option_3, option_4):
    answer_options = []
    for option_1, option_2, option_3, option_4 in zip(option_1, option_2, option_3, option_4):
        new_list = [option_1, option_2, option_3, option_4]
        answer_options.append(new_list)
    return answer_options


def get_correct_answers(correct):
    all_correct_answers = []
    for each_answer in correct:
        answer_list = [each_answer]
        all_correct_answers.append(answer_list)
    return all_correct_answers


class NoOptionSelectedError(Exception):
    def __init__(self, no_opt_msg):
        super().__init__(no_opt_msg)


def valid_option_selected(number_chosen):
    if number_chosen == 0:
        raise NoOptionSelectedError("You must enter an answer.")


class MultipleChoiceQuiz:
    def __init__(self):
        self.correct = 0
        self.question_number = 0
        self.display_question()
        self.opt_selected = IntVar()
        self.opts = self.option_buttons()
        self.show_options()
        self.buttons()
        self.quiz_length = len(question)

    def display_question(self):
        each_opt = Label(quiz_gui, text=str(question[self.question_number])[2:-3], width=60,
                         font=('courier', 14, 'bold'), anchor='w')
        each_opt.place(x=100, y=160)

    def show_options(self):
        val = 0
        self.opt_selected.set(0)

        for option in options[self.question_number]:
            option = str(option)
            option = option[2:-3]
            self.opts[val]['text'] = option
            val += 1

    def check_answer(self, q_no):
        try:
            number_chosen = self.opt_selected.get()
            valid_option_selected(number_chosen)

        except NoOptionSelectedError as no_opt_msg: # at this point raise exception if no option is selected

            messagebox.showerror("Warning", f"{no_opt_msg}")
            number_chosen = self.opt_selected.get()

            while number_chosen == 0:
                number_chosen = self.opt_selected.get()
                valid_option_selected(number_chosen)
        else:
            user_answer = options[self.question_number]
            user_answer = str(user_answer[number_chosen - 1])
            user_answer = user_answer[2:-3]

            answer = correct_answers[self.question_number]
            answer = str(answer)
            answer = answer[3:-4]

            if user_answer == answer:
                self.correct += 1

    def next_button(self):

        if self.check_answer(self.question_number):    # check this part
            self.correct += 1

        self.question_number += 1

        if self.question_number == self.quiz_length:    # invert these
            self.results_messagebox()
            quiz_gui.destroy()
        else:
            self.display_question()
            self.show_options()

    def results_messagebox(self):
        correct = f"Correct: {self.correct}"
        incorrect = f"Incorrect: {(self.quiz_length - self.correct)}"
        percentage = f"Percentage: {(int(self.correct / self.quiz_length * 100))}%"

        messagebox.showinfo("Your results", f"{percentage}\n{correct}\n{incorrect}")

    def buttons(self):
        next_button = Button(quiz_gui, text="Next", command=self.next_button,
                             width=6, bg="dark slate blue", fg="white", font=("courier", 16, "bold"))
        next_button.place(x=820, y=483)

    def option_buttons(self):
        q_list = []
        y_axis = 230

        while len(q_list) < 4:
            radio_btn = Radiobutton(quiz_gui, text=" ", wraplength=800, variable=self.opt_selected,
                                    value=len(q_list) + 1, font=("courier", 13))

            q_list.append(radio_btn)
            radio_btn.place(x=110, y=y_axis)
            y_axis += 65

        # return the radio buttons
        return q_list


# Getting questions, options and answers from DB
question = get_data("question")
options = get_options(option_1=get_data("ans1"), option_2=get_data("ans2"), option_3=get_data("ans3"),
                      option_4=get_data("ans4"))
correct_answers = get_correct_answers(correct=get_data("correct_ans"))


quiz_gui = create_gui()  # create a GUI object
quiz_game = MultipleChoiceQuiz()  # create a Quiz object
quiz_gui.mainloop()  # Start the GUI
