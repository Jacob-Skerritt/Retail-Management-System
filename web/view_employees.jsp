
<%@include file="includes/connect.jsp" %>
<%@include file="includes/nav_bar.jsp" %>

<%
//Statement st=conn.createStatement();
//ResultSet resultSet;
//resultSet = st.executeQuery("SELECT customers.account_no, customers.name, customers.address, employees.id, employees.salary, employees.ppsn " 
    //          +"FROM customers INNER JOIN employees "
    //          +"WHERE customers.account_no = employees.account_no");
    Statement st = conn.createStatement();
    ResultSet resultSet;
    resultSet = st.executeQuery("SELECT  employees.name, employees.address, employees.id, employees.salary, employees.ppsn "
            + "FROM  employees ");

%>
<body>

    <div id="wrapper">

        <!-- Page Content -->
        <div class="tableForm">
            <h1>Employees</h1>
            <!-- Page Content -->
            <table  class="table table-striped">
                <thead>
                    <tr>

                        <th>Name</th>
                        <th>Address</th>
                        <th>Staff ID</th>
                        <th>Salary</th>
                        <th>PPSN</th>



                        <th>Remove</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                <%                        while (resultSet.next())
                    {
                        out.write("<tr>");
                        //out.write("<td>" + resultSet.getString("account_no")+ "</td>");
                        out.write("<td>" + resultSet.getString("name") + "</td>");
                        out.write("<td>" + resultSet.getString("address") + "</td>");
                        out.write("<td>" + resultSet.getInt("id") + "</td>");
                        out.write("<td>" + resultSet.getDouble("salary") + "</td>");
                        out.write("<td>" + resultSet.getString("ppsn") + "</td>");


                %>


                <style>
                    input{
                        font-family: "ALBA";
                    }
                </style>

                <td><form action="delete_employee.jsp" method="post"
                          id="delete_account_form">
                        <input type="hidden" name="employee_id"
                               value="<%= resultSet.getString("id")%>">
                        <input style="width: 70px; font-size: 17px;font-weight: bold; color: red; "type="submit" value="Remove">
                    </form></td>
                <td><form action="update_employee.jsp" method="post"
                          id="delete_user_form_form">
                        <input type="hidden" name="employee_id"
                               value="<%= resultSet.getString("id")%>">
                        <input style="width: 70px;font-size: 20px;font-weight: bold;color: #00ADB5;"type="submit" value="Edit">
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
