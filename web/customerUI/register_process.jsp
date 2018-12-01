<%@page import="java.net.URLEncoder"%>
<%@include file="../includes/connect.jsp" %>
<%@page import="java.sql.*,java.util.*"%>
<%    ResultSet resultSet = null;
    String[] arr = new String[9];
    String[] arrNames = new String[]{"Name", "Address", "Email", "Date of Birth", "Extension", "Phone Number", "First Password", "Second Password"};
    boolean determine = false;
    String message = "";
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String extension = request.getParameter("extension");
    String phone = request.getParameter("phone");
    String password = request.getParameter("password");
    String repassword = request.getParameter("re-password");
    String phoneNumber = extension + "-" + phone;

    arr[0] = name;
    arr[1] = address;
    arr[2] = email;
    arr[3] = dob;
    arr[4] = extension;
    arr[5] = phone;
    arr[6] = password;
    arr[7] = repassword;
    arr[8] = phone;

    for (int i = 0; i < arr.length; i++) {
        if (arr[i] == null || arr[i].isEmpty()) {
            determine = true;
            message = arrNames[i];
            break;
        }

    }
    if (determine == true) {
        String redirectURL = "register.jsp?message=";
        response.sendRedirect(redirectURL + URLEncoder.encode(message + " is Invalid!", "UTF-8"));

    } else if (determine == false) {
        if (!password.equals(repassword)) {
            String redirectURL = "register.jsp?message=";
            response.sendRedirect(redirectURL + URLEncoder.encode("Passwords do not match!", "UTF-8"));
        } else {

            Statement st = conn.createStatement();
            resultSet = st.executeQuery("SELECT * FROM customers WHERE email = '" + email + "'");

            if (resultSet.isBeforeFirst()) {
                String redirectURL = "register.jsp?message=";
                response.sendRedirect(redirectURL + URLEncoder.encode("User with this email already exists", "UTF-8"));
            } else {

                st = conn.createStatement();
                st.executeUpdate("insert into customers(name,address,email,password,phone, date_of_birth)values('" + name + "','" + address + "','" + email + "','" + password + "','" + phoneNumber + "','" + dob + "')");
                String redirectURL = "index.jsp";
                response.sendRedirect(redirectURL);
            }
        }
    }

%>