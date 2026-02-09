<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Monginis Cake Shop</title>

    <style>
        body{
            margin:0;
            font-family:'Segoe UI',sans-serif;
            background:#f8f8f8;
        }

        

        /* ===== VISIT SECTION ===== */
        .visit-section{
            display:flex;
            height:350px;
            background:#e5007d;
            margin-top:40px;
        }

        .visit-left{
            width:50%;
            padding:80px;
            color:#fff;
        }

        .visit-left h2{
            font-size:32px;
            line-height:1.4;
        }

        .visit-left button{
            margin-top:20px;
            padding:12px 22px;
            background:#1a0d3a;
            color:#fff;
            border:none;
            border-radius:5px;
            cursor:pointer;
        }

        .visit-right{
            width:50%;
        }

        .visit-right img{
            width:100%;
            height:100%;
            object-fit:cover;
        }

        /* ===== FOOTER ===== */
        .footer{
            background:#22124d;
            color:#fff;
        }

        .footer-top{
            display:flex;
            justify-content:space-between;
            padding:50px 80px;
            flex-wrap:wrap;
        }

        .footer-box{
            min-width:220px;
        }

        .footer-logo{
            font-size:34px;
            color:#ff2b8a;
            font-weight:bold;
        }

        .footer-box h3{
            margin-bottom:15px;
        }

        .footer-box ul{
            list-style:none;
            padding:0;
        }

        .footer-box ul li{
            margin-bottom:10px;
        }

        .footer-box ul li a{
            text-decoration:none;
            color:#fff;
            font-size:14px;
        }

        .footer-box ul li a:hover{
            color:#ff2b8a;
        }

        .footer-bottom{
            background:#1a0d3a;
            text-align:center;
            padding:15px;
            font-size:13px;
        }

        /* ===== RESPONSIVE ===== */
        @media(max-width:768px){
            .visit-section{
                flex-direction:column;
                height:auto;
            }
            .visit-left,.visit-right{
                width:100%;
                padding:40px;
                text-align:center;
            }
            .footer-top{
                text-align:center;
            }
        }
    </style>
</head>

<body>

<!-- ===== HEADER ===== -->

<!-- ===== PRODUCTS ===== -->


<!-- ===== VISIT STORE SECTION ===== -->
<div class="visit-section">
    <div class="visit-left">
        <h2>Visit & Experience Our Service In<br>Your City</h2>
        <button onclick="location.href='store.jsp'">FIND STORES ➜</button>
    </div>
    <div class="visit-right">
        <img src="images/footer11.jpg">
    </div>
</div>

<!-- ===== FOOTER ===== -->
<footer class="footer">

    <div class="footer-top">

        <div class="footer-box">
            <div class="footer-logo">monginis®</div>
            <p>Magic every time</p>
        </div>

        <div class="footer-box">
            <h3>Quick Links</h3>
            <ul>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Menu</a></li>
                <li><a href="#">Find Store</a></li>
            </ul>
        </div>

        <div class="footer-box">
            <h3>Contact Us</h3>
            <p>📞 8087071431</p>
            <p>📞 020 6909 6200</p>
        </div>

    </div>

    <div class="footer-bottom">
        <p>© Monginis 2025. All Rights Reserved.</p>
        <p>Manufacturing Franchisee - LUTF FOODS PRIVATE LIMITED</p>
    </div>

</footer>

</body>
</html>
