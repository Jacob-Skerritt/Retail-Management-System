
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/connect.jsp" %>
<%@include file="includes/nav_bar.jsp" %>


<%    
    int dvdId = Integer.parseInt(request.getParameter("dvd_id"));
    Statement st = conn.createStatement();
    ResultSet resultSet;
    resultSet = st.executeQuery("select * from dvds where id = " + dvdId);

    resultSet.next();
%>
<!-- Navigation -->

<!-- Page Content -->

<!-- Jumbotron Header -->

<table class="table profile__table" style="margin-top: 8%;margin-bottom: 5%;">
    <tbody>
        <tr>
            <td>
                <img style="height:400px;max-width:400px;" src="<%out.write( "images/" + resultSet.getString("image")); %>"  />
            </td>
            <td><table>
                    <tbody>
                        <tr>
                            <td>
                                <%out.write("<h2><u>" + resultSet.getString("title") + "</u></h2>"); %>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <%out.write(resultSet.getString("plot")); %>
                            </td>
                        </tr>
                        <tr>
                            <%
                                String trailer;
                            String trailerSub = resultSet.getString("trailer");
                            String embed = "embed/" + trailerSub.substring(32);
                            String trailerBegining = trailerSub.substring(0,24);
                            trailer = trailerBegining + embed;

                            
                            
                            %>
                            <td><iframe width="560" height="315" src="<%out.write(trailer); %>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></td>
                        </tr>
                        <tr>
                            <td> <button onclick="location.href = 'login_register.jsp'">Reserve</button></td>
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
        <p class="m-0 text-center text-white"><a href="index.jsp" style="text-align: center;">Back to Home</a> </p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

