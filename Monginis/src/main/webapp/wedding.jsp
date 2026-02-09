<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Monginis Cakes</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
/* ===== NAVBAR ===== */
.navbar-custom {
    background: #ffe0ec;
    padding: 10px 30px;
}

.navbar-brand {
    font-size: 32px;
    font-weight: bold;
    color: #e60073;
}

.search-box {
    width: 420px;
}

.search-box input {
    border-radius: 30px;
    padding-left: 20px;
}

.nav-icons {
    display: flex;
    align-items: center;
    gap: 20px;
    font-size: 18px;
}

/* ===== CAROUSEL ===== */
.carousel-item img {
    width: 100%;
    height: 400px;
    object-fit: cover;
    border-radius: 10px;
}
/* ===== WHY CHOOSE US ===== */
.why-choose-section {
    background: #fff3f8;
    padding: 60px 20px;
    text-align: center;
}

.why-choose-section h2 {
    font-size: 36px;
    color: #e60073;
    font-weight: bold;
}

.why-choose-section .tagline {
    font-size: 18px;
    margin-bottom: 40px;
    color: #333;
    font-weight: 500;
}

.why-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
    gap: 30px;
    max-width: 1100px;
    margin: auto;
}

.why-card {
    background: #ffffff;
    padding: 25px;
    border-radius: 14px;
    box-shadow: 0 6px 15px rgba(0,0,0,0.08);
    transition: transform 0.3s;
}

.why-card:hover {
    transform: translateY(-8px);
}

.why-card .icon {
    font-size: 40px;
    margin-bottom: 15px;
}

.why-card h5 {
    color: #e60073;
    font-weight: bold;
    margin-bottom: 10px;
}

.why-card p {
    font-size: 15px;
    color: #555;
}
/* ===== CELEBRATE SECTION ===== */
.celebrate-section {
    background: #fde7f1;
    padding: 60px 30px;
    text-align: center;
}

.celebrate-section h2 {
    font-size: 36px;
    font-weight: bold;
    margin-bottom: 40px;
    color: #e60073;
}

.celebrate-section h2 span {
    color: #6a1bb1;
}

.cake-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
    gap: 30px;
    max-width: 1200px;
    margin: auto;
}

.cake-card {
    background: #fff;
    border-radius: 12px;
    padding: 20px;
    box-shadow: 0 6px 15px rgba(0,0,0,0.08);
    transition: transform 0.3s;
}

.cake-card:hover {
    transform: translateY(-8px);
}

.cake-card img {
    width: 100%;
    height: 260px;
    object-fit: contain;
}

.cake-card h5 {
    margin: 15px 0;
    font-weight: bold;
    font-size: 16px;
}

.btn-enquire {
    display: inline-block;
    padding: 8px 20px;
    background: #e60073;
    color: #fff;
    font-size: 13px;
    border-radius: 6px;
    text-decoration: none;
}

.btn-enquire:hover {
    background: #c70063;
    color: #fff;
}
/* ===== COUPLES LOVE SECTION ===== */
.couple-section {
    padding: 60px 20px;
    text-align: center;
}

.couple-section h2 {
    color: #e60073;
    font-size: 34px;
    font-weight: bold;
    margin-bottom: 30px;
}

/* Testimonial */
.testimonial-card {
    background: #fde9ef;
    max-width: 700px;
    margin: auto;
    padding: 25px;
    border-radius: 12px;
    display: flex;
    align-items: center;
    gap: 20px;
    box-shadow: 0 6px 15px rgba(0,0,0,0.08);
}

.testimonial-img img {
    width: 100px;
    border-radius: 50%;
}

.testimonial-text {
    text-align: left;
}

.testimonial-text .quote {
    font-size: 40px;
    color: #ff4da6;
}

.testimonial-text h6 {
    color: #e60073;
    font-weight: bold;
}

/* Video + Offer */
.video-offer {
    margin-top: 50px;
    display: flex;
    flex-wrap: wrap;
}

.video-box {
    flex: 1;
    min-width: 300px;
}

.video-box video {
    width: 100%;
    height: 100%;
    max-height: 350px;
    object-fit: cover;
}

