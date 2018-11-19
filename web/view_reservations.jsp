<%@include file="includes/connect.jsp" %>
<%@include file="includes/nav_bar.jsp" %>

<%        Statement st = conn.createStatement();
    ResultSet resultSet;
    resultSet = st.executeQuery("select c.account_no , c.name, d.id, d.title, r.id, r.type "
            + "from customers c, dvds d, reservations r "
            + "where r.account_no = c.account_no and r.dvd_id = d.id");
    
%>

<body>

    <main>


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


                <td><form action="delete_account.php" method="post"
                          id="delete_account_form">
                        <input type="hidden" name="customer_id"
                               value="<?php echo $customers['customer_id']; ?>">
                        <input style="width: 70px; font-size: 20px; "type="submit" value="Process">
                    </form></td>
                <td><form action="edit_user_form.php" method="post"
                          id="delete_user_form_form">
                        <input type="hidden" name="customer_id"
                               value="<?php echo $customers['customer_id']; ?>">
                        <input type="hidden" name="category_id"
                               value="<?php echo $customers['customer_id']; ?>">
                        <input style="width: 80px;font-size: 20px;"type="submit" value="Remove">
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
