<%-- 
    Document   : update_employee
    Created on : 26-Nov-2018, 04:08:58
    Author     : sitsha
--%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@include file="includes/connect.jsp" %>
<%@page import="java.sql.PreparedStatement"%>

<%    String employee_id = request.getParameter("employee_id");

    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String password = request.getParameter("password");
    String admin_privilege = request.getParameter("admin_privilege");
    String salary = request.getParameter("salary");
    String ppsn = request.getParameter("ppsn");

    PreparedStatement ps = null;
    //Connection conn = null;

    String query = "Update employees set name=?,address=?,password=?,admin_privilege=?,salary=?, ppsn=? where id =?";

    ps = conn.prepareStatement(query);
    ps.setString(1, name);
    ps.setString(2, address);
    ps.setString(3, password);
    ps.setString(4, admin_privilege);
    ps.setString(5, salary);
    ps.setString(6, ppsn);
    ps.setString(7, employee_id);
    int i = ps.executeUpdate();

    if (i > 0)
    {
        out.print("Record Updated Successfully");
        String redirectURL = "view_employees.jsp";
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
