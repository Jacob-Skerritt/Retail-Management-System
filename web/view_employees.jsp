
<%@include file="includes/connect.jsp" %>
<%@include file="includes/nav_bar.jsp" %>

<%
    
Statement st=conn.createStatement();
ResultSet resultSet;
resultSet = st.executeQuery("SELECT customers.account_no, customers.name, customers.address, employees.id, employees.salary, employees.ppsn " 
            +"FROM customers INNER JOIN employees "
            +"WHERE customers.account_no = employees.account_no");


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
                            <th>A/C number</th>
                            <th>Name</th>
                            <th>Address</th>
                            <th>Staff ID</th>
                            <th>Salary</th>
                            <th>PPSN</th>



                            <th>Remove</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <% 
                       while(resultSet.next()){ 
                           out.write("<tr>");
                           out.write("<td>" + resultSet.getString("account_no")+ "</td>");
                           out.write("<td>" + resultSet.getString("name")+ "</td>");
                           out.write("<td>" + resultSet.getString("address")+ "</td>");
                           out.write("<td>" + resultSet.getInt("id")+ "</td>");
                           out.write("<td>" + resultSet.getDouble("salary")+ "</td>");
                           out.write("<td>" + resultSet.getString("ppsn")+ "</td>");
                           
                    
                            
                    %>
               

                    <style>
                        input{
                            font-family: "ALBA";
                        }
                    </style>

                    <td><form action="delete_account.php" method="post"
                              id="delete_account_form">
                            <input type="hidden" name="customer_id"
                                   value="<?php echo $employees['customer_id']; ?>">
                            <input style="width: 70px; font-size: 20px; color: red; "type="submit" value="Delete">
                        </form></td>
                    <td><form action="edit_user_form.php" method="post"
                              id="delete_user_form_form">
                            <input type="hidden" name="customer_id"
                                   value="<?php echo $employees['customer_id']; ?>">
                            <input type="hidden" name="category_id"
                                   value="<?php echo $employees['customer_id']; ?>">
                            <input style="width: 70px;font-size: 20px;color: blue;"type="submit" value="Edit">
                        </form></td>
                    <% } %>
                    </tr>
                </table>

            </div> 

        </div>


</body>

</html>
