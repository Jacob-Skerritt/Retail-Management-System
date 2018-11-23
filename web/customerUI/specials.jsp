<%-- 
    Document   : specials
    Created on : 20-Nov-2018, 19:24:51
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/connect.jsp" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Retro Vision</title>
        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- Custom styles for this template -->
        <link href="css/heroic-features.css" rel="stylesheet">
        <link href="css/specials.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <div >
            <!-- Navigation -->
             <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
                <img style="height: 100%; width: 15%;" src="images/eye1.png" alt="">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarsExample05">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <p style=" color: white; font-size: 20px;">RETRO VISION</p>
                        </li>
                    </ul>
                    <ul class="navbar-nav mr-auto" >
                        <li class="nav-item active" style="margin-left:  5%;">
                            <a class="nav-link"  href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item active" style="margin-left:  5%;">
                            <a class="nav-link" href="products.jsp">Products</a>
                        </li>
                        <li class="nav-item active"style="margin-left:  5%;">
                            <a class="nav-link" href="specials.jsp">Specials</a>
                        </li>
                        <li class="nav-item active"style="margin-left:  5%;">
                            <a class="nav-link" href="login.jsp">Login</a>
                        </li>
                        <li class="nav-item active"style="margin-left:  5%;">
                            <a class="nav-link" href="register.jsp">Register</a>
                        </li>

                    </ul>
                    <form class="example" action="viewProduct.jsp">
  <input type="text" placeholder="Search.." name="search">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>
                </div>
            </nav>



            <!-- Page Content -->
            <div class="container" >

                <!-- Jumbotron Header -->
                <header class="jumbotron my-4">
                    <h1 class="display-3">SPECIALS THIS MONTH</h1>
                    <p class="lead">Welcome to RetroVision special offer page ranging from in-store discounts to multiple reservation discount.</p>
                </header>

                <!-- Page Features -->
                <div class="row text-center" >

                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card">
                            <img class="card-img-top" style="height: 100%;width: 100%;" src="images/sale.jpg" alt="">
                            <div class="card-body">
                                <h4 class="card-title">Sale</h4>
                                <p class="card-text">Product Discounts</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4" >
                        <div class="card">
                            <img class="card-img-top" style="height: 78%;width: 100%;" src="images/20per.jpg" alt="">
                            <div class="card-body">
                                <h4 class="card-title">Up to 20% offers</h4>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4" >
                        <div class="card">
                            <img class="card-img-top" style="height: 78%;width: 100%;" src="images/50per.jpg" alt="">
                            <div class="card-body">
                                <h4 class="card-title">Up to 50% offers</h4>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4" >
                        <div class="card">
                            <img class="card-img-top" style="height: 78%;width: 100%;" src="images/70per.jpg" alt="">
                            <div class="card-body">
                                <h4 class="card-title">Up to 70% offers</h4>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->

            <!-- Footer -->

            <!-- Bootstrap core JavaScript -->
            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        </div>
    </body>
    <footer class="py-5 bg-dark">
        <div style="height: 10%;">
            <p class="m-0 text-center text-white">Copyright &copy; RetroSOFTWARE 2018</p>
            <p class="m-0 text-center text-white"><a href="index.jsp" style="text-align: center;">Back to Home</a> </p>
        </div>
        <!-- /.container -->
    </footer>
</html>
