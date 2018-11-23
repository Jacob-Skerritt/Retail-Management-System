
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

    <div class="topnav">

        <a class="active" href="emp_index.jsp"><i class="fa fa-fw fa-home"></i>Retro Vision</a>

        <%
            if(null != session.getAttribute("admin_level")){
            if (((Integer) session.getAttribute("admin_level")) > 0) {%>
        <a href="customer.jsp">Customer  </a> 
        <%}}%>

        <%  if(null != session.getAttribute("admin_level")){
            if (((Integer) session.getAttribute("admin_level")) > 1) {%>
        <a class="active" href="employee.jsp">Employee</a>
        <%}}%>
        
        <%   if(null != session.getAttribute("admin_level")){
            if (((Integer) session.getAttribute("admin_level")) > 0) {%>
        <a class="active" href="stock.jsp">Stock</a>
        <%}}%>
        <%  if(null != session.getAttribute("admin_level")){
            if (((Integer) session.getAttribute("admin_level")) > 0) {%>
        <a href="reservations.jsp">Reservations</a>
        <%}}%>
        <a href="index.jsp">LogOut</a>
        <div class="search-container">
            <input type="text" placeholder="Search.." name="search">
            <button type="submit">Submit</button>
            
         
        </div>
    </div>

  