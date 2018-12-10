<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includes/nav_bar.jsp" %>
<%@include file="includes/connect.jsp" %>
<!DOCTYPE html>
<body>

    <!-- Page Content -->
    <div class="imageBox">
        <img src="images/eye2.png" alt="logo" width="300" height="250">

    </div>
    <div id="wrapper">
        <style>
            form label{width: 250px; font-size: 20px;}
            form input{width: 400px;}
            .tablink
            {
                background-color: #555;
                color: white;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 14px 16px;
                font-size: 35px;
                width: 100%;
            }

            .tablink:hover 
            {
                background-color: #777;

            }
        </style>
        <section class="content" style="width: 65%;">
            <button class="tablink" onclick="openPage('Buy', this, '#00ADB5')" id="defaultOpen">Update Customer</button>
            <%                         
                String account_no = request.getParameter("account_no");
                Statement st = conn.createStatement();
                
                ResultSet resultSet = st.executeQuery(
                        "SELECT * FROM customers WHERE account_no = " + account_no);

                //puts cursor in first position
                resultSet.first();

                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                String phone = resultSet.getString("phone");
                String dob = resultSet.getString("date_of_birth");

            %>
            <div id="Buy" class="tabcontent">
                <form action="updateCustomer.jsp" method="post">
                    <input type="hidden" name="account_no" value="<%out.write(account_no);%>"<br>
                    
                    <div> <label>Name</label>
                        <input name="name" value="<%out.write(name); %>"> </div>
                    <div> <label>Address</label>
                        <input name="address" value="<%out.write(address);%>"></div>
                    <div> <label>Telephone</label>
                        <input name="phone" value="<%out.write(phone);%>"></div>
                    <div><label>Email</label>
                        <input name="email" value="<%out.write(email);%>"></div>
                        <div><label>Password</label>
                        <input name="password" value="<%out.write(password);%>"></div>
                    <div><label>Date of Birth</label>
                        <input name="dob" value="<%out.write(dob);%>"><br></div>
                    <div><label>&nbsp;</label>
                        <input type="submit" style="color:green;font-weight: bold;font-size: 38px;" value="UPDATE CUSTOMER"></div>

                    <br>
                </form>

            </div>

        </section>


    </div>



    <button style="font-size: 20px;margin-right: 7%; margin-top: 3%;" class="btn4" onclick="location.href = 'view_customers.jsp'">View Customers</a></button> 


<script>
    function openPage(pageName, elmnt, color) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablink");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].style.backgroundColor = "";
        }
        document.getElementById(pageName).style.display = "block";
        elmnt.style.backgroundColor = color;

    }
// Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();
</script>
</body>   





</html>
