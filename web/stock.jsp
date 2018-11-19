    
<%@include file="includes/nav_bar.jsp" %>
<body>

        <main>

      
            
            
            <div id="wrapper">
                    <!-- Page Content -->
                    <section class="imageBox">
                        <img src="images/eye2.png" alt="logo" width="400" height="350">
                        <br>
                        
                    </section>
                    

                    <section class="content2">
                    

 <form>
                            <h2>Order Stock</h2><br>
                            <label>Movie</label>
                            <input><br>
                            <label>Quantity</label> <!-- Hidden/reserve -->
                            <input><br>
                            <label>&nbsp;</label>
                        <input type="submit" value="SUBMIT ORDER">
                            
                        </form></section>

                       
</div>
            
            <button style="margin-right: 8.8%; width: 500px;" class="btn4" type="submit"><a href="view_stock.jsp">View all Stock</a></button>
<!--            <button class="btn4" type="submit">Submit Order</button><br>-->
            
        </main>
                        
        <!-- Footer -->
        <footer>
             <%@include file="includes/footer.jsp" %>
        </footer>
        
    </body>
</html>
