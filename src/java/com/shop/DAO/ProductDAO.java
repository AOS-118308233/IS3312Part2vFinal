/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.DAO;

import com.shop.model.Product;
import com.shop.utils.DBManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author aoife
 */
public class ProductDAO {

    /* Gets number of top products specified */
 /* we are gonna fake this one */
    public ArrayList<Product> getTopProducts(int numProducts) {

        DBManager dm = new DBManager();
        Connection con = dm.getConnection();

        String productCode;
        String productName;
        String productDescription;
        String brandName;
        int price;
        String colour;
        String animalType;
        String productImage;
        String category;

        ArrayList<Product> productData = new ArrayList();

        String query = "SELECT * FROM PRODUCTS";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            int productCount = 0;
            while (rs.next()) {
                if (productCount >= numProducts) {
                    break;
                }
                productCode = (rs.getString(1));
                productName = (rs.getString(2));
                productDescription = (rs.getString(3));
                brandName = (rs.getString(4));
                price = (rs.getInt(5));
                colour = (rs.getString(6));
                animalType = (rs.getString(7));
                productImage = (rs.getString(8));
                category = (rs.getString(9));

                Product product = new Product();
                product.setProductCode(productCode);
                product.setProductName(productName);
                product.setProductDescription(productDescription);
                product.setBrandName(brandName);
                product.setPrice(price);
                product.setColour(colour);
                product.setAnimalType(animalType);
                product.setProductImage(productImage);
                product.setCategory(category);
                productData.add(product);
                productCount++;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productData;

    }

    public Product getProductCode(String productCode) throws SQLException {
        DBManager dbmgr = new DBManager();
        Connection con = dbmgr.getConnection();

        String productName = null;
        String productDescription = null;
        String brandName = null;
        int price = 0;
        String colour = null;
        String animalType = null;
        String productImage = null;
        String category = null;

        String query = String.format("SELECT * FROM PRODUCTS WHERE PRODUCT_CODE=%d", productCode);

        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                productName = (rs.getString(2));
                productDescription = (rs.getString(3));
                brandName = (rs.getString(4));
                price = (rs.getInt(5));
                colour = (rs.getString(6));
                animalType = (rs.getString(7));
                productImage = (rs.getString(8));
                category = (rs.getString(9));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;

    }

    public ArrayList<Product> getAllProducts() {

        DBManager dm = new DBManager();
        Connection con = dm.getConnection();

        String productCode = null;
        String productName = null;
        String productDescription = null;
        String brandName = null;
        int price = 0;
        String colour = null;
        String animalType = null;
        String productImage = null;
        String category = null;

        ArrayList<Product> productData = new ArrayList();

        String query = "SELECT * FROM PRODUCTS";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                productCode = (rs.getString(1));
                productName = (rs.getString(2));
                productDescription = (rs.getString(3));
                brandName = (rs.getString(4));
                price = (rs.getInt(5));
                colour = (rs.getString(6));
                animalType = (rs.getString(7));
                productImage = (rs.getString(8));
                category = (rs.getString(9));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productData;

    }

    public void insertProduct(Product newProduct) {
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;

        try {
            stmt = con.createStatement();
            String sql = String.format("INSERT INTO PRODUCTS(PRODUCT_NAME,PRODUCT_DESCRIPTION,BRAND_NAME,PRICE,COLOUR,ANIMAL,IMAGE,CATEGORY) " 
                    + "VALUES('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s')", newProduct.getProductName(), newProduct.getProductDescription(), newProduct.getBrandName(), newProduct.getPrice(), newProduct.getColour(), newProduct.getAnimalType(), newProduct.getProductImage(), newProduct.getCategory());
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }

        }

    }

    public void updateProduct(Product newProduct) {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;

        try {

            stmt = con.createStatement();
            String sql = String.format("UPDATE PRODUCTS SET PRODUCT_NAME='%s', PRODUCT_DESCRIPTION='%s', BRAND_NAME='%s', PRICE='%s', COLOUR='%s', ANIMAL='%s', IMAGE='%s', CATEGORY='%s' WHERE PRODUCT_CODE=%s", 
                    newProduct.getProductName(), newProduct.getProductDescription(), newProduct.getBrandName(), newProduct.getPrice(), newProduct.getColour(), newProduct.getAnimalType(), newProduct.getProductImage(), newProduct.getCategory(), newProduct.getProductCode());
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

    public void deleteProduct(String productCode) {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;

        try {

            stmt = con.createStatement();
            var sql = String.format("DELETE FROM PRODUCTS WHERE PRODUCT_CODE=%s", productCode);
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                stmt.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

    public void getCategoryList() {
        
       
    }

    public class findProducts {
        //search box is a from and submit it to the SearchServlet
        //Servlet calls searchProducts
        //findProducts method in DAO is called
        //results to be placed on the request
        //table displays the results
        //clicking on a product brings you to the viewProduct.jsp
    }

}
