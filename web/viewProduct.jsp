<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.shop.model.Product"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html lang="en">


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
            <br/>


            <c:forEach items="${Product}" var="topProduct">
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="resources/images/${topProduct.productImage}" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title"><a href="viewProduct.jsp">${topProduct.productName}</a></h4>
                            <h5>${topProduct.price}</h5>
                            <p class="card-text">${topProduct.productDescription}</p>
                            <form action="cart.jsp" method="post">
                                <input type = "submit" value="Add To Cart" class="btnBuy">
                            </form>
                        </div>

                    </div>
                </div>
            </c:forEach>

            <!-- Footer -->
            <footer class="py-5 bg-dark" id="footer">
                <div class="container">
                    <!-- First Line -->
                    <a class="privacy" style="float:left" href="links.jsp">Privacy Policy</a>
                    <a class="language" style="float:right" href="links.jsp">Language | English | French | German |</a>
                    <br/>
                    <!-- Second Line -->
                    <a class="Cookies" style="float:left" href="links.jsp">Cookies</a>
                    <a class="currency" style="float:right" href="links.jsp">Currency| € | £ | $ |</a>
                    <br>
                    <!-- Third Line --> 
                    <a class="delivery" style="float:left" href="links.jsp">Delivery and Returns</a>
                    <br/>
                    <center>
                        <a class="fab fa-facebook-square fa-2x" href='links.jsp'></a>
                        <a class="fab fa-instagram-square fa-2x" href='links.jsp'></a>
                        <a class="fab fa-twitter-square fa-2x" href='links.jsp'></a>
                        <br/>
                        <p class="m-0 text-center text-white">Copyright &copy; Toys4Us</p></center>
                </div>
                <!-- /.container -->
            </footer>
            <!-- Bootstrap core JavaScript -->
            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/popper/popper.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

        </body>
    </html>
