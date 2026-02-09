<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Monginis Store Locator</title>

<link rel="stylesheet"
 href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
body{
    margin:0;
    font-family:'Segoe UI',sans-serif;
    background:#f2f2f2;
    color:#333;
}

/* LOGO */
.logo{
    text-align:center;
    padding:20px;
}
.logo img{
    width:160px;
}

/* TOP SECTION */
.top-section{
    display:flex;
    justify-content:space-between;
    padding:40px 80px;
    background:#f6f6f6;
}

/* LEFT FORM */
.locator-box{
    width:38%;
    background:#fff;
    padding:25px;
    border-radius:10px;
    box-shadow:0 8px 20px rgba(0,0,0,0.12);
}
.locator-box h2{
    font-size:26px;
    letter-spacing:3px;
}
.locator-box hr{
    width:200px;
    margin-left:0;
    border:1px solid #000;
}
.locator-box label{
    font-size:18px;
    display:block;
    margin-top:14px;
    font-weight:600;
}
.locator-box select,
.locator-box input{
    width:100%;
    padding:8px;
    margin-top:5px;
    font-size:18px;
    border:1px solid #ccc;
    border-radius:4px;
}
.locator-box input[readonly]{
    background:#eee;
}

/* BUTTON */
.search-btn{
    background:#e6007e;
    color:#fff;
    border:none;
    padding:10px;
    margin-top:20px;
    cursor:pointer;
    width:100%;
    border-radius:4px;
    font-weight:bold;
}

/* RIGHT IMAGE */
.banner{
    width:55%;
}
.banner img{
    width:100%;
    height:350px;
    border-radius:8px;
}

/* STORES */
.stores{
    padding:50px 80px;
}
.stores h2{
    text-align:center;
    letter-spacing:3px;
    margin-bottom:40px;
}

/* GRID */
.store-grid{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:25px;
}

/* CARD */
.store-card{
    background:#fff;
    border:1px solid #000;
    border-radius:10px;
    padding:14px;
    box-shadow:0 6px 18px rgba(0,0,0,0.08);
}
.store-card h4{
    font-size:24px;
    margin-bottom:10px;
}

/* INFO */
.info{
    display:flex;
    margin-bottom:7px;
}
.icon{
    width:24px;
    height:24px;
    background:#ffe3f2;
    color:#e6007e;
    border-radius:50%;
    display:flex;
    align-items:center;
    justify-content:center;
    margin-right:8px;
}
.text{
    font-size:20px;
    line-height:1.4;
}

/* CARD FOOTER */
.store-footer{
    display:flex;
    margin-top:10px;
    background:#e91e63;
}
.store-footer a{
    flex:1;
    text-align:center;
    padding:10px 0;
    color:#fff;
    text-decoration:none;
    font-size:18px;
    font-weight:bold;
}

/* FOOTER */
.footer{
    background:#222;
    color:#fff;
    padding:30px 60px 15px;
}
.footer-top{
    font-size:20px;
    margin-bottom:18px;
}
.footer-links{
    font-size:18px;
}
.footer-links a{
    color:#fff;
    text-decoration:none;
}
.footer-bottom{
    border-top:1px solid #444;
    margin-top:18px;
    padding-top:12px;
    display:flex;
    justify-content:space-between;
}
.social-icons a{
    color:#fff;
    margin-left:15px;
    font-size:22px;
}
.search-box{
    display: flex;
    gap: 10px;
    margin-bottom: 15px;
}

.search-box input{
    padding: 10px 14px;
    width: 220px;
    border: 2px solid #d35400;
    border-radius: 25px;
    outline: none;
    font-size: 14px;
}

.search-box input:focus{
    border-color: #e67e22;
}

