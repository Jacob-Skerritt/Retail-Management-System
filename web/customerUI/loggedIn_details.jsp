<%-- 
    Document   : loggedIn_details
    Created on : 20-Nov-2018, 18:26:50
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/connect.jsp" %>
<%@include file="includes/nav_bar2.jsp" %>


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
