<%-- 
    Document   : loggedIn_specials
    Created on : 20-Nov-2018, 18:27:43
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/connect.jsp" %>
<%@include file="includes/nav_bar2.jsp" %>
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
            <p class="m-0 text-center text-white"><a href=loggedIn_index.jsp style="text-align: center;">Back to Home</a> </p>
        </div>
        <!-- /.container -->
    </footer>
</html>

