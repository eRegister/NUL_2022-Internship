import mysql.connector
import time
import os

mydb = mysql.connector.connect(
  host="localhost",
  user="mojau",
  password="M0Jau@123",
  database="student_results_db"
  #auth_plugin='caching_sha2_password
)

mycursor = mydb.cursor()

mycursor.execute("START REPLICA") 
cmd1 = "echo starting replica..."
os.system(cmd1)
time.sleep(10800)  #replica fetches from master for 3 hours = 10800seconds
mycursor.execute("STOP REPLICA")

cmd2 = "echo stopping replica....."
os.system(cmd2)
