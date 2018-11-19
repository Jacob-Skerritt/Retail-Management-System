
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@include file="includes/connect.jsp" %>
<%@page import="java.sql.*,java.util.*"%>


<%


String name=request.getParameter("name");
String address=request.getParameter("address");
String gender=request.getParameter("gender");
String email=request.getParameter("email");
String password=request.getParameter("password");
String phone=request.getParameter("phone");
String startDateStr = request.getParameter("dob");
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//surround below line with try catch block as below code throws checked exception
java.util.Date dob = sdf.parse(startDateStr);  


Statement st=conn.createStatement();
st.executeUpdate("insert into customers(name,address,gender,email,password,phone, date_of_birth)values('"+name+"','"+address+"','"+gender+"','"+email+"','"+password+"','"+phone+"','"+sdf.format(dob)+"')");
out.println("Data is successfully inserted!");
String redirectURL = "index.jsp";
    response.sendRedirect(redirectURL);


%>