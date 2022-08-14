from CFGRevisionGame.database_connection.db_utils import database_connection


# Getting data from quiz mysql_database
def get_data(column_name, table_name="quiz", other_commands=""):
    quiz_db = database_connection()
    my_cursor = quiz_db.cursor()
    my_cursor.execute(f"SELECT {column_name} FROM {table_name} {other_commands}")
    return my_cursor.fetchall()


# Getting answer options
def get_options(option_1, option_2, option_3, option_4):
    answer_options = []
    for option_1, option_2, option_3, option_4 in zip(option_1, option_2, option_3, option_4):
        new_list = [option_1, option_2, option_3, option_4]
        answer_options.append(new_list)
    return answer_options

