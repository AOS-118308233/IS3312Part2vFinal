<%-- 
    Document   : login
    Created on : 19 Nov 2020, 16:03:49
    Author     : aoife
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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

        <title>Log In</title>

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
            
        <br/>
        <br/>

        <!-- Container set up to hold 2 other containers for log in and sign up -->

        <!-- Code taken from tutorialspoint.com/How-to-place-two-divs-next-to-each-other-in-HTML#:~:text=With%20CSS%20properties%2C%20you%20can,height%3A100px%20and%20set%20margin.
                        to help line up 2 divs side by side -->
        <br/>
        <br/>
        <br/>

        <div class="container">
            <div class="container" id="login">
                <div style="width: 500px; float:left; height:400px; background:#8AA994; margin:10px">
                    <form class="form-signin" action="/IS3312v3/LoginServlet" method="post">
                        <h2> Please Log In to Shop Our Products </h2>
                        <br/>
                        <div class="form-label-group">
                            <input type="email" id="emailLogIn" name="email" class="form-control" placeholder="Email address" required autofocus>
                        </div>
                        <br/>
                        <div class="form-label-group">
                            <input type="password" id="passwordLogIn" name="password" class="form-control" placeholder="Password" required>
                        </div>
                        <br/>
                        <a class="forgot-password" href="#">Forgot Password?</a>
                        <br/>
                        <br/>
                        <button class="btn btn-primary" id="SignIn" type="submit">Sign in</button>

                    </form>
                </div>
            </div>    

            <!-- /.row 
                
            <!-- Sign Up - Goes to the same page anyway -->
            <div class ="container"> 
                <div class="container" id="SignUpForm">
                    <div style="width: 500px; float:right; height:400px; background:#8AA994; margin:10px">
                        <form class="form-signup" action="/IS3312v3/LoginServlet" method="post">
                            <h2> Not a member? Create an account!</h2>
                            <br/>
                            <div class="form-label-group">
                                <input type="text" id="firstName" class="form-control" placeholder="First Name">
                            </div>
                            <br/>
                            <div class="form-label-group">
                                <input type="text" id="lastName" class="form-control" placeholder="Surname">
                            </div>
                            <br/>
                            <div class="form-label-group">
                                <input type="email" id="emailSignUp" name="email" class="form-control" placeholder="Email address" required>
                            </div>
                            <br/>
                            <div class="form-label-group">
                                <input type="password" id="passwordSignUp" name="password" class="form-control" placeholder="Password" required>
                            </div>
                            <br/>
                            
                            
                            <a class="btn" href="signUpConfirmation.jsp"  id="SignUp">Sign Up</a>

                        </form>
                    </div>
                </div>    
            </div>
        </div>


        <!-- Footer is not on the Login/cart/checkout pages because they'll be "secure pages" and 
                in theory you won't be leaving those page (unless it's from a "continue shopping" button -->      

        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="resources/JS/loginVerification.js"></script>
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/popper/popper.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
