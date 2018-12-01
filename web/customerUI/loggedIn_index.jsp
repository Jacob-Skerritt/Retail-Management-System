<%-- 
    Document   : loggedIn_index
    Created on : 20-Nov-2018, 18:24:01
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/connect.jsp" %>
<%@include file="includes/nav_bar2.jsp" %>



<%    Statement st = conn.createStatement();
    ResultSet resultSet;
    resultSet = st.executeQuery("select gd.dvd_id, d.image, d.title from"
            + " dvds d, genres_dvds gd "
            + "join genres g on (g.genre = '" + "Action" + "')"
            + " Where gd.dvd_id = d.id");

    /*resultSet = st.executeQuery("select gd.dvd_id, d.title, g.genre , d.price, d.plot, d.runtime, d.age_rating,d.director, d.leading_actor, d.image, d.trailer, d.year from"
            + " dvds d, genres_dvds gd "
            + "join genres g on (g.genre = '" + "Action" + "')"
            + " Where gd.dvd_id = d.id"); */

%>



<!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1"style="margin-top: 5.3%;">
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

<div style="background-color: grey; text-align: center;"><h3>New RELEASES</h3></div>
<!-- Page Features -->
<div class="row text-center">
    <% while (resultSet.next()) {%>
    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="<% out.write("images/" + resultSet.getString("d.image")); %>" alt="">


        </div>
        <div >
            <form action="loggedIn_details.jsp" method="post">
                
                 <input type="hidden" name="dvd_id" value="<% out.write(resultSet.getString("gd.dvd_id")); %>">
                <input  style="width: 100%; background-color: #00ADB5;color: white;" type="submit" value="Details" />
            </form>

            <form action="reserve.jsp" method="post">
                <input type="hidden" name="dvd_title" value="<% out.write(resultSet.getString("d.title")); %>">
                 <input type="hidden" name="dvd_id" value="<% out.write(resultSet.getString("gd.dvd_id")); %>">
                <input style="width: 100%;background-color: orangered;color: white; font-weight: bold;" type="submit" value="Reserve" />
            </form>
        </div>
    </div>
    <% }%>


</div>
<!-- /.row -->
<div style="background-color: grey; text-align: center; margin-top: -5%"><h3>ACTION</h3></div>
<!-- Page Features -->
<div class="row text-center">

    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="images/images (7).jpg" alt="">

        </div>
        <div >
            <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'loggedIn_details.jsp'"><strong>Details</strong></button>


            <button style="width: 100%;background-color: orangered;color: white;" onclick="location.href = 'reserve.jsp'"><strong>Reserve</strong></button>
        </div>
    </div>

    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="images/images (6).jpg" alt="">

        </div>
        <div >
            <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'loggedIn_details.jsp'"><strong>Details</strong></button>


            <button style="width: 100%;background-color: orangered;color: white;" onclick="location.href = 'reserve.jsp'"><strong>Reserve</strong></button>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="images/images (5).jpg" alt="">

        </div>
        <div >
            <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'loggedIn_details.jsp'"><strong>Details</strong></button>


            <button style="width: 100%;background-color: orangered;color: white;" onclick="location.href = 'reserve.jsp'"><strong>Reserve</strong></button>
        </div>
    </div>

    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="images/images (4).jpg" alt="">

        </div>
        <div >
            <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'loggedIn_details.jsp'"><strong>Details</strong></button>


            <button style="width: 100%;background-color: orangered;color: white;" onclick="location.href = 'reserve.jsp'"><strong>Reserve</strong></button>
        </div>
    </div>

</div>

