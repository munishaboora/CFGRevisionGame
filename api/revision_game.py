from api.db_utils import database_connection

#Getting data from quiz db
def get_data(column_name):
    quiz_db = database_connection()
    my_cursor = quiz_db.cursor()
    my_cursor.execute(f"SELECT {column_name} FROM quiz")
    return my_cursor.fetchall()

#This fucntion removes unwanted punctuation when printing
def string_slice(db_data):  
    sliced_string = str(db_data)
    sliced_string = sliced_string[2:-3]
    return sliced_string