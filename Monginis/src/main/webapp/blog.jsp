<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Monginis Blog</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>
body{
    margin:0;
    font-family:'Poppins',sans-serif;
    background:#fff5f8;
}

/* Blog Wrapper */
.blog-container{
    max-width:900px;
    margin:50px auto;
    background:#ffffff;
    border-radius:18px;
    box-shadow:0 15px 40px rgba(0,0,0,0.1);
    overflow:hidden;
}

/* Blog Content */
.blog-content{
    padding:40px;
}

.blog-title{
    font-size:32px;
    font-weight:700;
    color:#2b1454;
    margin-bottom:10px;
}

.blog-meta{
    font-size:14px;
    color:#888;
    margin-bottom:20px;
}

.blog-meta span{
    color:#ff2b8a;
    font-weight:600;
}

/* Blog Image */
.blog-image{
    width:100%;
    height:auto;
    border-radius:12px;
    margin:20px 0;
}

/* Paragraph */
.blog-text{
    font-size:16px;
    line-height:1.9;
    color:#444;
    margin-bottom:20px;
}

/* Order Button on Image */
.order-btn{
    display:inline-block;
    background:#ff2b8a;
    color:#fff;
    padding:10px 20px;
    border-radius:30px;
    font-size:14px;
    font-weight:600;
    text-decoration:none;
    margin-bottom:20px;
}

.order-btn:hover{
    background:#e61e76;
}

/* Read More */
.read-more{
    color:#ff2b8a;
    font-weight:600;
    text-decoration:none;
}

.read-more:hover{
    text-decoration:underline;
}
</style>
</head>

<body>

<body>
<%@ include file="navbar.jsp" %>
<!-- ================= BLOG 1 ================= -->
<div class="blog-container">
    <div class="blog-content">
        <h1 class="blog-title">
            Republic Day Cake by Monginis to Celebrate India’s Pride
        </h1>

        <div class="blog-meta">
            January 23, 2026 by <span>Monginis</span>
        </div>

        <img src="images/blog1.jpg" alt="Republic Day Cake" class="blog-image">

        <a href="#" class="order-btn">
            Order online at: cakesonline.monginis.net
        </a>

        <p class="blog-text">
            Republic Day is almost here. It is that one day when the whole neighbourhood
            feels different. Flags fly everywhere and patriotic songs fill the air.
        </p>

        <p class="blog-text">
            Monginis Republic Day Cakes add sweetness to your celebration with beautiful
            tricolour designs and delicious flavours.
        </p>

        <a href="#" class="read-more">Read more</a>
    </div>
</div>


<!-- ================= BLOG 2 ================= -->
<div class="blog-container">
    <div class="blog-content">
        <h1 class="blog-title">
            Turn Moments into Memories with Monginis Designer Cakes
        </h1>

        <div class="blog-meta">
            January 17, 2026 by <span>Monginis</span>
        </div>

        <img src="images/blog2.jpg" alt="Designer Cake" class="blog-image">

        <a href="#" class="order-btn">
            Order online at: cakesonline.monginis.net
        </a>

        <p class="blog-text">
            Every celebration has that one moment everyone waits for — when the cake arrives.
            Smiles spread, phones come out and memories are made.
        </p>

        <p class="blog-text">
            Monginis Designer Cakes are crafted for such moments. They look stunning,
            taste amazing and feel truly personal.
        </p>

        <a href="#" class="read-more">Read more</a>
    </div>
</div>
<div class="blog-container">
    <div class="blog-content">
        <h1 class="blog-title">
            Fly High on Flavours with Monginis’ Makar Sankranti Theme Cakes
        </h1>

        <div class="blog-meta">
            January 9, 2026 by <span>Monginis</span>
        </div>

        <img src="images/blog3.jpg" alt="Makar Sankranti Cake" class="blog-image">

        <a href="#" class="order-btn">
            Order online at: cakesonline.monginis.net
        </a>

        <p class="blog-text">
            Can you feel the excitement in the air? It’s January, the sun is shining,
            and the sky is about to turn into a colourful canvas. Makar Sankranti
            is almost here!
        </p>

        <p class="blog-text">
            This is the time of kite flying, rooftop celebrations and sweet moments.
            Monginis brings special Makar Sankranti theme cakes to make your
            celebrations even more delightful.
        </p>

        <a href="#" class="read-more">Read more</a>
    </div>
</div>



    
</body>

</body>
</html>
    