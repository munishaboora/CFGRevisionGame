from tkinter import Tk, IntVar, Label, Radiobutton, Button, messagebox
from CFGRevisionGame.client.invalid_selection_error import *
from CFGRevisionGame.gui.constants import *


class CategorySelection:
    def __init__(self, categories):
        self.categories = categories
        self.window = Tk()
        self.window.title('CFG Project Quiz')
        self.window.geometry('986x635')
        self.window.resizable(False, False)
        self.user_category = None
        self.window.config(bg = WHITE)

        # display title
        self.display_title()

        # display prompt question
        self.category_choice_prompt()

        # declare a IntVar() to store options selected
        self.category_opt_selected = IntVar()

        # display the category buttons
        self.category_opts = self.category_buttons()
        self.display_category_options()

        # next button
        self.cat_next_button()

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

    def category_choice_prompt(self):
        """To ask which category to select"""

        # prompt
        ask_category = Label(self.window,
                             text = "Select a category to revise:",
                             width = 70,
                             bg = WHITE,
                             font = QUESTION_FONT,
                             anchor = 'w'
                             )

        # place of the prompt
        ask_category.place(x=100, y=145)

    def category_buttons(self):
        """To create categories buttons using radio buttons"""

        # initialise an empty list for the category
        category_list = []

        # position of the first category
        y_axis = 250

        # adding category to the list
        while len(category_list) < len(self.categories):
            radio_btn = Radiobutton(self.window,
                                    text = ' ',
                                    indicatoron = False,
                                    width = 40,
                                    bg = PINK,
                                    wraplength = 675,
                                    variable = self.category_opt_selected,
                                    value = len(category_list) + 1,
                                    font = CATEGORY_FONT
                                    )

            # adding the buttons to the list
            category_list.append(radio_btn)

            # place of the button
            radio_btn.place(x = 240, y = y_axis)

            # incrementing the y-axis by 65
            y_axis += 70

        # return the radio buttons
        return category_list

    def display_category_options(self):
        """To display categories"""

        # resetting the categories selected
        self.category_opt_selected.set(0)

        # display the category to each button
        for val, category in enumerate(self.categories):
            category = str(category)[2:-3]
            self.category_opts[val]['text'] = category
            val += 1

    def category_next_button(self):
        """Make sure that a category is selected"""

        try:
            category_num_chosen = self.category_opt_selected.get()
            valid_option_selected(category_num_chosen)

        # raise an exception when no option is selected
        except NoOptionSelectedError as no_opt_msg:
            messagebox.showwarning("Warning", f"{no_opt_msg}")
            number_chosen = self.opt_selected.get()

            while number_chosen == 0:
                category_num_chosen = self.category_opt_selected.get()
                valid_option_selected(category_num_chosen)
        else:
            if category_num_chosen := str(self.categories[category_num_chosen - 1])[2:-3]:
                self.user_category = category_num_chosen

                # destroy the window once the category is selected
                self.window.destroy()

    def cat_next_button(self):
        """To show the next button"""

        # display the next button
        cat_next_button = Button(self.window,
                                 text = "Let's get started!",
                                 command = self.category_next_button,
                                 width = 18,
                                 bg = PINK,
                                 font = BUTTON_FONT
                                 )

        # place of the next button
        cat_next_button.place(x=655, y=550)
