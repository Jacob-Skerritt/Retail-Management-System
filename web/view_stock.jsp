<%@include file="includes/connect.jsp" %>
<%@include file="includes/nav_bar.jsp" %>

<%        Statement st = conn.createStatement();
    ResultSet resultSet;
    resultSet = st.executeQuery("SELECT * FROM dvds");
%>



<body>

        <div id="wrapper">


            <!-- Page Content -->
            <div class="tableForm">
                <h1>Stock</h1>
                <!-- Page Content -->
                <table  class="table table-striped">
                    <thead>
                        <tr>
                            <th>Stock ID</th>
                            <th>Movie Title</th>
                            <th>Genre</th>
                            <th>Runtime</th>
                            <th>Age Rating</th>
                            <th>Release Year</th>
                            <th>Remove</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <%
                        while (resultSet.next()) {
                            out.write("<tr>");
                            out.write("<td>" + resultSet.getString("id") + "</td>");
                            out.write("<td>" + resultSet.getString("title") + "</td>");
                            out.write("<td>" + resultSet.getString("genre") + "</td>");
                            out.write("<td>" + resultSet.getString("runtime") + "</td>");
                            out.write("<td>" + resultSet.getString("age_rating") + "</td>");
                            out.write("<td>" + resultSet.getString("year") + "</td>");


                    %>

                    <td><?php echo $dvds['year']; ?></td>

                    <style>
                        input{
                            font-family: "ALBA";
                        }
                    </style>
                    <td><form action="delete_account.php" method="post"
                              id="delete_account_form">
                            <input  type="hidden" name="customer_id"
                                    value="<?php echo $customers['customer_id']; ?>">
                            <input style="width: 70px; font-size: 20px; color: red; "type="submit" value="Delete">
                        </form></td>
                    <td><form action="edit_user_form.php" method="post"
                              id="delete_user_form_form">
                            <input type="hidden" name="customer_id"
                                   value="<?php echo $customers['customer_id']; ?>">
                            <input type="hidden" name="category_id"
                                   value="<?php echo $customers['customer_id']; ?>">
                            <input style="width: 70px;font-size: 20px; ;color: blue;"type="submit" value="Edit">
                        </form></td>
                        <% }%>
                    </tr>
                </table>

            </div> 

        </div>


</body>

      <!-- Footer -->
    <%@include file="includes/footer.jsp" %>
</html>
