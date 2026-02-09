<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Footer</title>

<style>
body{
    margin:0;
    font-family:'Segoe UI',sans-serif;
}

/* MOST SEARCHED */
.most-searched{
    background:#f3f3f3;
    padding:20px 60px;
    font-size:16px;
    font-weight:light-bold;
    color:#555;
    line-height:1.7;
}

/* FOOTER */
.footer{
    padding:50px 60px 30px;
    background:#fff;
}

/* FOOTER GRID */
.footer-top{
    display:grid;
    grid-template-columns:1.2fr 1fr 1fr 1fr 1fr;
    gap:40px;
}

/* LOGO */
.footer-logo img{
    width:180px;
}

/* FOOTER TITLES */
.footer h4{
    font-size:14px;
    margin-bottom:12px;
}

/* LINKS */
.footer ul{
    list-style:none;
    padding:0;
    margin:0;
}

.footer ul li{
    font-size:14px;
    margin-bottom:8px;
    color:#555;
    cursor:pointer;
}

.footer ul li:hover{
    color:#ff2f92;
}

/* SOCIAL */
.social-icons img{
    width:26px;
    margin-right:8px;
    cursor:pointer;
}

/* COPYRIGHT */
.footer-bottom{
    text-align:center;
    margin-top:40px;
    font-size:18px;
    color:#777;
}
</style>
</head>

<body>

<!-- MOST SEARCHED -->
<div class="most-searched">
<b>MOST SEARCHED FOR ON MONGINIS :</b>
Cakes | 3D & Sp Cakes | Pastries | Savouries | Baker Wares | Cakes | Chocolates | Cakes Deals <br>
<b>CAKES :</b> Packaged Cakes | Blueberry Cake | Chocolate Cake | Pineapple Cake | Truffle Cake | Double Chocolate Cake | Walnut Truffle Cake | Classic Chocolate Cake <br>
<b>SAVOURIES :</b> Namkeen | Rusk | Rolls | Non-veg Pizza Slices | Veg Rolls | Veg Paneer Patty | Breads | Tea Time Snacks
</div>

<!-- FOOTER -->
<footer class="footer">

<div class="footer-top">

    <!-- LOGO -->
    <div class="footer-logo">
        <img src="images/logo.jpg" alt="Monginis">
    </div>

    <!-- COLUMN 1 -->
    <div>
        <h4>Contact Us</h4>
        <ul>
            <li>About Us</li>
            <li>Become Franchise</li>
            <li>Become Vendor</li>
        </ul>
    </div>

    <!-- COLUMN 2 -->
    <div>
        <h4>Cakes</h4>
        <ul>
            <li>3D & SP Cakes</li>
            <li>Pastries</li>
            <li>Savouries</li>
            <li>Chocolates</li>
        </ul>
    </div>

    <!-- COLUMN 3 -->
    <div>
        <h4>Download E-brochure</h4>
        <ul>
            <li>Recognition & Awards</li>
            <li>Cake Studies</li>
            <li>Our Factories</li>
        </ul>
    </div>

    <!-- COLUMN 4 -->
    <div>
        <h4>Connect with us</h4>
        <div class="social-icons">
            <img src="images/fb.jpg">
            <img src="images/twitter.jpg">
            <img src="images/youtube.jpg">
            <img src="images/instagram.jpg">
        </div>
        <ul>
            <li>Refund Policy</li>
            <li>Privacy Policy</li>
            <li>Terms & Conditions</li>
        </ul>
    </div>

</div>

<div class="footer-bottom">
    Copyright © Monginis. All rights reserved <br>
    Designed & Developed by QPSIT
</div>

</footer>

</body>
</html>
    