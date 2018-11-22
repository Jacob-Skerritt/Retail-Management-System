<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includes/nav_bar.jsp" %>
<!DOCTYPE html>
<body>


    <div id="wrapper">
        <!--              <button class="btn4"><a href="viewEmployees.php">View Employees</a></button>-->
        <!-- Page Content -->
        <div class="imageBox">
            <img src="images/eye2.png" alt="logo" width="300" height="250">
            <br>

        </div>
        
                    
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
            <button class="tablink" onclick="openPage('Rent', this, '#393E46')" id="defaultOpen">Add Reservation</button>

            <div id="Rent" class="tabcontent">
                        <form action="add_reservation.php" method="post">

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

        </section>
        
        


    </div>


    
        <button style="font-size: 20px; float:left;" class="btn4" onclick="location.href = 'view_reservations.jsp'">View Reservations</button>
        <button style="font-size: 20px; float:left;" class="btn4" onclick="location.href = 'view_employee.jsp'">View Reservations By Account No</button>
        <button style="font-size: 20px; float:left;" class="btn4" onclick="location.href = 'view_employee.jsp'">View Reservations By Id</button>
    <div ></div>
   
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

