/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

/**
 *
 * @author care-pc
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//package com.thinkit2ru.classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author tega
 */
public class DbConn {

    // JDBC driver name and database URL

    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/studtranscript";

    //  Database credentials
    static final String USER = "root";
    static final String PASS = "";

    Connection conn = null;
    Statement stmt = null;

    public DbConn() {
        loadDriver();
    }

    private void loadDriver() {
        try {
            Class.forName(JDBC_DRIVER);
            
            this.setConnection(DriverManager.getConnection(DB_URL, USER, PASS));

        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    private void setConnection(Connection conn) {
        this.conn = conn;
    }

    public Connection getConnection() {
        return this.conn;
    }

    public ResultSet executeSQLQuery(String sql) {
        try {
            this.stmt = this.conn.createStatement();
            return this.stmt.executeQuery(sql);
        } catch (Exception e) {
            return null;
        }   
    }

    /**
     *
     * @param sql
     * @return
     */
    public int executeSQLUpdate(String sql) {
        try {
            this.stmt = this.conn.createStatement();
            return this.stmt.executeUpdate(sql);
        } catch (Exception e) {
            return 0;
        } finally{
            this.clearResources();
        }
    }

    private void clearResources() {
        try {
            if (this.stmt != null) {
                this.stmt.close();
            }
        } catch (SQLException e) {
        }
        try {
            if (this.conn != null) {
                this.conn.close();
            }
        } catch (SQLException e) {
    
        }
    }

}
