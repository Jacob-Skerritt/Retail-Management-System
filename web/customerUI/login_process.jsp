<%@include file="../includes/connect.jsp" %>
<%@page import="java.sql.*,java.util.*"%>
<%    ResultSet resultSet = null;
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    Statement st = conn.createStatement();
    resultSet = st.executeQuery("SELECT * FROM customers WHERE email ="+email);
            

    while(resultSet.next() == true){
       
            String resultPassword = resultSet.getString("password");
    if (resultPassword.equals(password)) {
        
        String redirectURL = "loggedIn_index.jsp";
        response.sendRedirect(redirectURL);
    }else{
        
        String redirectURL = "index.jsp";
        response.sendRedirect(redirectURL);}
    }

%>