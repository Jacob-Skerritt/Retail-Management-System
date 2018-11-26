<%@include file="includes/connect.jsp" %>
<%@page import="java.sql.*,java.util.*"%>
<%    String dvdId = request.getParameter("dvd_id");
    String accountNo = request.getParameter("account_no");
    String rentalPeriod = request.getParameter("rental_period");
    double price = Double.parseDouble(request.getParameter("price"));

    Statement st = conn.createStatement();
    st.executeUpdate("insert into rentals (return_date,state,employee_id,customer_id,payment_method, vat)values('" + rentalPeriod + "','" + "Out" + "','" + session.getAttribute("id") + "','" + accountNo + "','" + 1 + "','" + 1 + "')");
    
    ResultSet resultSet = st.executeQuery("SELECT id FROM rentals ORDER BY date_of_rental  DESC limit 1"); 
    resultSet.next();
    st.executeUpdate("insert into rentals_dvds (rental_id,dvd_id,quantity)values('" + resultSet.getString("id") + "','" + dvdId + "','"  + 1 + "')");
            String redirectURL = "emp_index.jsp";
        response.sendRedirect(redirectURL);
%>
