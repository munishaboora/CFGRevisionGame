from password import db_connection_pass

def database_connection():
    import mysql.connector
    quiz_db = mysql.connector.connect(
        host="localhost",
        user="root",
        password=db_connection_pass,
        database="quiz_game")
    return quiz_db
