<%@include file="../includes/connect.jsp" %>
<%@page import="java.sql.*,java.util.*"%>
<%    ResultSet resultSet = null;
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    Statement st = conn.createStatement();
    resultSet = st.executeQuery("SELECT * FROM customers WHERE email ='" + email + "'");
    String sessionEmail ="", sessionPassword ="";
    int sessionId;
    



    if(resultSet.isBeforeFirst())
    {
     resultSet.next();
     sessionPassword= resultSet.getString("password");
     sessionEmail= resultSet.getString("email");
     sessionId= resultSet.getInt("account_no");
     
        if (sessionPassword.equals(password) && sessionEmail.equals(email)) {
        session.setAttribute("user_email", sessionEmail);
        session.setAttribute("id", sessionId);
        session.setMaxInactiveInterval(1500);
        String redirectURL = "loggedIn_index.jsp";
        response.sendRedirect(redirectURL);}
        else{String redirectURL = "login.jsp";
        response.sendRedirect(redirectURL);}
    }
    else{String redirectURL = "login.jsp";
    session.setAttribute("errorMessage", "Password or Username Incorrect");
        response.sendRedirect(redirectURL);}
    

%>