    
<%@include file="includes/nav_bar.jsp" %>
<body>

    <main>


        <div id="wrapper">
            <!-- Page Content -->
            <section class="imageBox">
                <img src="images/eye2.png" alt="logo" width="300" height="250">
                <br>

            </section>
            <style>
                form label{width: 250px;  font-size: 20px;}
                form input{width: 400px;}
            </style>
            <section class="content"style="width: 65%">
                <button class="tablink" onclick="openPage('Rent', this, '#393E46')" id="defaultOpen">Add</button>

                <button class="tablink" onclick="openPage('Buy', this, '#00ADB5')">Order</button>
                <style>
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
                        width: 50%;
                    }

                    .tablink:hover 
                    {
                        background-color: #777;

                    }
                </style>

                <div id="Rent" class="tabcontent">
                    <form action="stockInsert.jsp">
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
                        <div> <label>Year</label>
                            <input name="year" placeholder="Please enter year of release"></div>
                        <div> <label>Format</label>
                            <input name="format" placeholder="Please enter movie format"></div>
                        <div>  <label>Trailer URL</label> <!-- Hidden/reserve -->
                            <input name="trailer" placeholder="Please enter movie trailer URL"></div>
                        <div><label>Movie Poster</label>
                            <input type="file"  maxlength='50' name="image" />
                        </div>
                        <div><label>&nbsp;</label>
                            <input type="submit" style="color:green;font-weight: bold;font-size: 38px;" value="Add Stock"></div>
                    </form>

                </div>



                <div id="Buy" class="tabcontent">
                    <form>
                        <h2>Order Stock</h2><br>
                        <label>Movie</label>
                        <input><br>
                        <label>Quantity</label> <!-- Hidden/reserve -->
                        <input><br>
                        <div><label>&nbsp;</label>
                            <input type="submit" style="color:green;font-weight: bold;font-size: 38px;"value="Add Order"></div>

                    </form>

                </div>


            </section>






        </div>

        <button style="font-size: 20px;margin-right: 7%; margin-top: 3%;" class="btn4" onclick="location.href = 'view_stock.jsp'">View all Stock</a></button>


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
