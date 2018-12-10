
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@include file="includes/connect.jsp" %>
<%@page import="java.sql.PreparedStatement"%>

<%    String account_no = request.getParameter("account_no");

    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String phone = request.getParameter("phone");
    String dob = request.getParameter("dob");

    PreparedStatement ps = null;
    //Connection conn = null;

    String query = "Update customers set name=?,address=?,email=?,password=?,phone=?, date_of_birth=? where account_no =?";

    ps = conn.prepareStatement(query);
    ps.setString(1, name);
    ps.setString(2, address);
    ps.setString(3, email);
    ps.setString(4, password);
    ps.setString(5, phone);
    ps.setString(6, dob);
    ps.setString(7, account_no);
    int i = ps.executeUpdate();

    if (i > 0)
    {
        out.print("Record Updated Successfully");
        String redirectURL = "view_customers.jsp";
        response.sendRedirect(redirectURL);
    } else
    {
        out.print("There is a problem in updating Record.");
    }

    /*
    } catch (Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
     */

%>
