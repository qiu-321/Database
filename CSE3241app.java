

import java.sql.DriverManager;
import java.sql.DatabaseMetaData;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

/**
 * <h1>CSE3241 Introduction to Database Systems - Sample Java application.</h1>
 * 
 * <p>Sample app to be used as guidance and a foundation for students of 
 * CSE3241 Introduction to Database Systems at 
 * The Ohio State University.</p>
 * 
 * <h2>!!! - Vulnerable to SQL injection - !!!</h2>
 * <p>Correct the code so that it is not vulnerable to a SQL injection attack. ("Parameter substitution" is the usual way to do this.)</p>
 * 
 * <p>Class is written in Java SE 8 and in a procedural style. Implement a constructor if you build this app out in OOP style.</p>
 * <p>Modify and extend this app as necessary for your project.</p>
 *
 * <h2>Language Documentation:</h2>
 * <ul>
 * <li><a href="https://docs.oracle.com/javase/8/docs/">Java SE 8</a></li>
 * <li><a href="https://docs.oracle.com/javase/8/docs/api/">Java SE 8 API</a></li>
 * <li><a href="https://docs.oracle.com/javase/8/docs/technotes/guides/jdbc/">Java JDBC API</a></li>
 * <li><a href="https://www.sqlite.org/docs.html">SQLite</a></li>
 * <li><a href="http://www.sqlitetutorial.net/sqlite-java/">SQLite Java Tutorial</a></li>
 * </ul>
 *
 * <h2>MIT License</h2>
 *
 * <em>Copyright (c) 2019 Leon J. Madrid, Jeff Hachtel</em>
 * 
 * <p>Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.</p>
 *
 * 
 * @author Leon J. Madrid (madrid.1), Jeff Hachtel (hachtel.5)
 * 
 */

public class CSE3241app {
    
	/**
	 *  The database file name.
	 *  
	 *  Make sure the database file is in the root folder of the project if you only provide the name and extension.
	 *  
	 *  Otherwise, you will need to provide an absolute path from your C: drive or a relative path from the folder this class is in.
	 */
//	private static String DATABASE = "src/database_binary.db";
	private static String DATABASE = "src/DatabasesProject.db";
	
	/**
	 *  The query statement to be executed.
	 *  
	 *  Remember to include the semicolon at the end of the statement string.
	 *  (Not all programming languages and/or packages require the semicolon (e.g., Python's SQLite3 library))
	 */
	private static String sqlStatement = "SELECT * FROM ACTOR;";
	private static String sqlSingleTable = "SELECT * FROM PATRON;"; //Return all patrons
	private static String nestedQuery1 = "SELECT Person.Name, Selected.Count\r\n" + 
			"FROM Person, Employee, Patron, (SELECT Person.PersonID, COUNT(*) as Count\r\n" + 
			"FROM Loanable, Person\r\n" + 
			"WHERE Loanable.PersonID = Person.PersonID\r\n" + 
			"GROUP BY Person.PersonID) as Selected\r\n" + 
			"WHERE Person.PersonID = Employee.PersonID AND Employee.PersonID = Patron.PersonID and Selected.PersonID = Person.PersonID\r\n" + 
			"ORDER BY Selected.Count DESC;\r\n" + 
			";"; // Return the number of loanables checked out by employees
	private static String nestedQuery2 = "SELECT Name\r\n" + 
			"FROM\r\n" + 
			"(\r\n" + 
			"SELECT Person.Name, COUNT(*) AS NumMovies\r\n" + 
			"FROM Person, Actor, Loanable, Movie, MovieActor\r\n" + 
			"WHERE Person.PersonID = Actor.PersonID AND Movie.ID = Loanable.ID AND MovieActor.ActorID = Actor.PersonID AND MovieActor.MovieID = Movie.ID AND Loanable.PersonID IS NOT NULL\r\n" + 
			"GROUP BY Person.Name\r\n" + 
			"ORDER BY NumMovies DESC\r\n" + 
			"LIMIT 1\r\n" + 
			") AS TopMovieCount\r\n;"; //Return the actor who has the most of their work checked out
	private static String calculatedQuery = "SELECT Avg(Counts.count) as Average FROM (Select COUNT(*) as Count From Person, Loanable WHERE Person.PersonId= Loanable.PersonID GROUP BY Person.PersonID) as Counts;"; //Returns the average number of loanables checked out per patron;
	
