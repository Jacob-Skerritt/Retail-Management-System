<%@include file="includes/connect.jsp" %>
<%@page import="java.sql.*,java.util.*"%>
<%    ResultSet resultSet = null;
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    Statement st = conn.createStatement();
    resultSet = st.executeQuery("SELECT id, admin_privilege, password  FROM employees WHERE id ="+id);
    

    while(resultSet.next() == true){
            String resultPassword = resultSet.getString("password");
    int resultAdmin = resultSet.getInt("admin_privilege");
    if (resultPassword.equals(password) && resultAdmin > 0) {
        session.setAttribute("admin_level", resultAdmin);
        session.setMaxInactiveInterval(15);
        String redirectURL = "emp_index.jsp";
        response.sendRedirect(redirectURL);
    }else{String redirectURL = "index.jsp";
        response.sendRedirect(redirectURL);}
    }

%>