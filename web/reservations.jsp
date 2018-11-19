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
                    
            <form action="add_reservation.php" method="post">
                        <h2>Add Reservation</h2><br>
<!--                <h6>Required fields are marked with <span class="req">*</span></h6><br> -->
                            <label>A/C Number</label>
                            <input><br>
                            <label>Name</label>
                            <input><br>
                            <label>Dvd Id</label>
                            <input><br>
                            <label>Reserve Date</label>
                            <input><br>
            <label>&nbsp;</label>
            <input type="submit" value="Add Reservation">
            <br>
              
        </form>
                    
          
          </div>
            <button class="btn4"><a href="view_reservations.jsp">View Reservations</a></button>
            <button class="btn4"><a href="view_employee.jsp">View Reservations By Account No</a></button>
            <button class="btn4"><a href="view_employee.jsp" >View Reservations By Id</a></button>
            
                       
           
      </main>
        <!-- Footer -->
 <%@include file="includes/footer.jsp" %>
    </body>
</html>

