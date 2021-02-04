<%-- 
    Document   : links
    Created on : 27 Jan 2021, 19:44:56
    Author     : aoife
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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
        <br/>

    <center>
        <h1>THIS PAGE DOESN'T DO ANYTHING!!!</h1>
        <h2>HOPE YOU ENJOY THE LOREM IPSUM!</h2>
        <br/>
        <h3> Don't worry if you don't understand, no one understands the terms and conditions</h3>
        <h3>so it might as well be in Latin</h3>

        <br/>
        <!-- When a user clicks on any of the links from the footer they will just be brought to this page -->
        <header><b> "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."</b></header>
        <p><b>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."</b>
            <br/>

        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae euismod mauris, ac interdum odio. Sed purus turpis, tincidunt in mollis ut, dignissim sed urna. Mauris ac magna in dui dictum ultrices. 
            Nulla sagittis euismod augue eu venenatis. Donec a purus a libero volutpat pharetra sit amet nec massa. Nam pellentesque placerat tellus sit amet consectetur. Quisque sit amet nulla at ex faucibus porta at a quam. 
            Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

        <p> Pellentesque at velit justo. Etiam eu sem vel lectus eleifend feugiat a ac libero. Maecenas arcu diam, ornare quis sem eu, molestie malesuada erat. Sed sed urna mollis, gravida eros vitae, placerat sem. 
            Pellentesque vel felis egestas, convallis neque vitae, faucibus lacus. Vivamus pellentesque tempor porttitor. Ut rutrum eleifend rutrum. Cras lorem quam, malesuada sit amet sollicitudin eget, sagittis eget lacus. 
            Aliquam mi ante, aliquet eget magna ut, laoreet rutrum leo. Vivamus vestibulum ultricies mauris, at faucibus ipsum viverra eu. Sed nec venenatis risus. Aenean vehicula justo in lorem luctus vehicula. 
            Vivamus nulla lacus, volutpat vel lacinia vel, vestibulum eu nibh. Integer consequat consectetur elit pellentesque aliquam. Vestibulum ac tempus magna. </p>

        <p> Ut sagittis quis massa vitae semper. Vestibulum facilisis sem vel elit vulputate iaculis. Morbi at sem vitae mi eleifend tristique. Sed ornare congue lacus, non auctor erat aliquam eu. 
            Fusce vitae orci pulvinar, mattis elit vel, aliquam nunc. Nam fringilla lobortis tellus vitae tempor. Aliquam nisi magna, ultrices eget blandit congue, interdum nec dui. Nullam eu felis vitae nunc hendrerit feugiat.</p>

        <p> Suspendisse tempor efficitur pretium. Aliquam a maximus ante. Pellentesque vestibulum neque lectus, non rutrum augue accumsan et. Integer sit amet lobortis ex. Phasellus vulputate gravida lorem, non fringilla turpis luctus sed. 
            Suspendisse facilisis maximus quam, ac viverra elit tristique sed. Curabitur interdum sodales ante, id molestie orci dignissim non. Integer imperdiet lacus diam, a volutpat est interdum et. Etiam porta consequat enim, 
            a convallis lectus blandit sit amet. Proin eu velit velit.</p>

        <p> Aenean pulvinar dui nec purus vulputate, at tempus urna ultrices. Nullam ac neque ullamcorper erat scelerisque pharetra. Vestibulum auctor finibus rhoncus. Mauris lectus nulla, hendrerit ut egestas eget, placerat eu magna. 
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris egestas lorem at accumsan imperdiet. Maecenas hendrerit sit amet lectus in porta. In rhoncus ligula in sodales pretium. Maecenas et tristique augue, vitae lacinia elit. 
            Quisque mollis ut quam ut porta. Duis vestibulum, justo eget tempor sodales, elit elit varius nulla, eu auctor erat nisl ut nulla. Maecenas volutpat rhoncus mauris et consequat. Aliquam eu augue sed erat blandit porttitor. </p>
    </center>    

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