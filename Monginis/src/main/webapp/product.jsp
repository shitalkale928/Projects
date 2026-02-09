<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Cake Shop</title>

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
</style>
</head>

<body>
<%@ include file=" navbar.jsp" %>
<!-- ===== NAVBAR ===== -->
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

<!-- ===== SIMPLE CAROUSEL ===== -->
<div class="container my-4">
    <div id="cakeCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            
            <div class="carousel-item active">
                <img src="images/banner1.jpg" class="d-block w-100" alt="Cake">
            </div>

            <div class="carousel-item">
                <img src="images/banner2.jpg" class="d-block w-100" alt="Cake">
            </div>

            <div class="carousel-item">
                <img src="images/bahher3.jpg" class="d-block w-100" alt="Cake">
            </div>

        </div>

        <!-- Carousel Controls -->
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
<%@ include file="category.jsp" %>

<%@ include file="footer1.jsp" %>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
