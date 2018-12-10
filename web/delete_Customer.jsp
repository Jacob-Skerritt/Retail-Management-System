
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@include file="includes/connect.jsp" %>
<%@page import="java.sql.*,java.util.*"%>


<%   
    String id = request.getParameter("account_no");
    try
    {
        Statement st = conn.createStatement();
        int i = st.executeUpdate("DELETE FROM customers WHERE account_no=" + id);
        if (i > 0)
        {
            out.println("Data Deleted Successfully!");
            String redirectURL = "view_customers.jsp";
            response.sendRedirect(redirectURL);
        } else
        {
            out.print("There is a problem in deleting Record.");
        }
    } catch (Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
%>