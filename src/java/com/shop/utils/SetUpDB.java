/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.utils;

import com.shop.utils.DBManager;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author aoife
 */
public class SetUpDB {

    Logger logger = Logger.getLogger(DBManager.class.getName());

    void createTables() {

        DBManager dmbgr = new DBManager();

        Connection con = dmbgr.getConnection();

        InputStream inpStr = this.getClass().getResourceAsStream("createDB.sql");

        executeSqlScript(con, inpStr);
    }

    void insertSetupData() {

        DBManager dmbgr = new DBManager();

        Connection con = dmbgr.getConnection();
        
        InputStream inpStr = this.getClass().getResourceAsStream("insertData.sql");

        executeSqlScript(con, inpStr);
    }

    public void showData() {

        Statement stmt;

        DBManager dmbgr = new DBManager();

        Connection con = dmbgr.getConnection();

        try {
            stmt = con.createStatement();
            ResultSet results = stmt.executeQuery("SELECT * FROM USERDATA");

            System.out.println("\n-------------------------------------------------");

            while (results.next()) {
                int id = results.getInt(1);
                String email = results.getString(2);
                String password = results.getString(3);
                String firstName = results.getString(4);
                String lastName = results.getString(5);
                String userType = results.getString(6);
                logger.info(id + "\t\t" + email + "\t\t" + password + "\t\t" + firstName + "\t\t" + lastName + "\t\t" + userType);
            }
            results.close();
            stmt.close();
        } catch (SQLException sqlExcept) {
            logger.log(Level.SEVERE, null, sqlExcept);
        }

        try {
            stmt = con.createStatement();
            ResultSet results = stmt.executeQuery("SELECT * FROM PRODUCTS");

            System.out.println("\n-------------------------------------------------");

            while (results.next()) {
                String productCode = results.getString(1);
                String productName = results.getString(2);
                String productDescription = results.getString(3);
                String brandName = results.getString(4);
                String price = results.getString(5);
                String colour = results.getString(6);
                String animalType = results.getString(7);
                String productImage = results.getString(8);
                String category = results.getString(9);
               
                logger.info(productCode + "\t\t" + productName + "\t\t" + productDescription + "\t\t" + brandName + "\t\t" + price + "\t\t" + colour + "\t\t" + animalType + "\t\t" + productImage + "\t\t" + category);
            }
            results.close();
            stmt.close();
        } catch (SQLException sqlExcept) {
            logger.log(Level.SEVERE, null, sqlExcept);
        }

    }

    public void executeSqlScript(Connection conn, InputStream inputStream) {

        // Delimiter
        String delimiter = ";";

        // Create scanner
        Scanner scanner;

        scanner = new Scanner(inputStream).useDelimiter(delimiter);

        // Loop through the SQL file statements 
        Statement currentStatement = null;
        while (scanner.hasNext()) {

            // Get statement 
            String rawStatement = scanner.next();
            try {
                // Execute statement
                currentStatement = conn.createStatement();
                currentStatement.execute(rawStatement);
            } catch (SQLException e) {
                logger.log(Level.SEVERE, null, e);
            } finally {
                // Release resources
                if (currentStatement != null) {
                    try {
                        currentStatement.close();
                    } catch (SQLException e) {
                        logger.log(Level.SEVERE, null, e);
                    }
                }
                currentStatement = null;
            }
        }
    }

}
