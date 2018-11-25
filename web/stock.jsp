    
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
                    <form>
                        <div> <h2>Add Stock</h2></div>
                        <div> <label>Title</label>
                            <input></div>
                        <div> <label>Price</label>
                            <input></div>
                        <div> <label>Plot</label> <!-- Hidden/reserve -->
                            <input type="text"></div>
                        <div> <label>Runtime</label>
                            <input></div>
                        <div> <label>Age Rating</label> <!-- Hidden/reserve -->
                            <input></div>
                        <div><label>Movie Poster</label>
                            <input type="file" style="width:400px;margin-left: 43%;font-size: 20px;" maxlength='50' name="image" />
                        </div>
                        <div>  <label>Trailer URL</label> <!-- Hidden/reserve -->
                            <input></div>
                        <div><label>&nbsp;</label>
                            <input type="submit" style="color:green;" value="Add Stock"></div>
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
                            <input type="submit" value="Add Order"></div>

                    </form>

                </div>


            </section>






        </div>

        <button style="font-size: 20px; float:left;" class="btn4" onclick="location.href = 'view_stock.jsp'">View all Stock</a></button>


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
