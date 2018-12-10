<%@include file="includes/connect.jsp" %>
<%@include file="includes/nav_bar.jsp" %>

<%        Statement st = conn.createStatement();
    ResultSet resultSet;
    resultSet = st.executeQuery("select c.account_no , c.name, d.id, d.title, r.id, r.type "
            + "from customers c, dvds d, reservations r "
            + "where r.account_no = c.account_no and r.dvd_id = d.id");
    
%>

<body>

        <div class="tableForm">
            <h1>Reservations</h1>
            <!-- Page Content -->
            <table  class="table table-striped">
                <thead>
                    <tr>
                        <th>Reservation Id</th>
                        <th>Account Holder</th>
                        <th>Account No</th>
                        <th>Dvd Id</th>
                        <th>Dvd Title</th>
                        <th>Reservation Type</th>
                        <th>Process</th>
                        <th>Remove</th>
                    </tr>
                </thead>
                <%
                    while (resultSet.next()) {
                        out.write("<tr>");
                        out.write("<td>" + resultSet.getString("r.id") + "</td>");
                       out.write("<td>" + resultSet.getString("c.name") + "</td>");
                        out.write("<td>" + resultSet.getString("c.account_no") + "</td>");
                        out.write("<td>" + resultSet.getString("d.id") + "</td>");
                        out.write("<td>" + resultSet.getString("d.title") + "</td>");
                        out.write("<td>" + resultSet.getString("r.type") + "</td>");
             


                %>


                <td><form action="reservation_process.jsp" method="post"
                          id="delete_account_form">
                        <input type="hidden" name="reservation_id" value="<% out.write(resultSet.getString("r.id")); %>">
                        <input type="hidden" name="dvd_id" value="<% out.write(resultSet.getString("d.id")); %>">
                        <!--<input type="hidden" name="title" value="<% out.write(resultSet.getString("d.title")); %>">-->
                        <input style="width: 75px;font-size: 20px; font-weight: bold;color: green;padding: 3px;float: left;"type="submit" value="Process">
                    </form></td>
                <td><form action="delete_reservation.jsp" method="post"
                          id="delete_user_form_form">
                        <input type="hidden" name="reservation_id"
                               value="<% out.write(resultSet.getString("r.id")); %>">
                        <input style="width: 75px;font-size: 18px; font-weight: bold;padding: 5px;float:left;color: #00ADB5;"type="submit" value="Remove">
                    </form></td>
                    <% }%>
                </tr>
            </table>

        </div> 

<div>

<a href="#top"><img style="width: 35px; height: 35px; display: block; margin: auto; " src="images/top-Icon.png" alt="Back to top"/></a></br></br><hr>
</div>
</body>
    <!-- Footer -->

</html>
