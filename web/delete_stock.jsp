<%-- 
    Document   : delete_stock
    Created on : 26-Nov-2018, 01:03:58
    Author     : sitsh
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@include file="includes/connect.jsp" %>
<%@page import="java.sql.*,java.util.*"%>


<%   
    String id = request.getParameter("stock_id");
    try
    {
        Statement st = conn.createStatement();
        int i = st.executeUpdate("DELETE FROM dvds WHERE id=" + id);
        if (i > 0)
        {
            out.println("Data Deleted Successfully!");
            String redirectURL = "view_stock.jsp";
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
