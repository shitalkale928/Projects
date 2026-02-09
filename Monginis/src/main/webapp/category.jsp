<!DOCTYPE html>
<html>
<head>
    <title>Monginis | Categories</title>

    <style>
        /* RESET */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background-color: #fff6f8;
        }

        .page-title {
            text-align: center;
            font-size: 32px;
            color: #e91e63;
            margin: 30px 0;
            font-weight: 600;
        }

        .category-container {
            max-width: 1200px;
            margin: auto;
            display: grid;
            grid-template-columns: 2fr 1fr 1fr;
            gap: 20px;
            padding: 20px;
        }

        .category-card {
            position: relative;
            border-radius: 12px;
            overflow: hidden;
            cursor: pointer;
            text-decoration: none;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        .category-card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s ease;
        }

        .category-card:hover img {
            transform: scale(1.1);
        }

        .category-card::after {
            content: "";
            position: absolute;
            inset: 0;
            background: linear-gradient(to top, rgba(0,0,0,0.65), rgba(0,0,0,0.1));
        }

        .category-card h3 {
            position: absolute;
            bottom: 20px;
            left: 20px;
            color: white;
            font-size: 22px;
            z-index: 2;
        }

        .category-card.big {
            grid-row: span 2;
        }

        @media (max-width: 768px) {
            .category-container {
                grid-template-columns: 1fr;
            }
            .category-card.big {
                grid-row: span 1;
            }
        }
    </style>
</head>

<body>

<h2 class="page-title">Our Categories</h2>

<div class="category-container">

    <!-- Cakes -->
    <a href="cakes.jsp" class="category-card big">
        <img src="images/cake1.jpg">
        <h3>Cakes</h3>
    </a>

    <!-- Pastries -->
    <a href="pastry.jsp" class="category-card">
        <img src="images/pastry.jpg">
        <h3>Pastries</h3>
    </a>

    <!-- Savouries -->
    <a href="savouries.jsp" class="category-card">
        <img src="images/savouries.jpg">
        <h3>Savouries</h3>
    </a>

    <!-- Chocolates -->
    <a href="choco.jsp" class="category-card">
        <img src="images/choco.jpg">
        <h3>Chocolates</h3>
    </a>
    
     <a href="donut.jsp" class="category-card">
        <img src="images/donut1.jpg">
        <h3>Dounts</h3>
    </a>

</div>

</body>
</html>
