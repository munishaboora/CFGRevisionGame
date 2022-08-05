from tkinter import *
from constants import *
from python_Tests import *
from sql_Tests import *


def show_Main_Menu_Gui():
    main_Menu_Gui = Tk()
    main_Menu_Gui.title('CFG Revision Game')
    main_Menu_Gui.iconbitmap('icon.ico')
    main_Menu_Gui.config(bg = BLACK)
    main_Menu_Gui.resizable(0, 0)

    ### TITLE ###
    def show_Title():
        global label_Title
        label_Title = Label(text = 'CFG Revision Game', font = TITLE_FONT, fg = WHITE, bg = BLUE)
        label_Title.grid(row = 0, column = 0, columnspan = 2)

    ### TITLE ###

    ### PYTHON ###
    # classes
    def clicked_Classes():
        pass

    def show_Classes_Button():
        global classes_Button
        classes_Button = Button(text = 'Classes', font = BUTTON_FONT, fg = WHITE, bg = BLACK, bd = 0,
                                command = lambda:clicked_Python())
        classes_Button.grid(row = 1, column = 0)

    # decorators
    def clicked_Decorators():
        main_Menu_Gui.withdraw()

        show_Python_Tests_Window(python_Decorators_Questions)

    def show_Decorators_Button():
        global decorators_Button
        decorators_Button = Button(text = 'Decorators', font = BUTTON_FONT, fg = WHITE, bg = BLACK, bd = 0,
                                   command = lambda:clicked_Decorators())
        decorators_Button.grid(row = 1, column = 1)

    # python
    def clicked_Python():
        global python_Button
        python_Button.destroy()

        show_Classes_Button()
        show_Decorators_Button()

    def show_Python_Button():
        global python_Button
        python_Button = Button(text = 'Python', font = BUTTON_FONT, fg = WHITE, bg = BLACK, bd = 0,
                               command = lambda:clicked_Python())
        python_Button.grid(row = 1, column = 0)

    ### PYTHON ###

    ### SQL ###
    # queries
    def clicked_Queries():
        pass

    def show_Queries_Button():
        global queries_Button
        queries_Button = Button(text = 'Queries', font = BUTTON_FONT, fg = WHITE, bg = BLACK, bd = 0,
                                command = lambda:clicked_Python())
        queries_Button.grid(row = 1, column = 0)

    # tables
    def clicked_Tables():
        pass

    def show_Tables_Buttons():
        global tables_Button
        tables_Button = Button(text = 'Tables', font = BUTTON_FONT, fg = WHITE, bg = BLACK, bd = 0,
                               command = lambda:clicked_Python())
        tables_Button.grid(row = 1, column = 1)

    # sql
    def clicked_Sql():
        global sql_Button
        sql_Button.destroy()

        show_Queries_Button()
        show_Tables_Buttons()

    def show_Sql_Button():
        global sql_Button
        sql_Button = Button(text = 'SQL', font = BUTTON_FONT, fg = WHITE, bg = BLACK, bd = 0,
                            command = lambda:clicked_Sql())
        sql_Button.grid(row = 1, column = 1)

    ### SQL ###

    ### CATEGORY ###
    # select category
    def clicked_Select_Category():
        global select_Category_Button
        select_Category_Button.destroy()

        show_Python_Button()
        show_Sql_Button()

    def show_Category_Button():
        global select_Category_Button
        select_Category_Button = Button(text = 'Select Category', font = BUTTON_FONT, fg = WHITE, bg = BLACK, bd = 0,
                                        command = lambda:clicked_Select_Category())
        select_Category_Button.grid(row = 1, column = 0, columnspan = 2)

    ### CATEGORY ###

    ### QUIT ###
    # quit button
    def show_Quit_Button():
        global quit_Button
        quit_Button = Button(text = 'Quit', font = BUTTON_FONT, fg = WHITE, bg = BLACK, bd = 0,
                             command = lambda:main_Menu_Gui.quit())
        quit_Button.grid(row = 2, column = 0, columnspan = 2)

    ### QUIT ###

    def show_Title_Page():
        show_Title()
        show_Category_Button()
        show_Quit_Button()

    show_Title_Page()

    main_Menu_Gui.mainloop()


show_Main_Menu_Gui()