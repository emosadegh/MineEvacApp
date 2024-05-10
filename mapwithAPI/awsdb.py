import sqlite3
import mysql.connector

# Connect to SQLite database
#sqlite_conn = sqlite3.connect('path_to_your_sqlite_db') # where is this on device? how to find it?
#sqlite_cursor = sqlite_conn.cursor()

# Connect to AWS RDS MySQL database
#aws_conn = mysql.connector.connect(
   # host="your_rds_endpoint",
  #  user="your_rds_username",
 #   password="your_rds_password",
#    database="your_rds_db"
#)

# stablish connection to AWS RDS?
#aws_cursor = aws_conn.cursor()

#Retrieve all data from the location table
#aws_cursor.execute("SELECT * FROM Location")


# Retrieve data from SQLite
#sqlite_cursor.execute("SELECT * FROM Location")
#locations = sqlite_cursor.fetchall()

# Insert data into AWS RDS MySQL
#for location in locations:
#    # Assuming your RDS table structure matches SQLite's
 #   aws_cursor.execute("INSERT INTO Location (Latitude, Longitude, Timestamp) VALUES (%s, %s, %s)", location)

# Commit changes and close connections
#aws_conn.commit()
#aws_conn.close()
#sqlite_conn.close()


def conn2aws():
    try:
        # Connect to AWS RDS MySQL database
        aws_conn = mysql.connector.connect(
            host="minevacdb.c3qiqwiw2zt9.us-west-1.rds.amazonaws.com",
            user="ehsanm",
            password="123456",
            database="mineevac"
        )

        # Establish connection to AWS RDS
        aws_cursor = aws_conn.cursor()

        # Retrieve data from the location table
        aws_cursor.execute("SELECT * FROM Location")
        location_data = aws_cursor.fetchone()  # Assuming you only need one location data

        # Close cursor and connection
        aws_cursor.close()
        aws_conn.close()

        # Return location data
        return location_data

    except Exception as e:
        # Handle any exceptions
        print("Error:", e)
        return None

