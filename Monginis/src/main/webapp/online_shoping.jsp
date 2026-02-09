<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Cake Shop</title>

<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
/* ===== NAVBAR ===== */
.navbar {
    background: #ffd6e8;
    padding: 12px 40px;
}
.navbar-brand {
    font-size: 28px;
    font-weight: bold;
    color: #e60073 !important;
}
.search-box {
    width: 400px;
    border-radius: 25px;
    padding: 8px 15px;
    border: 1px solid #e60073;
}
.nav-icons {
    font-size: 20px;
    color: #e60073;
    margin-left: 20px;
    cursor: pointer;
}

/* ===== CAROUSEL ===== */
.carousel-item {
    height: 420px;
}
.carousel-item img {
    height: 100%;
    object-fit: cover;
}
.carousel-caption {
    background: rgba(255, 192, 203, 0.85);
    padding: 25px;
    border-radius: 15px;
}
.carousel-caption h2 {
    color: #7a003c;
    font-weight: bold;
}
.order-btn {
    background: #5a1c8c;
    color: white;
    border-radius: 25px;
    padding: 8px 25px;
}
.order-btn:hover {
    background: #3e0f63;
}
</style>
</head>

<body>

<!-- ===== NAVBAR ===== -->
<nav class="navbar navbar-expand-lg">
    <a class="navbar-brand" href="#">monginis</a>

    <div class="mx-auto">
        <input type="text" class="search-box" placeholder="Search for cakes, pastries, savories...">
    </div>

    <div>
        <span class="nav-icons">📍 Pune</span>
        <span class="nav-icons">🛒</span>
        <span class="nav-icons">👤</span>
    </div>
</nav>

<!-- ===== CAROUSEL ===== -->
<div id="cakeCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">

        <div class="carousel-item active">
            <img src="https://images.unsplash.com/photo-1606890737304-57a1ca8a5b62" class="d-block w-100">
            <div class="carousel-caption">
                <h2>Make Your Anniversary Magical</h2>
                <p>With our special designer cakes</p>
                <button class="order-btn">Order Now</button>
            </div>
        </div>

        <div class="carousel-item">
            <img src="https://images.unsplash.com/photo-1565958011703-44f9829ba187" class="d-block w-100">
            <div class="carousel-caption">
                <h2>Fresh & Delicious Cakes</h2>
                <p>Baked with love everyday</p>
                <button class="order-btn">Shop Cakes</button>
            </div>
        </div>

        <div class="carousel-item">
            <img src="https://images.unsplash.com/photo-1542826438-bd32f43d626f" class="d-block w-100">
            <div class="carousel-caption">
                <h2>Celebrate Every Moment</h2>
                <p>Birthdays, weddings & surprises</p>
                <button class="order-btn">Explore</button>
            </div>
        </div>

    </div>

    <button class="carousel-control-prev" type="button" data-bs-target="#cakeCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </button>

    <button class="carousel-control-next" type="button" data-bs-target="#cakeCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
    </button>
</div>

<%@ include file="category.jsp" %>

<%@ include file="footer1.jsp" %>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
