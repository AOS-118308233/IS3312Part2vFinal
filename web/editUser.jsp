<%-- 
    Document   : editUser
    Created on : 27 Jan 2021, 17:25:11
    Author     : aoife
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">


    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Toys4Us Trading</title>

        <!-- Bootstrap core CSS -->
        <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom style sheet -->
        <link href="custom.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/heroic-features.css" rel="stylesheet">

        <link href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" rel="stylesheet">

    </head>
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
                    <li class="nav-item">
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

    <div class="col-lg-12">
        <br/>
    </div>
    <!-- Page Content -->
    <div class="container bg-light">

        <div class="row">

            <div class="col-lg-12">

                <h1 class="my-4">Edit User</h1>



                <div class="row">
                    <c:url value="/userAdminServlet" var="updateUserUrl">
                        <c:param name="action" value="updateCompleteUser"/>
                    </c:url>

                    <form action="${updateUserUrl}" method="POST">
                        <input id="id" name="id" type="hidden" value="${oldUser.id}">
                        <div class="form-group row">
                            <label for="email" class="col-4 col-form-label">Email</label> 
                            <div class="col-8">
                                <input id="email" name="email" type="text" value="${oldUser.email}" class="form-control" required="required">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="password" class="col-4 col-form-label">Password</label> 
                            <div class="col-8">
                                <input id="password" name="password" type="text" value="${oldUser.password}" class="form-control" required="required">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="firstName" class="col-4 col-form-label">First Name</label> 
                            <div class="col-8">
                                <input id="firstName" name="firstName" type="text" value="${oldUser.firstName}" class="form-control" required="required">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="lastName" class="col-4 col-form-label">Last Name</label> 
                            <div class="col-8">
                                <input id="lastName" name="lastName" type="text" value="${oldUser.lastName}" class="form-control" required="required">
                            </div>
                        </div>
                            
                        <div class="form-group row">
                            <label class="col-4">User Type</label> 
                            <div class="col-8">
                                <c:if test="${oldUser.userType eq 'ADMIN'}">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input name="userType" id="userType_0" type="radio" class="custom-control-input" value="ADMIN" checked> 
                                        <label for="userType_0" class="custom-control-label">Administrator</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input name="userType" id="userType_1" type="radio" class="custom-control-input" value="GENUSER"> 
                                        <label for="userType_1" class="custom-control-label">Customer</label>
                                    </div>
                                </c:if>
                                <c:if test="${oldUser.userType eq 'GENUSER'}">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input name="userType" id="userType_0" type="radio" class="custom-control-input" value="ADMIN"> 
                                        <label for="userType_0" class="custom-control-label">Administrator</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input name="userType" id="userType_1" type="radio" class="custom-control-input" value="GENUSER" checked> 
                                        <label for="userType_1" class="custom-control-label">Customer</label>
                                    </div>
                                </c:if>


                            </div>
                        </div> 
                        <div class="form-group row">
                            <div class="offset-4 col-8">
                                <button name="submit" type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </form> 

                </div>
                <!-- /.row -->

            </div>
            <!-- /.col-lg-9 -->

        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->



    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
