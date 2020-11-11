import pandas as pd
import pyodbc
import csv

cnxn = pyodbc.connect("Driver={SQL Server Native Client 11.0};"
                      "Server=DESKTOP-U75E5A5\MY_SQL_SERVER;"
                      "Database=Data_Pipelines_Mini-Project;"
                      "Trusted_Connection=yes;")


cursor = cnxn.cursor()

cursor.execute('''
			CREATE TABLE Ticket_Sales (ticket_id int, trans_date date, event_id int, event_name varchar(50), event_date varchar(50), 
			event_type varchar(50), event_city varchar(50), customer_id int, price decimal, num_of_ticket int)

			''')

columns= ['ticket_id','trans_date','event_id', 'event_name', 'event_date', 'event_type', 'event_city', 'customer_id', 'price', 'num_of_ticket']


with open(r'C:\Users\Su\Desktop\Spring Board Data Engineering\GITHUB\SpringBoard-Data-Engineering\Data Pipelines Mini-Project\third_party_sales_1.csv') as csvfile:
    data = csv.reader(csvfile)
    for row in data:
  
    	query = "insert into Ticket_Sales values ({}{}{}{}{}{}{}{}{}{})".format(row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9])
        cursor.execute(query)

cnxn.commit()