.offer-box {
    flex: 1;
    background: linear-gradient(to right, #ff66b2, #ffd1e8);
    padding: 40px;
    text-align: left;
}

.offer-box h4 {
    color: #e60073;
    font-weight: bold;
    margin-bottom: 20px;
}

/* ===== PLAN SECTION ===== */
.plan-section {
    background: #fff1f6;
    padding: 60px 20px;
    text-align: center;
}

.plan-section h2 {
    font-size: 36px;
    font-weight: bold;
    color: #e60073;
    margin-bottom: 40px;
}

.plan-section h2 span {
    color: #6a1bb1;
}

.cake-form {
    max-width: 1100px;
    margin: auto;
}

.form-row {
    display: flex;
    gap: 30px;
    margin-bottom: 25px;
}

.form-row.full {
    flex-direction: column;
}

.form-row div {
    flex: 1;
    text-align: left;
}

label {
    font-weight: 600;
    margin-bottom: 6px;
    display: block;
}

input, select, textarea {
    width: 100%;
    padding: 10px;
    border-radius: 6px;
    border: 1px solid #ccc;
    font-size: 14px;
}

textarea {
    height: 120px;
}

.order-btn {
    margin-top: 20px;
    background: #e60073;
    color: #fff;
    padding: 12px 35px;
    border: none;
    border-radius: 6px;
    font-size: 14px;
}

.order-btn:hover {
    background: #c70063;
}
/* FAQ Section */
.faq-box{
    background:#ffffff;
    border-radius:16px;
    padding:45px 50px;
    box-shadow:0 12px 35px rgba(0,0,0,0.08);
    border:2px solid #ff2b8a;
}

.faq-title{
    text-align:center;
    font-size:32px;
    font-weight:700;
    color:#ff2b8a;
    margin-bottom:35px;
    letter-spacing:1px;
}

.faq-box p{
    font-size:16px;
    color:#444;
    line-height:1.8;
    margin-bottom:10px;
}

.faq-box b{
    color:#2b1454;
    font-size:17px;
}

.faq-box hr{
    margin:22px 0;
    border-top:1px dashed #ff9ec9;
}
/* Footer */
.footer{
    background:linear-gradient(135deg,#2b1454,#4b1c5a);
    color:#ffffff;
    padding:45px 0;
    margin-top:60px;
}

.footer h5{
    color:#ff2b8a;
    font-weight:700;
    margin-bottom:15px;
}

.footer p,
.footer a{
    color:#ddd;
    font-size:14px;
    text-decoration:none;
}

.footer a:hover{
    color:#ff2b8a;
}

.footer-bottom{
    margin-top:25px;
    padding-top:15px;
    border-top:1px solid rgba(255,255,255,0.2);
    font-size:13px;
    color:#ccc;
}






</style>
</head>
<body>
<%@ include file="navbar.jsp" %>
<!-- ===== NAVBAR ===== --><div class="container">
<nav class="navbar navbar-expand-lg navbar-custom">
    <div class="container">
        <a class="navbar-brand" href="#">Monginis</a>

        <div class="mx-auto search-box">
            <input type="text" class="form-control" placeholder="Search for cakes, pastries, savories, etc.">
        </div>

        <div class="nav-icons">
            <span>🍰</span>
            <span>📍 Pune, Maharashtra</span>
            <span>🛒</span>
            <span>👤</span>
        </div>
    </div>
</nav>

<!-- ===== CAROUSEL ===== -->
<div class="container my-4">
    <div id="cakeCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/wedding1.jpg" class="d-block w-100" alt="Cake 1">
            </div>
           
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#cakeCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#cakeCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>

<!-- ===== WHY CHOOSE US ===== -->
<div class="why-choose-section">
    <h2>Why Choose Us ?</h2>
    <p class="tagline">You Dream it, We bake it</p>

    <div class="why-grid">
        <div class="why-card">
            <div class="icon">🎂</div>
            <h5>Fully Personalized Designs</h5>
            <p>
                Choose from a variety of designs, sizes, and flavors,
                all customized to perfectly match your celebration.
            </p>
        </div>

        <div class="why-card">
            <div class="icon">⭐</div>
            <h5>Finest Quality, Rich Taste</h5>
            <p>
                We use only the finest ingredients to ensure
                your cake tastes as delightful as it looks.
            </p>
        </div>

        <div class="why-card">
            <div class="icon">🍰</div>
            <h5>Fresh & Flavorful</h5>
            <p>
                No preservatives, only fresh ingredients
                for a truly unforgettable cake experience.
            </p>
        </div>

        <div class="why-card">
            <div class="icon">👨‍🍳</div>
            <h5>Crafted by Experts</h5>
            <p>
                Decades of expertise go into creating
                wedding cakes that feel truly special.
            </p>
        </div>

        <div class="why-card">
            <div class="icon">🚚</div>
            <h5>On-Time Delivery</h5>
            <p>
                We deliver your cake at the perfect moment,
                fresh, safe and hassle-free.
            </p>
        </div>

        <div class="why-card">
            <div class="icon">❤️</div>
            <h5>Trusted by Millions</h5>
            <p>
                Loved and trusted across India for making
                life’s sweetest moments memorable.
            </p>
        </div>
    </div>
</div>


<!-- ===== CELEBRATE WITH CAKE ===== -->
<div class="celebrate-section">
    <h2>Celebrate with a Cake as <span>Unique as Your Love</span></h2>

    <div class="cake-grid">

        <div class="cake-card">
             <img src="https://images.unsplash.com/photo-1578985545062-69928b1d9587">
            <h5>Asymmetrical Motion Cake</h5>
            <a href="#" class="btn-enquire">ENQUIRE NOW</a>
        </div>

        <div class="cake-card">
             <img src="https://images.unsplash.com/photo-1606890737304-57a1ca8a5b62">
            <h5>Bride & Groom Cake</h5>
            <a href="#" class="btn-enquire">ENQUIRE NOW</a>
        </div>

        <div class="cake-card">
            <img src="https://images.unsplash.com/photo-1586985289688-ca3cf47d3e6e">
            <h5>Dholki Cake</h5>
            <a href="#" class="btn-enquire">ENQUIRE NOW</a>
        </div>

        <div class="cake-card">
             <img src="https://images.unsplash.com/photo-1542826438-bd32f43d626f">
            <h5>Geometry Wedding Cake</h5>
            <a href="#" class="btn-enquire">ENQUIRE NOW</a>
        </div>

    </div>
</div>

<!-- ===== COUPLES LOVE MONGINIS ===== -->
<div class="couple-section">
    <h2>Couples Love Monginis !</h2>

    <!-- Testimonial Card -->
    <div class="testimonial-card">
        <div class="testimonial-img">
            <img src="https://cdn-icons-png.flaticon.com/512/3048/3048122.png" alt="Happy Couple">
        </div>
        <div class="testimonial-text">
            <span class="quote">“</span>
            <h6>Happy Couple</h6>
            <p>
                Our wedding cake was a showstopper! Thank you, Monginis.
                <br><b>– Pooja & Aman</b>
            </p>
        </div>
    </div>

    <!-- Video + Offers -->
    <div class="video-offer">
        <div class="video-box">
            <video controls>
                <source src="videos/wedding-cake.mp4" type="video/mp4">
            </video>
        </div>

        <div class="offer-box">
            <h4>Special Wedding Offers</h4>

            <div class="offer-item">
                🎉 Early Bird Offer: Flat 20% OFF on bookings 3 months in advance
            </div>

            <div class="offer-item">
                🚚 Free Delivery & Setup within city limits for wedding cakes
            </div>
        </div>
    </div>
</div>

<!-- ===== PLAN YOUR DREAM WEDDING CAKE ===== -->
<div class="plan-section">
    <h2>Plan Your Dream <span>Wedding Cake</span> !</h2>

    <form class="cake-form">
        <div class="form-row">
            <div>
                <label>Name</label>
                <input type="text" placeholder="Enter your name">
            </div>
            <div>
                <label>Phone</label>
                <input type="text" placeholder="Enter your phone">
            </div>
            <div>
                <label>Email</label>
                <input type="email" placeholder="Enter your email">
            </div>
        </div>

        <div class="form-row">
            <div>
                <label>Event Date</label>
                <input type="date">
            </div>
            <div>
                <label>City</label>
                <select>
                    <option>Select a City</option>
                    <option>Pune</option>
                    <option>Mumbai</option>
                    <option>Nagpur</option>
                </select>
            </div>
        </div>

        <div class="form-row full">
            <label>Additional Notes</label>
            <textarea placeholder="Write any additional notes here..."></textarea>
        </div>

        <button type="submit" class="order-btn">ORDER NOW</button>
    </form>
</div>

<!-- FAQ -->
<div class="container mt-5">
    <div class="faq-box">
        <h2 class="faq-title">Frequently Asked Questions</h2>

        <p><b>1. Can I customize my wedding cake design?</b><br>
        Yes, you can share your preferred cake image or theme.</p>

        <hr>

        <p><b>2. Do you offer eggless cakes?</b><br>
        Yes, all Monginis cakes are 100% Veg.</p>

        <hr>

        <p><b>3. What are the delivery charges?</b><br>
        Delivery charges depend on the selected area. T&C apply.</p>

        <hr>

        <p><b>4. Do you use preservatives?</b><br>
        No, all cakes are preservative-free.</p>
    </div>
</div>

<!-- Footer -->
<footer class="footer text-center">
    <p>© 2025 Monginis | Magic every time</p>
</footer>

</div>





<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
