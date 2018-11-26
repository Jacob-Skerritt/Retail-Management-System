<%@include file="includes/connect.jsp" %>
<%@page import="java.sql.*,java.util.*"%>
<%    String dvdId = request.getParameter("dvd_id");
    String accountNo = request.getParameter("account_no");
    String rentalPeriod = request.getParameter("rental_period");
    double price = Double.parseDouble(request.getParameter("price"));

    Statement st = conn.createStatement();
    st.executeUpdate("insert into rentals (return_date,state,employee_id,customer_id,payment_method, vat)values('" + rentalPeriod + "','" + "Out" + "','" + session.getAttribute("id") + "','" + accountNo + "','" + 1 + "','" + 1 + "')");
    
    ResultSet resultSet = st.executeQuery("SELECT id FROM rentals ORDER BY date_of_rental  DESC limit 1"); 
    resultSet.next();
    st.executeUpdate("insert into rentals_dvds (rental_id,dvd_id,quantity)values('" + resultSet.getString("id") + "','" + dvdId + "','"  + 1 + "')");


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
                            out.write("<td>" + resultSet.getString("runtime") + "</td>");
                            out.write("<td>" + resultSet.getString("age_rating") + "</td>");
                            out.write("<td>" + resultSet.getString("year") + "</td>");


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
                            <input style="width: 70px; font-size: 15px; color: red; "type="submit" value="Remove">
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
    