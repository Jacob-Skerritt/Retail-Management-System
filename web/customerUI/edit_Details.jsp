<%-- 
    Document   : edit_Details
    Created on : 23-Nov-2018, 13:40:41
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/connect.jsp" %>
<!DOCTYPE html>
<html >
    <head>
        <title>Register Page</title>
        <!--Made with love by Mutiullah Samim -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link href="css/register.css" rel="stylesheet" type="text/css"/>
        <!--Bootsrap 4 CDN-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!--Fontawesome CDN-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

        <!--Custom styles-->
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
    <body style="background-color: black;">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->




        <div style="width: 80%;margin-left: 10%;background-color: lightgray;">





            <div >
                <article class="card-body mx-auto" style="max-width: 400px;">
                    <h4 class="card-title mt-3 text-center">Edit Account Details</h4>
                    <p class="text-center">Please Change values in the fields you wish to change</p>
                    
                   
                    <form action="account.jsp">
                        <div class="form-group input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                            </div>
                            <input name="" class="form-control" placeholder="Full name" type="text">
                        </div> <!-- form-group// -->
                        <div class="form-group input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                            </div>
                            <input name="" class="form-control" placeholder="Address" type="text">
                        </div> <!-- form-group// -->
                        <div class="form-group input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                            </div>
                            <input name="" class="form-control" placeholder="Email address" type="email">
                        </div> <!-- form-group// -->
                        <div class="form-group input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                            </div>
                            <input name="" class="form-control" placeholder="Date of Birth" type="date">
                        </div> <!-- form-group// -->
                        <div class="form-group input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
                            </div>
                            <select class="custom-select" style="max-width: 120px;">
                                <option selected="">087</option>
                                <option value="1">086</option>
                                <option value="2">085</option>
                                <option value="3">083</option>
                            </select>
                            <input name="" class="form-control" placeholder="Phone number" type="text">
                        </div> <!-- form-group// -->

                                                           
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block"> Edit Details  </button>
                        </div> <!-- form-group// -->      
                               
                    </form>
                </article>
            </div> <!-- card.// -->

        </div> 
        <!--container end.//-->
        <footer class="py-5 bg-dark">
            <div style="height: 10%;">
                <p class="m-0 text-center text-white">Copyright &copy; RetroSOFTWARE 2018</p>
                <p class="m-0 text-center text-white"><a href="index.jsp" style="text-align: center;">Back to Home</a> </p>
            </div>
            <!-- /.container -->
        </footer>
    </body>
</html>