<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includes/nav_bar.jsp" %>
<%@include file="includes/connect.jsp" %>
<!DOCTYPE html>
<body>

    <!-- Page Content -->
    <div class="imageBox">
        <img src="images/eye2.png" alt="logo" width="300" height="250">

    </div>
    <div id="wrapper">
        <style>
            form label{width: 250px; font-size: 20px;}
            form input{width: 400px;}
            .tablink
            {
                background-color: #555;
                color: white;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 14px 16px;
                font-size: 35px;
                width: 100%;
            }

            .tablink:hover 
            {
                background-color: #777;

            }
        </style>
        <section class="content" style="width: 65%;">
            <button class="tablink" onclick="openPage('Buy', this, '#00ADB5')" id="defaultOpen">Update Employee</button>
            
         <%
                String employee_id = request.getParameter("employee_id");
                Statement st = conn.createStatement();
                
                ResultSet resultSet = st.executeQuery(
                          "select name, address, password, admin_privilege, salary, ppsn from employees where id = "+ employee_id);
                
                //puts cursor in first position
                resultSet.first();
                
                String name = resultSet.getString("name");                
                String address = resultSet.getString("address");
                String password = resultSet.getString("password");
                String admin_privilege = resultSet.getString("admin_privilege");
                String salary = resultSet.getString("salary");
                String ppsn = resultSet.getString("ppsn");
                
            %>
            <div id="Buy" class="tabcontent">
                <form action="updateEmployee.jsp" method="post">
                        <input type="hidden" name="employee_id" value="<%out.write(employee_id);%>"<br>
                        
                        <div><label>Name</label>
                        <input name="name" value="<%out.write(name); %>"></div>
                       <div> <label>Address</label>
                        <input name="address" value="<%out.write(address) ;%>"></div>
                       <div> <label>Password</label>
                        <input name="password" value="<%out.write(password); %>"></div>
                       <div> <label>Admin Privilege</label>
                        <input name="admin_privilege" value="<%out.write(admin_privilege); %>"></div>
                        <div><label>Salary</label>
                        <input name="salary" value="<%out.write(salary); %>"></div>
                        <div><label>PPS Number</label>
                        <input name="ppsn" value="<%out.write(ppsn); %>"></div>
                        <div><label>&nbsp;</label>
                        <input type="submit" style="color:green;font-weight: bold;font-size: 38px;"  value="UPDATE STAFF DETAILS"></div>
                        <br>


                    </form>

            </div>

        </section>


    </div>



    <button style="font-size: 20px;margin-right: 7%; margin-top: 3%;" class="btn4" onclick="location.href = 'view_employees.jsp'">View Employees</a></button> 


<script>
    function openPage(pageName, elmnt, color) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablink");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].style.backgroundColor = "";
        }
        document.getElementById(pageName).style.display = "block";
        elmnt.style.backgroundColor = color;

    }
// Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();
</script>
</body>   





</html>
