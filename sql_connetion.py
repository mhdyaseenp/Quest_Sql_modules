import mysql.connector

connection = mysql.connector.connect(
    host='localhost',
    user='root',
    password='12345678',
    database='college'
)

if connection.is_connected():
    print("Connected Sucssessfully")
    
cursor = connection.cursor()

# cursor.execute("select * from employees")

cursor.execute("select * from employees")

result=cursor.fetchall()

print(result)