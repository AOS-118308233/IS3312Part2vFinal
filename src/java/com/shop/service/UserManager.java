/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.service;

import com.shop.DAO.UserDAO;
import com.shop.model.User;
import java.util.ArrayList;

/**
 *
 * @author aoife
 */
public class UserManager {

    /**
     * This will take a username and select from user table This will return
     * three possible statuses, login correct, unknown user or password
     * incorrect
     *
     * @param email
     * @param password
     * @return
     */
    public User loginUser(String email, String password) {

        UserDAO userDAO = new UserDAO();
        User user = userDAO.getUserByEmail(email);
        if (user.getPassword().equals(password)) {
            return user;
        } else {
            return null;
        }
    }

    public User getUser(long userId) {
        UserDAO userDAO = new UserDAO();
        User user = userDAO.getUserById(userId);
        return user;
    }

    public ArrayList<User> getAllUsers() {

        UserDAO uDao = new UserDAO();
        ArrayList<User> userList = uDao.getAllUsers();
        return userList;

    }

    public void insertUser(User nUser) {
        UserDAO uDao = new UserDAO();
        uDao.insertUser(nUser);
        

    }

    public void updateUser(User nUser) {
        UserDAO uDao = new UserDAO();
        uDao.updateUser(nUser);
     

    }

    public void deleteUser(long userId) {
        UserDAO uDao = new UserDAO();
        uDao.deleteUser(userId);
        

    }
}
