<%@include file="includes/connect.jsp" %>
<%@include file="includes/nav_bar.jsp" %>

<%        Statement st = conn.createStatement();
    ResultSet resultSet;
        resultSet = st.executeQuery("select r.id, r.state, d.title, c.name, r.return_date, e.name "
                + "from  rentals r "
                + "left join rentals_dvds rd on (r.id = rd.rental_id)"
                + "left join dvds d on (rd.dvd_id = d.id)"
                + "inner join employees e on (r.employee_id = e.id)"
                + "left join customers c on (c.account_no = r.customer_id)");
%>



<body>

        <div id="wrapper">


            <!-- Page Content -->
            <div class="tableForm">
                <h1>Rentals</h1>
                <!-- Page Content -->
                <table  class="table table-striped">
                    <thead>
                        <tr>
                            <th>Rental Id</th>
                            <th>Dvd Title</th>
                            <th>Customer Name</th>
                            <th>Status</th>
                            <th>Return Date</th>
                            <th>Employee Name</th>

                            <th>Return</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <%
                        while (resultSet.next()) {
                            out.write("<tr>");
                            out.write("<td>" + resultSet.getString("r.id") + "</td>");
                            out.write("<td>" + resultSet.getString("d.title") + "</td>");
                            out.write("<td>" + resultSet.getString("c.name") + "</td>");
                            out.write("<td>" + resultSet.getString("r.state") + "</td>");
                            out.write("<td>" + resultSet.getString("r.return_date") + "</td>");
                            out.write("<td>" + resultSet.getString("e.name") + "</td>");
                            


                    %>

                    <style>
                        input{
                            font-family: "ALBA";
                        }
                    </style>
                    <td><form action="delete_stock.jsp" method="post"
                              id="delete_account_form">
                            <input  type="hidden" name="customer_id"
                                    value="<%= resultSet.getString("id") %>">
                            <input style="width: 70px; font-size: 15px; color: red; "type="submit" value="Return">
                        </form></td>
                    <td><form action="update_stock.jsp" method="post"
                              id="delete_user_form_form">
                            <input type="hidden" name="customer_id"
                                   value="<%= resultSet.getString("id") %>">
                            <input style="width: 70px;font-size: 15px; ;color: #00ADB5;"type="submit" value="Edit">
                        </form></td>
                        <% }%>
                    </tr>
                </table>

            </div> 

        </div>


</body>


</html>
