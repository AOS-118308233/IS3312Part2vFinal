/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.servlets;

import com.shop.model.User;
import com.shop.service.UserManager;
import com.shop.utils.IConstants;
import com.shop.utils.StringUtils;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aoife
 */
public class LoginServlet extends HttpServlet implements IConstants {

     /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String logout = request.getParameter("action");
            if(logout!= null) {
                request.getSession(true).removeAttribute("SKUSER");
                RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                rd.forward(request,response);
            }
        
        if (StringUtils.isStringEmpty(email) || StringUtils.isStringEmpty(password)) {

            RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
            rd.forward(request, response);
            System.out.println("This is the first breakpoint");

        } else {

            UserManager uMgr = new UserManager();
            User user = uMgr.loginUser(email, password);
            if (user == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                rd.forward(request, response);
                 System.out.println("This is the second breakpoint");
            } else {
                request.getSession(true).setAttribute(IConstants.SESSION_KEY_USER, user);
                               
                if (user.getUserType().equals(IConstants.USER_TYPE_GENERAL_USER)) {                       
                    RequestDispatcher rd = request.getRequestDispatcher("/ProductServlet");
                    rd.forward(request, response);
                } 
            
                else {
                    RequestDispatcher rd = request.getRequestDispatcher("/adminHome.jsp");
                    rd.forward(request, response);    
                } 
                
               
            }
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
        processRequest(request, response);
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
        processRequest(request, response);
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

