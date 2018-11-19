<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includes/nav_bar.jsp" %>
<!DOCTYPE html>
    <body>

        <main>
          <div id="wrapper">
<!--              <button class="btn4"><a href="viewEmployees.php">View Employees</a></button>-->
                    <!-- Page Content -->
                    <div class="imageBox">
                        <img src="images/eye2.png" alt="logo" width="400" height="350">
                        <br>
                         
                    </div>
                    <style>
                        h1{float:right; margin-right: 30%;}
                        form{float: right; width: 60%; margin-right: 10%; }
                        form label{width: 300px;}
                    </style>
                    
            <form action="addEmployee.php" method="post">
                        <h2>Add Employee</h2><br>
<!--                <h6>Required fields are marked with <span class="req">*</span></h6><br> -->
                            <label>A/C Number</label>
                            <input><br>
                            <label>Name</label>
                            <input><br>
                            <label>Address</label>
                            <input><br>
                            <label>E-Mail</label>
                            <input><br>
                            <label>Phone</label>
                            <input><br>
                            <label>PPS Number</label>
                            <input><br>
                            <label>Gender</label>
                            <input><br>
                            <label>Date of Birth</label>
                            <input><br>
            <label>Access</label>
            <input type="input" name="admin_privilege" id="admin_privilege" placeholder="Please select user Access level" 
                    title="Please select the Access level"  required>
            <br>


            <label>Password</label>
            <input type="password" name="password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$" title="Password must contain at least One Uppercase letter, &#13; One Lowercase and a number and be 8 characters long" placeholder="Please enter a password" required>
            <br>
            <label>Salary</label>
            <input><br>

            <label>&nbsp;</label>
            <input type="submit" value="ADD STAFF MEMBER">
            <br>
            
            
        </form>
                    
          
          </div>
            <button class="btn4"><a href="view_employees.jsp">View Employees</a></button>
            
                       
           
      </main>
        <!-- Footer -->
 <%@include file="includes/footer.jsp" %>
    </body>
</html>

