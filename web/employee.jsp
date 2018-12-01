<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includes/nav_bar.jsp" %>
<!DOCTYPE html>
<body>

    <main>
        <div id="wrapper">

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
                <button class="tablink" onclick="openPage('Rent', this, '#393E46')" id="defaultOpen">Add Employee</button>

                <div id="Rent" class="tabcontent">
                    <form action="employeeInsert.jsp" method="post">

                        <label>Name</label>
                        <input name="name" placeholder="Employee Name" value="Bob Smyth"><br>
                        <label>Address</label>
                        <input name="address" placeholder="Address" value="1 Main Street"><br>
                        <label>Password</label>
                        <input type="password" name="password" placeholder="Please enter a password" value="pword" required>
                        <br>
                        <label>Admin Privilege</label>
                        <input name="admin_privilege"  placeholder="Please select user Access level" value="1">
                        <br>
                        <label>Salary</label>
                        <input name="salary" placeholder="Please enter weekly/monthly salary" value="15.00"><br>
                        <label>PPS Number</label>
                        <input name="ppsn" placeholder="Please enter PPS Number" value="563287PK"><br>
                        <label>&nbsp;</label>
                        <input type="submit" style="color:green;" value="ADD STAFF MEMBER">
                        <br>


                    </form>

                </div>

            </section>


        </div>
        <button style="font-size: 20px; float:left;"class="btn4" onclick="location.href = 'view_employees.jsp'">View Employees</a></button>

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

