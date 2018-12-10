
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@include file="includes/connect.jsp" %>
<%@page import="java.sql.*,java.util.*"%>


<%       String id = request.getParameter("account_no");
    Statement st = conn.createStatement();
    ResultSet resultSet;
    resultSet = st.executeQuery("SELECT ( SELECT COUNT(*) FROM rentals where customer_id ='" + id + "') AS rentalsCount,( SELECT COUNT(*) FROM purchases where customer_id ='" + id + "') AS purchasesCount, ( SELECT COUNT(*) FROM reservations where account_no ='" + id + "' ) AS reservationsCount");

    resultSet.next();

    if (resultSet.getInt("rentalsCount") > 0 || resultSet.getInt("purchasesCount") > 0 || resultSet.getInt("reservationsCount") > 0) {

        String redirectURL = "view_customers.jsp?message=Deletion Aborted, Customer Records Exist!";
                response.sendRedirect(redirectURL);
        
    } else {
        try {
            int i = st.executeUpdate("DELETE FROM customers WHERE account_no=" + id);
            if (i > 0) {
                out.println("Data Deleted Successfully!");
                String redirectURL = "view_customers.jsp";
                response.sendRedirect(redirectURL);
            } else {
                out.print("There is a problem in deleting Record.");
            }
        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }
    }
%>