<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Cake Shop</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>



</head>
<body>

<!-- Include Navbar -->
<jsp:include page="navbar.jsp" />

<!-- Carousel -->
<div id="cakeCarousel" class="carousel slide" data-bs-ride="carousel">

    <!-- Indicators -->
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#cakeCarousel" data-bs-slide-to="0" class="active"></button>
        <button type="button" data-bs-target="#cakeCarousel" data-bs-slide-to="1"></button>
        <button type="button" data-bs-target="#cakeCarousel" data-bs-slide-to="2"></button>
        <button type="button" data-bs-target="#cakeCarousel" data-bs-slide-to="3"></button>
        <button type="button" data-bs-target="#cakeCarousel" data-bs-slide-to="4"></button>
    </div>

    <!-- Slides -->
    <div class="carousel-inner">

        <div class="carousel-item active">
            <img src="<%= request.getContextPath() %>/images/banner11.jpg"
                 class="d-block w-100" style="height:550px;object-fit:cover;">
        </div>

        <div class="carousel-item">
            <img src="<%= request.getContextPath() %>/images/banner12.jpg"
                 class="d-block w-100" style="height:550px;object-fit:cover;">
        </div>

        <div class="carousel-item">
            <img src="<%= request.getContextPath() %>/images/banner13.jpg"
                 class="d-block w-100" style="height:550px;object-fit:cover;">
        </div>
        
        <div class="carousel-item">
            <img src="<%= request.getContextPath() %>/images/banner14.avif"
                 class="d-block w-100" style="height:550px;object-fit:cover;">
        </div>
        
         <div class="carousel-item">
            <img src="<%= request.getContextPath() %>/images/banner15.avif"
                 class="d-block w-100" style="height:550px;object-fit:cover;">
        </div>
        
    </div>

    <!-- Controls -->
    <button class="carousel-control-prev" type="button"
            data-bs-target="#cakeCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </button>

    <button class="carousel-control-next" type="button"
            data-bs-target="#cakeCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
    </button>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
