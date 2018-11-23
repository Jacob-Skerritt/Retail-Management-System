<%-- 
    Document   : loggedin_reservation
    Created on : 20-Nov-2018, 18:28:15
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/connect.jsp" %>
<!DOCTYPE html>
<html lang="en" >

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Retro Vision</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/heroic-features.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



        <!-- Start WOWSlider.com HEAD section --> <!-- add to the <head> of your page -->
        <link rel="stylesheet" type="text/css" href="engine4/style.css" />
        <script type="text/javascript" src="engine0/jquery.js"></script>
        <!-- End WOWSlider.com HEAD section -->
    </head>
    <body style="background-color: whitesmoke">
        <header>
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
                    </ul>
                  
                    <ul class="navbar-nav mr-auto" >
                        <li class="nav-item active">
                            <a class="nav-link"  href="loggedIn_index.jsp">Home</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="loggedIn_products.jsp">Products</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="loggedIn_specials.jsp">Specials</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link disabled" href="#">Welcome:</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="https://example.com" id="dropdown05" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Jack Sampson</a>
                            <div class="dropdown-menu" aria-labelledby="dropdown05">
                                <a class="dropdown-item" href="account.jsp">Details</a>
                                <a class="dropdown-item" href="Rentals_History.jsp">Rentals history</a>
                                <a class="dropdown-item" href="index.jsp">Sign Out</a>
                            
                            </div>
                        </li>
                    </ul>
                    <form class="example" action="action_page.jsp">
  <input type="text" placeholder="Search.." name="search">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>
                </div>
            </nav>

        </header>



        <!-- Navigation -->

        <!-- Page Content -->

        <!-- Jumbotron Header -->




        <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->

        <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
        <div class="jumbotron text-xs-center" style="margin-top: 5%; margin-bottom: 5%">
            <h1 class="display-3">Thank You For Your Reservation!</h1>
            <p class="lead"><strong> Please proceed to store within 20hrs to avail of this reservation.</strong></p>
            <hr>
            <p class="lead">
                <a class="btn btn-primary btn-sm" href="loggedIn_index.jsp"role="button">Continue to homepage</a>
            </p>
        </div>
        
        <!-- /.container -->

        <!-- Footer -->
        <footer class="py-5 bg-dark">
            <div style="height: 10%;">
                <p class="m-0 text-center text-white">Copyright &copy; RetroSOFTWARE 2018</p>
                <p class="m-0 text-center text-white"><a href="loggedIn_index.jsp" style="text-align: center;">Back to Home</a> </p>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>

</html>
