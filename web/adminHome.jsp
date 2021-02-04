<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.shop.model.User"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>      

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- Bootstrap core CSS -->
        <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom style sheet -->
        <link href="custom.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/heroic-features.css" rel="stylesheet">

        <link href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" rel="stylesheet">

        <title>Admin Home</title>

    <body>

        <!-- Nav Bar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="index.html">
                    <img src="resources/images/newLogo.png" alt="logo" style="display:inline-block;" height="60" width="90">
                    <span style="display: inline-block;">Toys4Us</span>
                </a>


                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="shop.jsp">Shop</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="aboutUs.jsp">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">Contact</a>
                        </li>
                        <li class="nav-item active">
                            <c:if test="${empty SKUSER.firstName}">
                                <a class="nav-link" href="login.jsp">Login <i class="fas fa-user-plus"></i></a>
                                </c:if>
                                <c:if test="${not empty SKUSER.firstName}">
                                <a class="nav-link" href="login.jsp">Hi ${SKUSER.firstName}!</a>
                            </c:if>
                        </li> 
                        <li class="nav-link">
                            <a class="nav-link" href="LoginServlet?action=logout">Log Out</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="cart.jsp">View Basket  <i class="fas fa-shopping-basket"></i></a>
                        </li>
                        <li class='nav-item'>
                            <input type="text" placeholder="Search..">
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
        
        <br/>
        <br/>
        <br/>

        <!-- Content -->
        <div class="admin">
            <h2 class="adminHome">Welcome to the Admin Home Page</h2>
            <h4 class="adminHome"> Right now this page doesn't do much, but come back again soon to see the changes!</h4>
            <hr>
            <!-- I did an online course on Udemy.com about web dev (The Web Developer's Bootcamp) over the summer and the following code
                has been taken from my work on that course and adjusted for this project 
                    You can add a new task, delete a task using the trash icon and mark a task as done if you click on the item -->

            <center>
                <h2>Admin To-Do list : Add, Delete and mark jobs Done</h2>
                <div id="container" class="adminList" style="width:400px; height:300px">
                    <div class="toDo">
                        <h1 class="list">Admin To Do</h1>
                        <input type="text" placeholder="Add New To Do">
                        <ul>
                            <li id="toDoList"><span><i class="fa fa-trash"></i></span>Update User Details </li>
                            <li id="toDoList"><span><i class="fa fa-trash"></i></span>View Reports</li>
                            <li id="toDoList"><span><i class="fa fa-trash"></i></span>VAT Reduction on Products</li>
                        </ul>
                    </div>
                </div> 

                <div class="container">

                    <div class="row">

                        <div class="col-lg-3">

                            <h1 class="pt-4"> Administration Home </h3>   

                                <div class="list-group">
                                    <a href="productAdminServlet?action=listProducts" class="list-group-item">Product Administration</a>
                                    <a href="userAdminServlet?action=listUsers" class="list-group-item">User Administration</a>
                                </div>

                        </div>
                        <!-- /.col-lg-3 -->




                    </div><!-- comment -->
                    <!-- /.row -->

                </div>
                <!-- /.col-lg-9 -->

        </div>
        <!-- /.row -->

   
    <!-- /.container -->

    <!--  <div class="container">
          <h2>Revenue and Sales Reports</h2>
              <div class="row">
                  <div class="column">
                      <img src="resources/images/revenue.png" alt="Forest" style="width:100%">
                  </div>
              <div class="column">
                  <img src="resources/images/sales.png" alt="Mountains" style="width:100%">
              </div>
          </div>
      </div>
    
      <div class="col-lg-3">
  
          <h1 class="my-4">Administrator Activities</h1>
    <!-- This will be more useful in Part 2 where the admin can edit users, products etc, for now it's all dummy link 
        <div class="list-group">
            <a href="#" class="list-group-item">Create New User</a>
            <a href="#" class="list-group-item">Update and Edit Current User Details</a>
            <a href="#" class="list-group-item">View Products</a>
            <a href="#" class="list-group-item">Update Product Details</a>
            <a href="#" class="list-group-item">Generate Product Reports</a>
            <a href="#" class="list-group-item">Generate Sales Reports</a>
        </div>
</div>
</center> -->




<script type="text/javascript" src="resources/JS/list.js"></script>
</body>   

</html>