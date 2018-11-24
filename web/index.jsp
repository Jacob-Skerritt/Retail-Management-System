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
                        h1{float:right; margin-right: 30%;}
                        form{float: right; width: 60%; margin-right: 10%; }
                        form label{width: 200px;}
                    </style> 
                    
        <form  name="staffLog" action="login.jsp" method="post">
            
            <br><br><br><br><br><br>
            <h2>Staff Log In</h2><br>
            <label>Staff ID:</label>
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

</body>

</html>

