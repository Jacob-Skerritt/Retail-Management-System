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
                        <th>Runtime</th>
                        <th>Age Rating</th>
                        <th>Release Year</th>

                        <th>Remove</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                <%
                    while (resultSet.next())
                    {
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
                        <input  type="hidden" name="stock_id"
                                value="<%= resultSet.getString("id")%>">
                        <input style="width: 70px; font-size: 15px; color: red; "type="submit" value="Remove">
                    </form></td>
                <td><form action="update_stock.jsp" method="post"
                          id="delete_user_form_form">
                        <input type="hidden" name="customer_id"
                               value="<%= resultSet.getString("id")%>">
                        <input style="width: 70px;font-size: 15px; ;color: #00ADB5;"type="submit" value="Edit">
                    </form></td>
                    <% }%>
                </tr>
            </table>

        </div> 

    </div>
<div>

<a href="#top"><img style="width: 35px; height: 35px; display: block; margin: auto; " src="images/top-Icon.png" alt="Back to top"/></a></br></br><hr>
</div>
</body>


</html>
