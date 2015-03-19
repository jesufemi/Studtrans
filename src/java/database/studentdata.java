/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author care-pc
 */
public class studentdata {
    String surname;
    String other_name;
    String degree;
    String sessionadm;
    Integer matric_number;

    public void getstudentdata(){
        
       
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getOther_name() {
        return other_name;
    }

    public void setOther_name(String other_name) {
        this.other_name = other_name;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getSessionadm() {
        return sessionadm;
    }

    public void setSessionadm(String sessionadm) {
        this.sessionadm = sessionadm;
    }

    public Integer getMatric_number() {
        return matric_number;
    }

    public void setMatric_number(Integer matric_number) {
        this.matric_number = matric_number;
    }
}

