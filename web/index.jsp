<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includes/connect.jsp" %>
<%@include file="includes/nav_bar.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<body>



    <div id="wrapper">
        <!-- Page Content -->
        <section class="imageBox">
            <img src="images/eye2.png" alt="logo" width="300" height="250">
            <br>

        </section>

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
            <button class="tablink" onclick="openPage('Rent', this, '#393E46')" id="defaultOpen">Log In</button>

            <div id="Rent" class="tabcontent">
                <form  name="staffLog" action="login.jsp" method="post">
            <br><br>
            <label>Staff ID</label>
            <input type="text" name="id">
            <br>

            <label>Password:</label>
            <input type="password" name="password" required>
            <br>

            <label>&nbsp;</label>
            <input type="submit" value="SUBMIT">
            <br>
        </form>

            </div>

        </section>
        

    </div>
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

