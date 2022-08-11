from db_connection import database_connection


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


