<%@page import="java.net.URLEncoder"%>
<%@include file="includes/connect.jsp" %>
<%@page import="java.sql.*,java.util.*"%>
<%    ResultSet resultSet = null;
    int dvdId = Integer.parseInt(request.getParameter("dvd_id"));
    int reservationId = Integer.parseInt(request.getParameter("reservation_id"));
    Statement st = conn.createStatement();
    resultSet = st.executeQuery("SELECT id, account_no, type FROM reservations WHERE id ='" + reservationId + "'");
    int accountNo;

    if (resultSet.isBeforeFirst()) {
        resultSet.next();
        accountNo = resultSet.getInt("account_no");
        st.executeUpdate("DElETE FROM reservations WHERE id = '" + reservationId + "'");
        String redirectURL = "emp_index.jsp?account_no=" + accountNo + "&dvd_id=" +dvdId;
        response.sendRedirect(redirectURL);

    } else {

    }

%>