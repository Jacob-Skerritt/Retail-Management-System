<%-- 
    Document   : products
    Created on : 20-Nov-2018, 18:50:33
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
        <link href="css/heroic-features.css" rel="stylesheet">
        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/search.css" rel="stylesheet" type="text/css"/>
        <!-- Custom styles for this template -->



        <!-- Start WOWSlider.com HEAD section -->
        <link rel="stylesheet" type="text/css" href="engine1/style.css" />
        <script type="text/javascript" src="engine1/jquery.js"></script>
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

        </header>



        <!-- Navigation -->

        <!-- Page Content -->

        <!-- Jumbotron Header -->



        <div>

            <!-- Start WOWSlider.com BODY section -->
            <div id="wowslider-container1">
                <div class="ws_images"><ul>
                        <li><img src="data1/images/thor_banner_2.jpg" alt="Thor Banner 2" title="Thor Banner 2" id="wows1_0"/></li>
                        <li><img src="data1/images/theavengersmovieposterbanners04.jpg" alt="the-avengers-movie-poster-banners-04" title="the-avengers-movie-poster-banners-04" id="wows1_1"/></li>
                        <li><img src="data1/images/inception.jpg" alt="Inception" title="Inception" id="wows1_2"/></li>
                        <li><a href="http://wowslider.net"><img src="data1/images/thehobbit.jpg" alt="javascript image slider" title="TheHobbit" id="wows1_3"/></a></li>
                        <li><img src="data1/images/thedarkknight.jpg" alt="The-Dark-Knight" title="The-Dark-Knight" id="wows1_4"/></li>
                    </ul></div>
                <div class="ws_bullets"><div>
                        <a href="#" title="Thor Banner 2"><span><img src="data1/tooltips/thor_banner_2.jpg" alt="Thor Banner 2"/>1</span></a>
                        <a href="#" title="the-avengers-movie-poster-banners-04"><span><img src="data1/tooltips/theavengersmovieposterbanners04.jpg" alt="the-avengers-movie-poster-banners-04"/>2</span></a>
                        <a href="#" title="Inception"><span><img src="data1/tooltips/inception.jpg" alt="Inception"/>3</span></a>
                        <a href="#" title="TheHobbit"><span><img src="data1/tooltips/thehobbit.jpg" alt="TheHobbit"/>4</span></a>
                        <a href="#" title="The-Dark-Knight"><span><img src="data1/tooltips/thedarkknight.jpg" alt="The-Dark-Knight"/>5</span></a>
                    </div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">css image gallery</a> by WOWSlider.com v8.8</div>
                <div class="ws_shadow"></div>
            </div>	
            <script type="text/javascript" src="engine1/wowslider.js"></script>
            <script type="text/javascript" src="engine1/script.js"></script>
            <!-- End WOWSlider.com BODY section -->

            <div class="container" style="margin-top: 10%;margin-bottom: 10%;">
                <form class="example" action="viewProduct.jsp">
                    <input type="text" placeholder="Search.." name="search">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>
        <!-- /.container -->

        <!-- Footer -->
        <footer class="py-5 bg-dark">
            <div style="height: 10%;">
                <p class="m-0 text-center text-white">Copyright &copy; RetroSOFTWARE 2018</p>
                <p class="m-0 text-center text-white"><a href="index.jsp" style="text-align: center;">Back to Home</a> </p>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>

</html>
