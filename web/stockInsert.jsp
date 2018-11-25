
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@include file="includes/connect.jsp" %>
<%@page import="java.sql.*,java.util.*"%>


<%


String title=request.getParameter("title");
String price=request.getParameter("price");
String plot=request.getParameter("plot");
String runtime = request.getParameter("runtime"); 
String age_rating = request.getParameter("age_rating"); 
String image=request.getParameter("image");
String trailer = request.getParameter("trailer");
 


Statement st=conn.createStatement();
st.executeUpdate("insert into stock(title,price,plot,runtime, age_rating, image, trailer)values('" + title + "','" + price + "','" + plot + "','" + runtime + "','" + age_rating + "','" + image + "','" + trailer + "')");
out.println("Data is successfully inserted!");
String redirectURL = "view_employees.jsp";
response.sendRedirect(redirectURL);


%>