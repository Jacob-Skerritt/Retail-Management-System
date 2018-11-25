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
            <button class="tablink" onclick="openPage('Buy', this, '#00ADB5')" id="defaultOpen">Update Stock</button>

            <div id="Buy" class="tabcontent">
                <form action="updateStock.jsp">
                        <div> <h2>Add Stock</h2></div>
                        <div> <label>Title</label>
                            <input name="title" placeholder="Please enter movie title"></div>
                        <div> <label>Price</label>
                            <input name="price" placeholder="Please enter movie price"></div>
                        <div> <label>Plot</label>
                            <input name="plot" placeholder="Please enter movie plot"></div>
                        <div> <label>Runtime</label>
                            <input name="runtime" placeholder="Please enter movie runtime"></div>
                        <div> <label>Age Rating</label>
                            <input name="age_rating" placeholder="Please enter movie age rating"></div>
                        <div><label>Movie Poster</label>
                            <input type="file" style="width:400px;margin-left: 43%;font-size: 20px;" maxlength='50' name="image" />
                        </div>
                        <div>  <label>Trailer URL</label> <!-- Hidden/reserve -->
                            <input name="trailer" placeholder="Please enter movie trailer URL"></div>
                        <div><label>&nbsp;</label>
                            <input type="submit" style="color:green;" value="Add Stock"></div>
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
