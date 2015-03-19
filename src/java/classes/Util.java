/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author care-pc
 */
public class Util {
    public static String generateDropdown(String query, String value, String text) throws SQLException
    {
        String dropDown = "";
        String dropDowns="";
        String dropDows="";
        String cost="";
        
        ResultSet rs = new DbConn().executeSQLQuery(query);
                          while (rs.next()) {
                dropDown += "<option value=" + rs.getString(value)+">" + rs.getString(text)+"</option>";
                 dropDowns += "<option value=" + rs.getString(value)+">" + rs.getString(text)+"</option>";
                  dropDows += "<option value=" + rs.getString(value)+">" + rs.getString(text)+"</option>";
                  cost=rs.getString(value)+ rs.getString(text);
             
                       }
        return dropDown;
    }
}
