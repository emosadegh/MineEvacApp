using System;
using MySql.Data.MySqlClient;

public class DatabaseManager
{
    // Connection string for your AWS RDS MySQL database
    //private string awsConnectionString = "Server=YOUR_SERVER_ADDRESS;Port=3306;Database=YOUR_DATABASE_NAME;Uid=YOUR_USERNAME;Pwd=YOUR_PASSWORD;";


    // Define your AWS RDS MySQL database connection string
    private readonly string awsConnectionString = "Server=minevacdb.c3qiqwiw2zt9.us-west-1.rds.amazonaws.com;Port=3306;Database=mineevac;Uid=admin;Pwd=mine2024;";
                                         

    // Method to establish a connection to the AWS RDS MySQL database
    public MySqlConnection ConnectToDatabase()
    {
        MySqlConnection connection = new MySqlConnection(awsConnectionString);
        try
        {
            // Open the database connection
            connection.Open();
            return connection; // Return the connection object if successful
        }
        catch (Exception ex)
        {
            Console.WriteLine("Error connecting to the database: " + ex.Message);
            return null; // Return null if connection fails
        }
    }

    // Method to close the database connection
    public void CloseConnection(MySqlConnection connection)
    {
        if (connection != null && connection.State == System.Data.ConnectionState.Open)
        {
            connection.Close();
        }
    }
}