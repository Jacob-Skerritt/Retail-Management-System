<%@include file="includes/connect.jsp" %>
<%@include file="includes/nav_bar.jsp" %>

<%        Statement st = conn.createStatement();
    ResultSet resultSet;
    resultSet = st.executeQuery("SELECT * FROM customers");
%>

<body>
    <div class="tableForm">
            <h1>Customers</h1>
            <!-- Page Content -->
            <table  class="table table-striped">
                <thead>
                    <tr>
                        <th>A/C Number</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Join Date</th>
                        <th>Email</th>
                        <th>Phone</th>


                        <th>Remove</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                <%
                    while (resultSet.next()) {
                        out.write("<tr>");
                        out.write("<td>" + resultSet.getString("account_no") + "</td>");
                        out.write("<td>" + resultSet.getString("name") + "</td>");
                        out.write("<td>" + resultSet.getString("address") + "</td>");
                        out.write("<td>" + resultSet.getString("date_joined") + "</td>");
                        out.write("<td>" + resultSet.getString("email") + "</td>");
                        out.write("<td>" + resultSet.getString("phone") + "</td>");


                %>

                <style>
                        input{
                            font-family: "ALBA";
                        }
                    </style>
                <td><form action="delete_Customer.jsp" method="post"
                          id="delete_account_form">
                        <input type="hidden" name="customer_id"
                               value="<%= resultSet.getString("account_no") %>">
                        <input style="width: 70px; font-size: 15px;color: red; "type="submit" value="Remove">
                    </form></td>
                <td><form action="update_customer.jsp" method="post"
                          id="delete_user_form_form">
                        <input type="hidden" name="customer_id"
                               value="<%= resultSet.getString("account_no") %>">
                        <input style="width: 70px;font-size: 15px;color: #00ADB5;"type="submit" value="Edit">
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
