<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includes/nav_bar.jsp" %>
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
            <button class="tablink" onclick="openPage('Rent', this, '#393E46')" id="defaultOpen">Add Customer</button>

            <div id="Rent" class="tabcontent">
                <form>

                    <div> <label>Name</label>
                        <input> </div>
                    <div> <label>Address</label>
                        <input></div>
                    <div> <label>Telephone</label>
                        <input></div>
                    <div><label>Email</label>
                        <input></div>
                    <div><label>Date of Birth</label>
                        <input><br></div>
                    <div><label>&nbsp;</label>
                    <input type="submit" value="ADD CUSTOMER"></div>

                    <br>
                </form>

            </div>

        </section>


    </div>



    <button style="font-size: 20px;margin-right: 7%; margin-top: 3%;" class="btn4" onclick="location.href = 'view_customers.jsp'">View Customers</a></button> 
<!--                        <button class="btn4">Add Customer</button>-->


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