    /**
     * Connects to the database if it exists, creates it if it does not, and returns the connection object.
     * 
     * @param databaseFileName the database file name
     * @return a connection object to the designated database
     */
    public static Connection initializeDB(String databaseFileName) {
    	/**
    	 * The "Connection String" or "Connection URL".
    	 * 
    	 * "jdbc:sqlite:" is the "subprotocol".
    	 * (If this were a SQL Server database it would be "jdbc:sqlserver:".)
    	 */

        String url = "jdbc:sqlite:" + databaseFileName;
        Connection conn = null; // If you create this variable inside the Try block it will be out of scope
        try {
            conn = DriverManager.getConnection(url);
            if (conn != null) {
            	// Provides some positive assurance the connection and/or creation was successful.
                DatabaseMetaData meta = conn.getMetaData();
                System.out.println("The driver name is " + meta.getDriverName());
                System.out.println("The connection to the database was successful.");
            } else {
            	// Provides some feedback in case the connection failed but did not throw an exception.
            	System.out.println("Null Connection");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            System.out.println("There was a problem connecting to the database.");
        }
        return conn;
    }
    
    /**
     * Queries the database and prints the results.
     * 
     * @param conn a connection object
     * @param sql a SQL statement that returns rows
     */
    public static void sqlQuery(Connection conn, String sql){
        try {
        	Statement stmt = conn.createStatement();
        	ResultSet rs = stmt.executeQuery(sql);
        	ResultSetMetaData rsmd = rs.getMetaData();
        	int columnCount = rsmd.getColumnCount();
        	for (int i = 1; i <= columnCount; i++) {
        		String value = rsmd.getColumnName(i);
        		System.out.print(value);
        		if (i < columnCount) System.out.print(",  ");
        	}
			System.out.print("\n");
        	while (rs.next()) {
        		for (int i = 1; i <= columnCount; i++) {
        			String columnValue = rs.getString(i);
            		System.out.print(columnValue);
            		if (i < columnCount) System.out.print(",  ");
        		}
    			System.out.print("\n");
        	}
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public static void main(String[] args) {
    	Scanner in = new Scanner(System.in);
    	String input=  "";
    	Connection conn = initializeDB(DATABASE);
    	String query = "";
    	System.out.println("Hello employee of Surya's Library!");
    	while (!input.toLowerCase().equals("exit")) {
    		System.out.println("Please type the number of the option you would like to select, or exit to quit.");
    		System.out.println("1) Return all patron names and their cardIds");
    		System.out.println("2) Return the the number of loanables each employee has checked out");
    		System.out.println("3) Return the actor who has the most of their work checked out");
    		System.out.println("4) Return the average number of loanables checked out per patron");
    		input = in.nextLine();
    		if(input.matches("\\d+")) {
    			int number = Integer.parseInt(input);
    			if (number == 1){
    				query = sqlSingleTable;
    			}else if (number == 2) {
    				query = nestedQuery1;
    			}else if (number == 3) {
    				query = nestedQuery2;
    			}else if (number == 4) {
    				query = calculatedQuery;
    			}
    			else {
    				query = "";
    				System.out.println("Please put a number 1-4 in or exit to quit");
    			}
    			if (!query.equals("")) {
    				sqlQuery(conn,query);
    			}
    		}else if (!input.toLowerCase().equals("exit")) {
				System.out.println("Please put a number 1-4 in or exit to quit");
    		}
    		
    	}
    }
}
