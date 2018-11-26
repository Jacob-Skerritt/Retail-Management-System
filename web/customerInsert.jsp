
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@include file="includes/connect.jsp" %>
<%@page import="java.sql.*,java.util.*"%>


<%


String name=request.getParameter("name");
String address=request.getParameter("address");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String dob = request.getParameter("dob");
String password = request.getParameter("password");
 


Statement st=conn.createStatement();
 st.executeUpdate("insert into customers(name,address,phone,email, date_of_birth, password)values('" + name + "','" + address + "','" + phone + "','" + email + "','" + dob + "','" + password + "')");
out.println("Data is successfully inserted!");
String redirectURL = "view_customers.jsp";
    response.sendRedirect(redirectURL);


%>