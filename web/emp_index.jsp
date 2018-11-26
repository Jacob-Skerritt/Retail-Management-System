<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includes/connect.jsp" %>
<%@include file="includes/nav_bar.jsp" %>

<%
    String accountNo = request.getParameter("account_no");
    String dvdId = request.getParameter("dvd_id");

    if (accountNo == null || accountNo.isEmpty()) {
        accountNo = "";
    }

    if (dvdId == null || dvdId.isEmpty()) {
        dvdId = "";
    }


%>
<body>

    <main>




        <div id="wrapper">
            <!-- Page Content -->
            <section class="imageBox">
                <img src="images/eye2.png" alt="logo" width="300" height="250">
                <br>

            </section>

            <style>

                form label{width: 250px;font-size: 20px;}
                form input{width: 400px;}
                h2{font-size: 20px;}
            </style>
            <section class="content" style="width: 65%">
                <button class="tablink" onclick="openPage('Rent', this, '#393E46')" id="defaultOpen">Rent</button>
                <button class="tablink" onclick="openPage('Reserve', this, '#F8B500')">Reserve</button>
                <button class="tablink" onclick="openPage('Buy', this, '#00ADB5')">Buy</button>


                <div id="Rent" class="tabcontent">
                    <form action="process_rental.jsp">
                        <h2>Rental  </h2><br>
                        <label>Movie ID:</label>
                        <input name="dvd_id" value="<% out.write(accountNo);%>"><br>
                        <label>A/C Number:</label>
                        <input name="account_no" value="<% out.write(accountNo);%>"><br>
                        <label>Rental Period:</label> <!-- Hidden/reserve -->
                        <input name="rental_period" type="date"><br>
                        <label>Price:</label> <!-- Hidden/reserve -->
                        <input name ="price"><br>
                        <div><label>&nbsp;</label>
                            <input type="submit" value="Add DVD"></div>
                        <div><label>&nbsp;</label>
                            <input type="submit" value="Complete Rental"></div>
                    </form>

                </div>

                <div id="Reserve" class="tabcontent">
                    <form>
                        <h2>Reservation</h2><br>
                        <br><br>
                        <label>Reservation ID</label>
                        <input><br>
                        <label>A/C Number</label>
                        <input><br>
                        <div><label>&nbsp;</label>
                            <input type="submit" value="Add Reservation"></div>

                    </form>

                </div>

                <div id="Buy" class="tabcontent">
                    <form>
                        <h2>Sales</h2><br>
                        <label>Movie</label>
                        <input><br>
                        <label>Quantity</label>
                        <input><br>
                        <label>Price</label> 
                        <input><br>
                        <label>Total</label> 
                        <input><br>
                        <div><label>&nbsp;</label>
                            <input type="submit" value="Add Purchase"></div>
                    </form>

                </div>


            </section>

<button style="font-size: 20px; float:left;" class="btn4" onclick="location.href = 'view_rentals.jsp'">View all Rentals</a></button>

        </div>
        <script>
            function openPage(pageName, elmnt, color) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablink");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].style.backgroundColor = "";
                }
                document.getElementById(pageName).style.display = "block";
                elmnt.style.backgroundColor = color;

            }
// Get the element with id="defaultOpen" and click on it
            document.getElementById("defaultOpen").click();
        </script>

    </main>

    <!-- Footer -->



</body>
</html>
