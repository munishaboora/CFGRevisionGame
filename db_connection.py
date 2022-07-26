def database_connection():
    import mysql.connector
    quiz_db = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="quiz_game")
    return quiz_db
