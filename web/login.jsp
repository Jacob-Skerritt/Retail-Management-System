<%@include file="includes/connect.jsp" %>
<%@page import="java.sql.*,java.util.*"%>
<%    ResultSet resultSet = null;
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    Statement st = conn.createStatement();
    resultSet = st.executeQuery("SELECT * FROM employees WHERE id ="+id);
    String sessionPassword ="", sessionName ="";
    int sessionId = -1;

    if(resultSet.isBeforeFirst())
    {
     resultSet.next();
     sessionPassword= resultSet.getString("password");
     sessionId= resultSet.getInt("id");
     sessionName = resultSet.getString("name");
    int resultAdmin = resultSet.getInt("admin_privilege");
        if (sessionPassword.equals(password) && resultAdmin > 0) {
        session.setAttribute("admin_level", resultAdmin);
        session.setMaxInactiveInterval(1500);
        String redirectURL = "emp_index.jsp";
        response.sendRedirect(redirectURL);}
        else{String redirectURL = "index.jsp";
        response.sendRedirect(redirectURL);}
    }
    else{String redirectURL = "index.jsp";
        response.sendRedirect(redirectURL);}
    

%>