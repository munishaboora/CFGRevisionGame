import mysql.connector


# Creating a connection to the database.
def database_connection():
    quiz_db = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",   # Enter your password here
        database="quiz_db")
    return quiz_db
