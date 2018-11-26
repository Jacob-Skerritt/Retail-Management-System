
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@include file="includes/connect.jsp" %>
<%@page import="java.sql.*,java.util.*"%>


<%    String title = request.getParameter("title");
    String price = request.getParameter("price");
    String plot = request.getParameter("plot");
    String runtime = request.getParameter("runtime");
    String age_rating = request.getParameter("age_rating");
    String image = request.getParameter("image");
    String trailer = request.getParameter("trailer");
    int year = Integer.parseInt(request.getParameter("year"));
    String format = request.getParameter("format");

    Statement st = conn.createStatement();
    st.executeUpdate("INSERT INTO dvds(title, price, plot, runtime, age_rating, image, trailer, year, format )VALUES('" + title + "','" + price + "','" + plot + "','" + runtime + "','" + age_rating + "','" + image + "','" + trailer + "','" + year + "','" + format + "')");
    //out.println("Data is successfully inserted!");
    String redirectURL = "view_stock.jsp";
    response.sendRedirect(redirectURL);


%>