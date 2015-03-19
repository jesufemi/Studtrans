
import classes.DbConn;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author care-pc
 */
public class Test {
    
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/studtranscript";

    //  Database credentials
    static final String USER = "root";
    static final String PASS = "";
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        
        Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studtranscript","root", "");
    
    Class.forName(JDBC_DRIVER);
            
   Connection conn = DriverManager.getConnection(USER, USER, DB_URL);
        
            System.out.println("I am just testing");
                          ResultSet rs = new DbConn().executeSQLQuery("select title from department");
                          System.out.println("I am just testing"); 
                          System.exit(1);
                          while (rs.next()) {
                              System.out.println(rs.getString("title"));
                          }
    }
}
