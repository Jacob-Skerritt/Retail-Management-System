<%@include file="includes/connect.jsp" %>
<%@include file="includes/nav_bar.jsp" %>

<%        Statement st = conn.createStatement();
    ResultSet resultSet;
    resultSet = st.executeQuery("SELECT * FROM customers");
%>

<body>

    <main>


        <div class="tableForm">
            <h1>Customers</h1>
            <!-- Page Content -->
            <table  class="table table-striped">
                <thead>
                    <tr>
                        <th>A/C Number</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Gender</th>
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
                        out.write("<td>" + resultSet.getString("gender") + "</td>");
                        out.write("<td>" + resultSet.getString("date_joined") + "</td>");
                        out.write("<td>" + resultSet.getString("email") + "</td>");
                        out.write("<td>" + resultSet.getString("phone") + "</td>");


                %>


                <td><form action="delete_account.php" method="post"
                          id="delete_account_form">
                        <input type="hidden" name="customer_id"
                               value="<?php echo $customers['customer_id']; ?>">
                        <input style="width: 70px; font-size: 20px; "type="submit" value="Delete">
                    </form></td>
                <td><form action="edit_user_form.php" method="post"
                          id="delete_user_form_form">
                        <input type="hidden" name="customer_id"
                               value="<?php echo $customers['customer_id']; ?>">
                        <input type="hidden" name="category_id"
                               value="<?php echo $customers['customer_id']; ?>">
                        <input style="width: 70px;font-size: 20px;"type="submit" value="Edit">
                    </form></td>
                    <% }%>
                </tr>
            </table>

        </div> 

    </main>
    <!-- Footer -->
 <%@include file="includes/footer.jsp" %>


</body>
</html>
