    
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
                        font-size: 25px;
                        width: 50%;
                    }

                    .tablink:hover 
                    {
                        background-color: #777;

                    }
                </style>

                <div id="Rent" class="tabcontent">
                    <form>
                        <h2>Add Stock</h2><br>
                        <label>Title</label>
                        <input><br>
                        <label>Price</label>
                        <input><br>
                        <label>Plot</label> <!-- Hidden/reserve -->
                        <input type="text"><br>
                        <label>Image</label> <!-- Hidden/reserve -->
                        <input><br>
                        <label>URL</label> <!-- Hidden/reserve -->
                        <input><br>
                        <label>Age Rating</label> <!-- Hidden/reserve -->
                        <input><br>
                        <button class="btn1" type="submit" style="margin-right: 9%;font-size: 20px;">SUBMIT</button>
                    </form>

                </div>



                <div id="Buy" class="tabcontent">
                    <form>
                        <h2>Order Stock</h2><br>
                        <label>Movie</label>
                        <input><br>
                        <label>Quantity</label> <!-- Hidden/reserve -->
                        <input><br>
                        <label>&nbsp;</label>
                         <button class="btn1" type="submit"style="margin-right: 9%;font-size: 20px;">SUBMIT</button>

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
