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
                    font-size: 25px;
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
                <form action="addEmployee.php" method="post">

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

