
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@include file="includes/connect.jsp" %>
<%@page import="java.sql.*,java.util.*"%>


<%


String name=request.getParameter("name");
String address=request.getParameter("address");
String password=request.getParameter("password");
String admin_privilege=request.getParameter("admin_privilege");
String salary = request.getParameter("salary");
String ppsn = request.getParameter("ppsn");  


Statement st=conn.createStatement();
st.executeUpdate("insert into employees(name,address,password,admin_privilege, salary, ppsn)values('" + name + "','" + address + "','" + password + "','" + admin_privilege + "','" + salary + "','" + ppsn + "')");
out.println("Data is successfully inserted!");
String redirectURL = "view_employees.jsp";
response.sendRedirect(redirectURL);


%>