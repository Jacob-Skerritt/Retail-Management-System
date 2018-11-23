<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includes/connect.jsp" %>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<!DOCTYPE html>
<html>


    <head>
        <title>Retro Vision</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">   
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/myStyles.css" rel="stylesheet" type="text/css"/>    

    </head>


    <body>
        <div class="topnav">

            <a class="active" href="emp_index.jsp"><i class="fa fa-fw fa-home"></i>Retro Vision</a>

        </div>
        <main>





            <div id="wrapper">
                <!-- Page Content -->
                <section class="imageBox">
                    <img src="images/eye2.png" alt="logo" width="400" height="350">
                    <br>

                </section>


                <style>
                    h1{float:right; margin-right: 30%;}
                    form{float: right; width: 60%; margin-right: 10%; }
                    form label{width: 300px;}
                </style>                


                <h1>Staff Log In</h1>
                <form  name="staffLog" action="login.jsp" method="post">
                    <br><br>
                    <label>Staff ID</label>
                    <input type="text" name="id">
                    <br>

                    <label>Password:</label>
                    <input type="password" name="password" required>
                    <br>

                    <label>&nbsp;</label>
                    <input type="submit" value="Submit">
                    <br>
                </form>








            </div>

        </main>

        <!-- Footer -->
        <%@include file="includes/footer.jsp" %>


    </body>
</html>
