<%-- 
    Document   : loggedIn_details
    Created on : 20-Nov-2018, 18:26:50
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/heroic-features.css" rel="stylesheet" type="text/css"/>



        <!-- Start WOWSlider.com HEAD section --> <!-- add to the <head> of your page -->
        <link rel="stylesheet" type="text/css" href="engine4/style.css" />
        <script type="text/javascript" src="engine0/jquery.js"></script>
        <!-- End WOWSlider.com HEAD section -->
    </head>
    <body style="background-color: whitesmoke">
        <header>
                        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
                <img style="height: 100%; width: 15%;" src="images/eye.png" alt="">
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
                    <form class="example" action="viewProduct.jsp">
  <input type="text" placeholder="Search.." name="search">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>
                </div>
            </nav>

        </header>



        <!-- Navigation -->

        <!-- Page Content -->

        <!-- Jumbotron Header -->

        <table class="table profile__table" style="margin-top: 15%;margin-bottom: 5%;">
            <tbody>
                <tr>
                    <td>
                        <img src="images/venom.jpg" alt=""/>
                    </td>
                    <td><table>
                            <tbody>
                                <tr>
                                    <td>
                                        Venom
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Journalist Eddie Brock is trying to take down Carlton Drake,
                        the notorious and brilliant founder of the Life Foundation.
                        While investigating one of Drake's experiments, Eddie's body
                        merges with the alien Venom -- leaving him with superhuman
                        strength and power. Twisted, dark and fueled by rage, Venom
                        tries to control the new and dangerous abilities that Eddie 
                        finds so intoxicating.
                                    </td>
                                </tr>
                                <tr>
                                    <td><iframe width="560" height="315" src="https://www.youtube.com/embed/u9Mv98Gr5pY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
                                </tr>
                                <tr>
                                    <td> <button onclick="location.href = 'reserve.jsp'">Reserve</button></td>
                                </tr>
                            </tbody>
                        </table></td>
                </tr>
            </tbody>
        </table>


        <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
        

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