.search-box button{
    padding: 10px 22px;
    border: none;
    border-radius: 25px;
    background: linear-gradient(135deg, #ff7675, #e84393);
    color: white;
    font-size: 14px;
    cursor: pointer;
    font-weight: bold;
    transition: 0.3s;
}

.search-box button:hover{
    transform: scale(1.05);
    box-shadow: 0 4px 10px rgba(0,0,0,0.2);
}
</style>
</head>

<body>

<!-- LOGO -->
<div class="logo">
    <img src="images/logo.jpg">
</div>


<%@ page import="com.monginis.dao.StoreVisitDAO" %>

<%
String state = request.getParameter("state");
String city = request.getParameter("city");
String area = request.getParameter("area");
String shopname = request.getParameter("shopname");
String cakename = request.getParameter("cakename");
String priceStr = request.getParameter("price");

if (state != null && !state.isEmpty()
        && cakename != null && !cakename.isEmpty()
        && priceStr != null && !priceStr.isEmpty()) {

    double price = 0.0;

    try {
        price = Double.parseDouble(priceStr);
    } catch (NumberFormatException e) {
        out.println("<p style='color:red'>Invalid price format</p>");
        return;
    }

    boolean saved = StoreVisitDAO.saveVisit(
            state,
            city,
            area,
            shopname,
            cakename,
            price
    );

    if (saved) {
        out.println("<p style='color:green;font-weight:bold'>Data saved successfully!</p>");
    } else {
        out.println("<p style='color:red;font-weight:bold'>Failed to save data!</p>");
    }

} else {
    out.println("<p style='color:red'>Please select cake and price properly</p>");
}
%>

 <!-- TOP SECTION -->
<div class="top-section">
    <!-- LEFT FORM -->
   <div class="locator-box">
    <h2>MONGINIS</h2>
    <hr>
    <p style="font-size:13px;">Locate the nearest store</p>

    <form method="post">

        <!-- STATE -->
        <label>State</label>
        <select name="state">
            <option>All</option>
            <option>Maharashtra</option>
            <option>Delhi</option>
            <option>Gujarat</option>
            <option>Rajasthan</option>
            <option>Madhya Pradesh</option>
            <option>Uttar Pradesh</option>
            <option>Haryana</option>
            <option>Punjab</option>
            <option>West Bengal</option>
            <option>Bihar</option>
            <option>Jharkhand</option>
            <option>Chhattisgarh</option>
            <option>Odisha</option>
            <option>Karnataka</option>
            <option>Tamil Nadu</option>
            <option>Telangana</option>
            <option>Andhra Pradesh</option>
            <option>Kerala</option>
            <option>Goa</option>
        </select>

        <!-- CITY -->
        <label>City</label>
        <select name="city">
            <option>All</option>
            <option>Mumbai</option>
            <option>Pune</option>
            <option>Nagpur</option>
            <option>Nashik</option>
            <option>Delhi</option>
            <option>Noida</option>
            <option>Gurgaon</option>
            <option>Faridabad</option>
            <option>Ahmedabad</option>
            <option>Surat</option>
            <option>Vadodara</option>
            <option>Jaipur</option>
            <option>Udaipur</option>
            <option>Indore</option>
            <option>Bhopal</option>
            <option>Bengaluru</option>
            <option>Chennai</option>
            <option>Hyderabad</option>
            <option>Kochi</option>
            <option>Kolkata</option>
        </select>

        <!-- AREA -->
        <label>Area</label>
        <select name="area">
            <option>All</option>
            <option>Andheri</option>
            <option>Bandra</option>
            <option>Malad</option>
            <option>Goregaon</option>
            <option>Karol Bagh</option>
            <option>Connaught Place</option>
            <option>Lajpat Nagar</option>
            <option>Dwarka</option>
            <option>Viman Nagar</option>
            <option>Hinjewadi</option>
            <option>Kothrud</option>
            <option>Navrangpura</option>
            <option>Maninagar</option>
            <option>Satellite</option>
            <option>MG Road</option>
            <option>Indiranagar</option>
            <option>Whitefield</option>
            <option>T Nagar</option>
            <option>Velachery</option>
            <option>Salt Lake</option>
        </select>

        <!-- SHOP NAME -->
        <label>Shop Name</label>
        <select name="shopname">
            <option>Monginis Cake Shop</option>
            <option>Theobroma</option>
            <option>Just Bake</option>
            <option>Karachi Bakery</option>
            <option>Mio Amore</option>
            <option>Merwans</option>
            <option>Birdys</option>
            <option>Sweet Truth</option>
            <option>WarmOven</option>
            <option>CakeZone</option>
            <option>Bakingo</option>
            <option>Flurys</option>
            <option>Winni Cakes</option>
            <option>Brown Bear Bakers</option>
            <option>Love & Cheesecake</option>
            <option>Belgian Waffle Co</option>
            <option>La Pino'z</option>
            <option>Firangi Bake</option>
            <option>Cake Square</option>
            <option>Nothing Bundt Cakes</option>
        </select>

        <!-- Cake Name -->
      <!-- Cake Search -->
    

    <!-- Cake Name -->
    <label>Cake Name</label>
<select id="cakename" name="cakename" onchange="setPrice()">
    <option value="">Select Cake</option>

    <option value="Vanilla Cake" data-price="450">Vanilla Cake</option>
    <option value="Strawberry Cake" data-price="500">Strawberry Cake</option>
    <option value="Chocolate Truffle Cake" data-price="650">Chocolate Truffle Cake</option>
    <option value="Red Velvet Cake" data-price="700">Red Velvet Cake</option>
    <option value="Chocolate Walnut Cake" data-price="720">Chocolate Walnut Cake</option>
    <option value="KitKat Cake" data-price="820">KitKat Cake</option>
</select>

<label>Price</label>
<input type="text" id="price" name="price" readonly>
    <script>
function setPrice() {
    var select = document.getElementById("cakename");
    var price = select.options[select.selectedIndex].getAttribute("data-price");

    document.getElementById("price").value = price;
}
</script>
    
<button type="submit" class="search-btn">SAVE VISIT</button>

<script>
function setPrice() {
    var cakeSelect = document.getElementById("cakename");
    var priceInput = document.getElementById("price");

    priceInput.value = cakeSelect.value;
}
</script>
  

   </form>
</div>
   

    <!-- RIGHT IMAGE -->
    <div class="banner">
        <img src="images/shopp1.jpg"><br><br>
         <img src="images/banner12.jpg">
    </div>

</div>

<div class="stores">
<h2>MONGINIS STORES</h2>

<div class="store-grid">

    <!-- CARD 1 -->
    <div class="store-card">
        <h4>Monginis Cake Shop</h4>

        <div class="info">
            <div class="icon">🏬</div>
            <div class="text">Chunnilal Hajarimal Caterers</div>
        </div>

        <div class="info">
            <div class="icon">📍</div>
            <div class="text">
                No 22, Block C, Middle Circle<br>
                Connaught Place, New Delhi - 110001
            </div>
        </div>

        <div class="info">
            <div class="icon">📞</div>
            <div class="text">+91 9811466626</div>
        </div>

        <div class="info">
            <div class="icon">⏰</div>
            <div class="text">Open until 09:30 PM</div>
        </div>
        
         <div class="store-footer">
            <a href="#">📍 DIRECTIONS</a>
            <a href="#">🌐 WEBSITE</a>
        </div>
    </div>

    <!-- CARD 2 -->
    <div class="store-card">
        <h4>Monginis Cake Shop</h4>

        <div class="info">
            <div class="icon">🏬</div>
            <div class="text">Panna Foods (Karol Bagh)</div>
        </div>

        <div class="info">
            <div class="icon">📍</div>
            <div class="text">
                Shop No 2/4973, Shiv Nagar<br>
                Karol Bagh, New Delhi - 110005
            </div>
        </div>

        <div class="info">
            <div class="icon">📞</div>
            <div class="text">+91 9953039216</div>
        </div>

        <div class="info">
            <div class="icon">⏰</div>
            <div class="text">Open until 10:30 PM</div>
        </div>
         <div class="store-footer">
            <a href="#">📍 DIRECTIONS</a>
            <a href="#">🌐 WEBSITE</a>
        </div>
    </div>

    <!-- CARD 3 -->
    <div class="store-card">
        <h4>Monginis Cake Shop</h4>

        <div class="info">
            <div class="icon">🏬</div>
            <div class="text">Luthra Foods</div>
        </div>

        <div class="info">
            <div class="icon">📍</div>
            <div class="text">
                25B/8, New Rohtak Road<br>
                Karol Bagh, New Delhi - 110005
            </div>
        </div>

        <div class="info">
            <div class="icon">📞</div>
            <div class="text">+91 9926824637</div>
        </div>

        <div class="info">
            <div class="icon">⏰</div>
            <div class="text">Open until 10:00 PM</div>
        </div>
         <div class="store-footer">
            <a href="#">📍 DIRECTIONS</a>
            <a href="#">🌐 WEBSITE</a>
        </div>
    </div>
     
     

    <!-- CARD 1 -->
    <div class="store-card">
        <h4>Monginis Cake Shop</h4>

        <div class="info">
            <div class="icon">🏬</div>
            <div class="text">Sm Foods And Celebrations</div>
        </div>

        <div class="info">
            <div class="icon">📍</div>
            <div class="text">
                No 30/26, Shakti Nagar<br>
                New Delhi - 110007
            </div>
        </div>

        <div class="info">
            <div class="icon">📞</div>
            <div class="text">+91 8383013521</div>
        </div>

        <div class="info">
            <div class="icon">⏰</div>
            <div class="text">Closed for the day</div>
        </div>

        <div class="store-footer">
            <a href="#">📍 DIRECTIONS</a>
            <a href="#">🌐 WEBSITE</a>
        </div>
    </div>

    <!-- CARD 2 -->
    <div class="store-card">
        <h4>Monginis Cake Shop</h4>

        <div class="info">
            <div class="icon">🏬</div>
            <div class="text">Golden EPN Ventures</div>
        </div>

        <div class="info">
            <div class="icon">📍</div>
            <div class="text">
                Shop No 5, 11/5, Ground Floor<br>
                New Delhi - 110008
            </div>
        </div>

        <div class="info">
            <div class="icon">📞</div>
            <div class="text">+91 9959912144</div>
        </div>

        <div class="info">
            <div class="icon">⏰</div>
            <div class="text">Open until 10:00 PM</div>
        </div>

        <div class="store-footer">
            <a href="#">📍 DIRECTIONS</a>
            <a href="#">🌐 WEBSITE</a>
        </div>
    </div>

    <!-- CARD 3 -->
    <div class="store-card">
        <h4>Monginis Cake Shop</h4>

        <div class="info">
            <div class="icon">🏬</div>
            <div class="text">Delicia Foods (Model Town)</div>
        </div>

        <div class="info">
            <div class="icon">📍</div>
            <div class="text">
                No 4, Priyadarshini Vihar<br>
                New Delhi - 110009
            </div>
        </div>

        <div class="info">
            <div class="icon">📞</div>
            <div class="text">+91 9504763271</div>
        </div>

        <div class="info">
            <div class="icon">⏰</div>
            <div class="text">Open until 10:00 PM</div>
        </div>

        <div class="store-footer">
            <a href="#">📍 DIRECTIONS</a>
            <a href="#">🌐 WEBSITE</a>
        </div>
    </div>

    <!-- CARD 4 -->
    <div class="store-card">
        <h4>Monginis Cake Shop</h4>

        <div class="info">
            <div class="icon">🏬</div>
            <div class="text">Delicia Foods</div>
        </div>

        <div class="info">
            <div class="icon">📍</div>
            <div class="text">
                Shop No 5, House No 1, Indra Vihar<br>
                GTB Nagar, New Delhi - 110009
            </div>
        </div>

        <div class="info">
            <div class="icon">📞</div>
            <div class="text">+91 8655342576</div>
        </div>

        <div class="info">
            <div class="icon">⏰</div>
            <div class="text">Open until 10:00 PM</div>
        </div>

        <div class="store-footer">
            <a href="#">📍 DIRECTIONS</a>
            <a href="#">🌐 WEBSITE</a>
        </div>
    </div>

    <!-- CARD 5 -->
    <div class="store-card">
        <h4>Monginis Cake Shop</h4>

        <div class="info">
            <div class="icon">🏬</div>
            <div class="text">Ghai & Sons (Inderpuri)</div>
        </div>

        <div class="info">
            <div class="icon">📍</div>
            <div class="text">
                Shop No 4 & EG1, Ground Floor<br>
                Main Market, Inderpuri, Delhi - 110012
            </div>
        </div>

        <div class="info">
            <div class="icon">📞</div>
            <div class="text">+91 9953980855</div>
        </div>

        <div class="info">
            <div class="icon">⏰</div>
            <div class="text">Open until 10:30 PM</div>
        </div>

        <div class="store-footer">
            <a href="#">📍 DIRECTIONS</a>
            <a href="#">🌐 WEBSITE</a>
        </div>
    </div>

    <!-- CARD 6 -->
    <div class="store-card">
        <h4>Monginis Cake Shop</h4>

        <div class="info">
            <div class="icon">🏬</div>
            <div class="text">Delicia Foods (Bhogal)</div>
        </div>

        <div class="info">
            <div class="icon">📍</div>
            <div class="text">
                Shop No 57, Central Road<br>
                Bhogal Market, New Delhi - 110014
            </div>
        </div>

        <div class="info">
            <div class="icon">📞</div>
            <div class="text">+91 9865573832</div>
        </div>

        <div class="info">
            <div class="icon">⏰</div>
            <div class="text">Open until 10:00 PM</div>
        </div>

        <div class="store-footer">
            <a href="#">📍 DIRECTIONS</a>
            <a href="#">🌐 WEBSITE</a>
        </div>
    </div>  
    
    <div class="store-card">
    <h4>Monginis Cake Shop</h4>

    <div class="info">
        <div class="icon">🏬</div>
        <div class="text">The Celebration Studio</div>
    </div>

    <div class="info">
        <div class="icon">📍</div>
        <div class="text">
            Shop No 1, Qutub View Apartment<br>
            NCERT Campus<br>
            New Delhi - 110016
        </div>
    </div>

    <div class="info">
        <div class="icon">📞</div>
        <div class="text">+91 9650585069</div>
    </div>

    <div class="info">
        <div class="icon">⏰</div>
        <div class="text">Open until 10:00 PM</div>
    </div>

    <div class="store-footer">
        <a href="#">📍 DIRECTIONS</a>
        <a href="#">🌐 WEBSITE</a>
    </div>
</div>
    
    <div class="store-card">
    <h4>Monginis Cake Shop</h4>

    <div class="info">
        <div class="icon">🏬</div>
        <div class="text">Delicia Foods</div>
    </div>

    <div class="info">
        <div class="icon">📍</div>
        <div class="text">
            Shop No 5, House No 1, Indra Vihar<br>
            GTB Nagar<br>
            New Delhi - 110009
        </div>
    </div>

    <div class="info">
        <div class="icon">📞</div>
        <div class="text">+91 8655342576</div>
    </div>

    <div class="info">
        <div class="icon">⏰</div>
        <div class="text">Open until 10:00 PM</div>
    </div>

    <div class="store-footer">
        <a href="#">📍 DIRECTIONS</a>
        <a href="#">🌐 WEBSITE</a>
    </div>
</div>
    
    <div class="store-card">
    <h4>Monginis Cake Shop</h4>

    <div class="info">
        <div class="icon">🏬</div>
        <div class="text">Ghai & Sons (Inderpuri)</div>
    </div>

    <div class="info">
        <div class="icon">📍</div>
        <div class="text">
            Shop No 4 & EG1, Ground Floor<br>
            Main Market, Inderpuri<br>
            New Delhi - 110012
        </div>
    </div>

    <div class="info">
        <div class="icon">📞</div>
        <div class="text">+91 9953980855</div>
    </div>

    <div class="info">
        <div class="icon">⏰</div>
        <div class="text">Open until 10:30 PM</div>
    </div>

    <div class="store-footer">
        <a href="#">📍 DIRECTIONS</a>
        <a href="#">🌐 WEBSITE</a>
    </div>
</div>
    
    <div class="store-card">
    <h4>Monginis Cake Shop</h4>

    <div class="info">
        <div class="icon">🏬</div>
        <div class="text">Delicia Foods (Bhogal)</div>
    </div>

    <div class="info">
        <div class="icon">📍</div>
        <div class="text">
            Shop No 57, Central Road<br>
            Bhogal Market<br>
            New Delhi - 110014
        </div>
    </div>

    <div class="info">
        <div class="icon">📞</div>
        <div class="text">+91 9865573832</div>
    </div>

    <div class="info">
        <div class="icon">⏰</div>
        <div class="text">Open until 10:00 PM</div>
    </div>

    <div class="store-footer">
        <a href="#">📍 DIRECTIONS</a>
        <a href="#">🌐 WEBSITE</a>
    </div>
</div>
           
      
    
    
    
</div>
</div>


<!-- FOOTER -->
<div class="footer">

    <!-- TOP TEXT -->
    <div class="footer-top">
        <span>States we are present in :</span>
    </div>

    <!-- LINKS -->
    <div class="footer-links">
        <a href="#">Cake Shop in Andhra Pradesh</a> /
        <a href="#">Cake Shop in Dadra And Nagar Haveli</a> /
        <a href="#">Cake Shop in Delhi</a> /
        <a href="#">Cake Shop in Gujarat</a> /
        <a href="#">Cake Shop in Haryana</a> /
        <a href="#">View More...</a>
    </div>

    <!-- BOTTOM -->
    <div class="footer-bottom">
        <div class="copyright">
            © 2026 Monginis. All Rights Reserved.
        </div>

        <div class="social-icons">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-pinterest"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-youtube"></i></a>
            <a href="#"><i class="fa fa-globe"></i></a>
        </div>
    </div>

</div>

<script>
function setPrice(cake){
    let p=document.getElementById("price");
    if(cake=="Chocolate Truffle") p.value=650;
    else if(cake=="Black Forest") p.value=550;
    else if(cake=="Red Velvet") p.value=700;
    else if(cake=="Butterscotch") p.value=600;
    else p.value="";
}
</script>

</body>
</html>
