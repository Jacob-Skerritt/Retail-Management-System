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
            <button class="tablink" onclick="openPage('Buy', this, '#00ADB5')" id="defaultOpen">Update Stock</button>
            <%
                String id = request.getParameter("stock_id");
                Statement st = conn.createStatement();
                
                ResultSet resultSet = st.executeQuery("select * from dvds where id = "+ id);
                
                //puts cursor in first position
                resultSet.first();
                
                String title = resultSet.getString("title");                
                String price = resultSet.getString("price");
                String plot = resultSet.getString("plot");
                String runtime = resultSet.getString("runtime");
                String age_rating = resultSet.getString("age_rating");
                String year = resultSet.getString("year");
                String format = resultSet.getString("format");
                String trailer = resultSet.getString("trailer");
                
                
            %>
            <div id="Buy" class="tabcontent">
                <form action="updateStock.jsp" method="post">
                        <input type="hidden" name="id" value="<%out.write(id);%>"<br>
                        
                        <div> <label>Title</label>
                            <input name="title" value="<%out.write(title);%>"></div>
                        <div> <label>Price</label>
                            <input name="price" value="<%out.write(price);%>"></div>
                        <div> <label>Plot</label>
                            <input name="plot" value="<%out.write(plot);%>"></div>
                        <div> <label>Runtime</label>
                            <input name="runtime" value="<%out.write(runtime);%>"></div>
                        <div> <label>Age Rating</label>
                            <input name="age_rating" value="<%out.write(age_rating);%>"></div>
                        <div> <label>Year</label>
                            <input name="year" value="<%out.write(year);%>"></div>
                        <div> <label>Format</label>
                            <input name="format" value="<%out.write(format);%>"></div>
                        <div>  <label>Trailer URL</label> <!-- Hidden/reserve -->
                            <input name="trailer" value="<%out.write(trailer);%>"></div>

                        <div><label>&nbsp;</label>
                            <input type="submit" style="color:green;font-weight: bold;font-size: 38px;" value="UPDATE STOCK"></div>
                    </form>

            </div>

        </section>


    </div>



    <button style="font-size: 20px;margin-right: 7%; margin-top: 3%;" class="btn4" onclick="location.href = 'view_stock.jsp'">View Stock</button> 


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
