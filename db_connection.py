def database_connection():
    import mysql.connector
    return mysql.connector.connect(host="localhost", user="root", password="", database="quiz_project")