<!-- /.row -->
<div style="background-color: grey; text-align: center; margin-top: -5%"><h3>HORROR</h3></div>
<!-- Page Features -->
<div class="row text-center">

    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="images/images (3).jpg" alt="">

        </div>
        <div >
            <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'loggedIn_details.jsp'"><strong>Details</strong></button>


            <button style="width: 100%;background-color: orangered;color: white;" onclick="location.href = 'reserve.jsp'"><strong>Reserve</strong></button>
        </div>
    </div>

    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="images/images (2).jpg" alt="">

        </div>
        <div >
            <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'loggedIn_details.jsp'"><strong>Details</strong></button>


            <button style="width: 100%;background-color: orangered;color: white;" onclick="location.href = 'reserve.jsp'"><strong>Reserve</strong></button>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="images/images (1).jpg" alt="">

        </div>
        <div >
            <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'loggedIn_details.jsp'"><strong>Details</strong></button>


            <button style="width: 100%;background-color: orangered;color: white;" onclick="location.href = 'reserve.jsp'"><strong>Reserve</strong></button>
        </div>
    </div>

    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="images/download (8).jpg" alt="">

        </div>
        <div >
            <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'loggedIn_details.jsp'"><strong>Details</strong></button>


            <button style="width: 100%;background-color: orangered;color: white;" onclick="location.href = 'reserve.jsp'"><strong>Reserve</strong></button>
        </div>
    </div>

</div>
<!-- /.row -->
<div style="background-color: grey; text-align: center; margin-top: -5%"><h3>COMEDY</h3></div>
<!-- Page Features -->
<div class="row text-center">

    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="images/download (7).jpg" alt="">

        </div>
        <div >
            <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'loggedIn_details.jsp'"><strong>Details</strong></button>


            <button style="width: 100%;background-color: orangered;color: white;" onclick="location.href = 'reserve.jsp'"><strong>Reserve</strong></button>
        </div>
    </div>

    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="images/download (6).jpg" alt="">

        </div>
        <div >
            <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'loggedIn_details.jsp'"><strong>Details</strong></button>


            <button style="width: 100%;background-color: orangered;color: white;" onclick="location.href = 'reserve.jsp'"><strong>Reserve</strong></button>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="images/download (5).jpg" alt="">

        </div>
        <div >
            <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'loggedIn_details.jsp'"><strong>Details</strong></button>


            <button style="width: 100%;background-color: orangered;color: white;" onclick="location.href = 'reserve.jsp'"><strong>Reserve</strong></button>
        </div>
    </div>

    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="images/download (4).jpg" alt="">

        </div>
        <div >
            <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'loggedIn_details.jsp'"><strong>Details</strong></button>


            <button style="width: 100%;background-color: orangered;color: white;" onclick="location.href = 'reserve.jsp'"><strong>Reserve</strong></button>
        </div>
    </div>

</div>
<!-- /.row -->
<div style="background-color: grey; text-align: center; margin-top: -5%"><h3>STORE MOST POPULAR</h3></div>
<!-- Page Features -->
<div class="row text-center">

    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="images/download (3).jpg" alt="">

        </div>
        <div >
            <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'loggedIn_details.jsp'"><strong>Details</strong></button>


            <button style="width: 100%;background-color: orangered;color: white;" onclick="location.href = 'reserve.jsp'"><strong>Reserve</strong></button>
        </div>
    </div>


    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="images/download (2).jpg" alt="">

        </div>
        <div >
            <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'loggedIn_details.jsp'"><strong>Details</strong></button>


            <button style="width: 100%;background-color: orangered;color: white;" onclick="location.href = 'reserve.jsp'"><strong>Reserve</strong></button>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="images/download (1).jpg" alt="">

        </div>
        <div >
            <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'loggedIn_details.jsp'"><strong>Details</strong></button>


            <button style="width: 100%;background-color: orangered;color: white;" onclick="location.href = 'reserve.jsp'"><strong>Reserve</strong></button>
        </div>
    </div>


    <div class="col-lg-3 col-md-6 mb-4">
        <div class="card">
            <img class="card-img-top" src="images/John-Wick-2-900x0-c-default.jpg" alt="">


        </div>
        <div >
            <button style="width: 100%; background-color: #00ADB5;color: white;" onclick="location.href = 'loggedIn_details.jsp'"><strong>Details</strong></button>


            <button style="width: 100%;background-color: orangered;color: white;" onclick="location.href = 'reserve.jsp'"><strong>Reserve</strong></button>
        </div>
    </div>

</div>
<!-- /.row -->
</div> 

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

