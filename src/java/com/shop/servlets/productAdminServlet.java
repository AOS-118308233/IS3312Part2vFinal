/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.servlets;

import com.shop.model.Product;
import com.shop.service.ProductManager;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aoife
 */
public class productAdminServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        String action = request.getParameter("action");

        ProductManager pMan = new ProductManager();

        String url = null;

        if (action == null) {
            request.getRequestDispatcher("/productAdmin.jsp").forward(request, response);
        }

        if (action.equals("listProducts")) {
            ArrayList<Product> products = pMan.getAllProducts();
            request.setAttribute("products", products);
            request.getRequestDispatcher("/productAdmin.jsp").forward(request, response);
        }

        if (action.equals("add")) {
            request.getRequestDispatcher("/addProduct.jsp").forward(request, response);
        }

        if (action.equals("delete")) {
            deleteProduct(request, response);
            ArrayList<Product> products = pMan.getAllProducts();
            request.setAttribute("products", products);
            request.getRequestDispatcher("/productAdmin.jsp").forward(request, response);
        }

        if (action.equals("insertProduct")) {
            insertProduct(request, response);
            ArrayList<Product> products = pMan.getAllProducts();
            request.setAttribute("products", products);
            request.getRequestDispatcher("/productAdmin.jsp").forward(request, response);
        }

        if (action.equals("updateProduct")) {
            updateProduct(request, response);
            ArrayList<Product> products = pMan.getAllProducts();
            request.setAttribute("products", products);
            request.getRequestDispatcher("/productAdmin.jsp").forward(request, response);
        }
        if (action.equals("edit")) {
            String productCode = request.getParameter("code");

            if (productCode == null) {
                request.getRequestDispatcher("/shop.jsp").forward(request, response);
            } else {
                String pId = null;
                pMan = new ProductManager();
                Product oldProduct = pMan.getProduct(pId);
                request.setAttribute("oldProduct", oldProduct);
                request.getRequestDispatcher("/editProduct.jsp").forward(request, response);
            }

        } else {
            request.getRequestDispatcher("/productAdmin.jsp").forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(productAdminServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(productAdminServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void insertProduct(HttpServletRequest request, HttpServletResponse response) {

        String productName = request.getParameter("productName");
        String productDescription = request.getParameter("productDescription");
        String brandName = request.getParameter("brandName");
        int price = Integer.parseInt(request.getParameter("price"));
        String colour = request.getParameter("colour");
        String animalType = request.getParameter("animalType");
        String productImage = request.getParameter("productImage");
        String category = request.getParameter("category");

        Product newProduct = new Product();
        newProduct.setProductName(productName);
        newProduct.setProductDescription(productDescription);
        newProduct.setBrandName(brandName);
        newProduct.setPrice(price);
        newProduct.setColour(colour);
        newProduct.setAnimalType(animalType);
        newProduct.setProductImage(productImage);
        newProduct.setCategory(category);

        ProductManager pMan = new ProductManager();
        pMan.insertProduct(newProduct);
    }
    
    private void updateProduct(HttpServletRequest request, HttpServletResponse response) {
        
        String productCode = request.getParameter("productCode");
        String productName = request.getParameter("productName");
        String productDescription = request.getParameter("productDescription");
        String brandName = request.getParameter("brandName");
        int price = Integer.parseInt(request.getParameter("price"));
        String colour = request.getParameter("colour");
        String animalType = request.getParameter("animalType");
        String productImage = request.getParameter("productImage");
        String category = request.getParameter("category");

        Product newProduct = new Product();
        newProduct.setProductCode(productCode);
        newProduct.setProductName(productName);
        newProduct.setProductDescription(productDescription);
        newProduct.setBrandName(brandName);
        newProduct.setPrice(price);
        newProduct.setColour(colour);
        newProduct.setAnimalType(animalType);
        newProduct.setProductImage(productImage);
        newProduct.setCategory(category);

        ProductManager pMan = new ProductManager();
        pMan.updateProduct(newProduct);
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) {
        
        String productCode = request.getParameter("productCode");
        ProductManager pMan = new ProductManager();
        pMan.deleteProduct(productCode);
    }
    
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
