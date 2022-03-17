#! /usr/bin/python3

import os
import time
import psycopg2

#establishing the connection
conn = psycopg2.connect(
   database="student_results_db", user="mojau", password="M0Jau@123", host='/var/run/postgresql', port= '5432'
)

conn.autocommit = True
#Creating a cursor object using the cursor() method
cursor = conn.cursor()

cmd1 = "echo starting..."
os.system(cmd1)


#Executing an PostgreSQL quiery to start subscription using the execute() method
cursor.execute("ALTER SUBSCRIPTION my_subscription ENABLE")

time.sleep(10800)


cmd1 = "echo stopping..."
os.system(cmd1)
#Executing an PostgreSQL quiery to pause subscription using the execute() method
cursor.execute("ALTER SUBSCRIPTION my_subscription DISABLE")


#Closing the connection
conn.close()
