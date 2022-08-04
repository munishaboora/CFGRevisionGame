import mysql.connector

#Creating a connection to the database.
def database_connection():
    quiz_db = mysql.connector.connect(
        host="localhost",
        user="root",
        password="Sonia.moto?",
        database="quiz_game")
    return quiz_db
