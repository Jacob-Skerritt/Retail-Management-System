<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/connect.jsp" %>
<%@include file="includes/nav_bar2.jsp" %>
<%    Statement st = conn.createStatement();
    ResultSet resultSet;
    resultSet = st.executeQuery("select * from customers where account_no = " + session.getAttribute("id"));

    resultSet.next();
%>




<!-- Navigation -->

<!-- Page Content -->

<!-- Jumbotron Header -->




<!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->

<!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
<div class="container"style="margin-top: 5%;margin-bottom: 5%;">
    <div class="row">
        <div class="col-xs-12 col-sm-9">

            <!-- User profile -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">Your Details</h4>
                </div>
                <div class="panel-body">
                    <div class="profile__avatar">
                        <img src="images/jack.jpg" alt="...">
                    </div>
                    <div class="profile__header">
                        <h4><%out.write(resultSet.getString("name")); %></h4>

                    </div>
                </div>
            </div>

            <!-- User info -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">User info</h4>
                </div>
                <div class="panel-body">
                    <table class="table profile__table">


                        <tbody>
                            <tr>
                                <th><strong>Date of Birth</strong></th>
                                <td><%out.write(resultSet.getString("date_of_birth")); %></td>
                            </tr>
                             <tr>
                                <th><strong>Account Created:</strong></th>
                                <td><%out.write(resultSet.getString("date_joined")); %></td>
                            </tr>
                            <tr>
                                <th><strong>Address</strong></th>
                                <td><%out.write(resultSet.getString("address")); %></td>
                            </tr>

                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Community -->


            <!-- Latest posts -->


        </div>
        <div class="col-xs-12 col-sm-3">

            <!-- Contact user -->

            <hr class="profile__contact-hr">

            <!-- Contact info -->
            <div class="profile__contact-info">
                <div class="profile__contact-info-item">
                    <div class="profile__contact-info-icon">
                        <i class="fa fa-phone"></i>
                    </div>
                    <div class="profile__contact-info-body">
                        <h5 class="profile__contact-info-heading">Telephone Number:</h5>
                        <%out.write(resultSet.getString("phone")); %>
                    </div>
                </div>
                <div class="profile__contact-info-item">
                </div>
                <div class="profile__contact-info-item">
                    <div class="profile__contact-info-icon">
                        <i class="fa fa-envelope-square"></i>
                    </div>
                    <div class="profile__contact-info-body">
                        <h5 class="profile__contact-info-heading">E-mail address</h5>
                        <a href="mailto:admin@domain.com"><%out.write(resultSet.getString("email"));%></a>

                    </div>
                </div>
                <div class="profile__contact-info-item">
                    <div class="profile__contact-info-icon">
                        <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'edit_Details.jsp'"><strong>Change Details</strong></button>
                    </div>

                </div>
                <div class="profile__contact-info-item">
                    <div class="profile__contact-info-icon">
                        <button style="width: 100%; background-color: red;color: white;" onclick="location.href = ''"><strong>Deactivate Account</strong></button>
                    </div>

                </div>
            </div>

        </div>
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
