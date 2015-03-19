/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;
import java.sql.*;
/**
 *
 * @author care-pc
 */
public class invoice {
    private String surname = "";
    private String othernames = "";
    private String reques = "";
    private String matric_number ="";
           // =request.getParameter("matric_number");
    private String invoice=""; 
            //= request.getParameter("invoice");
public void getinvoice(){


}

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getOthernames() {
        return othernames;
    }

    public void setOthernames(String othernames) {
        this.othernames = othernames;
    }

    public String getReques() {
        return reques;
    }

    public void setReques(String reques) {
        this.reques = reques;
    }

    public String getMatric_number() {
        return matric_number;
    }

    public void setMatric_number(String matric_number) {
        this.matric_number = matric_number;
    }

    public String getInvoice() {
        return invoice;
    }

    public void setInvoice(String invoice) {
        this.invoice = invoice;
    }

}


