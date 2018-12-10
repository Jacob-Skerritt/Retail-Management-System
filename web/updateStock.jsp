
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@include file="includes/connect.jsp" %>
<%@page import="java.sql.PreparedStatement"%>

<%    
    String id = request.getParameter("id");
    String title = request.getParameter("title");
    String price = request.getParameter("price");
    String plot = request.getParameter("plot");
    String runtime = request.getParameter("runtime");
    String age_rating = request.getParameter("age_rating");
    String year = request.getParameter("year");
    String format = request.getParameter("format");
    String trailer = request.getParameter("trailer");
    
    PreparedStatement ps = null;
    //Connection conn = null;

    String query = "Update dvds set title=?,price=?,plot=?,runtime=?,age_rating=?, year=?, format=?, trailer=? where id =?";

    ps = conn.prepareStatement(query);
    ps.setString(1, title);
    ps.setString(2, price);
    ps.setString(3, plot);
    ps.setString(4, runtime);
    ps.setString(5, age_rating);
    ps.setString(6, year);
    ps.setString(7, format);
    ps.setString(8, trailer);
    ps.setString(9, id);
    int i = ps.executeUpdate();

    if (i > 0)
    {
        out.print("Record Updated Successfully");
        String redirectURL = "view_stock.jsp";
        response.sendRedirect(redirectURL);
    } else
    {
        out.print("There is a problem in updating Record.");
    }



%>
