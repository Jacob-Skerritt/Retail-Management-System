
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



Statement st=conn.createStatement();

st.executeUpdate("insert into customers(name,address,gender,email,password,phone)values('"+name+"','"+address+"','"+gender+"','"+email+"','"+password+"','"+phone+"')");
out.println("Data is successfully inserted!");


%>