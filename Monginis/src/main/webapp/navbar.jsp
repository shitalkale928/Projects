<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">



<style>
/* MAIN NAVBAR */
.navbar-custom {
    background-color: #ffffff;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
}

/* LOGO */
.navbar-brand img {
    height: 58px;
}

/* MENU LINKS */
.navbar-nav .nav-link {
    font-size: 18px;          /* 🔥 font size increased */
    color: #000 !important;
    font-weight: 600;
    padding: 10px 22px;       /* 🔥 spacing increased */
}

/* HOVER */
.navbar-nav .nav-link:hover {
    color: #e91e63 !important;
}

/* ACTIVE */
.navbar-nav .nav-link.active {
    color: #e91e63 !important;
}
</style>
</head>
<nav class="navbar navbar-expand-lg navbar-light navbar-custom sticky-top">
    <div class="container">

        <!-- LOGO -->
        <a class="navbar-brand" href="index.jsp">
            <img src="<%= request.getContextPath() %>/images/logo.jpg">
        </a>

        <!-- TOGGLER -->
        <button class="navbar-toggler" type="button"
            data-bs-toggle="collapse" data-bs-target="#navbarMenu">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- MENU -->
        <div class="collapse navbar-collapse justify-content-center" id="navbarMenu">
            <ul class="navbar-nav">

                <li class="nav-item">
                    <a class="nav-link active" href="main.jsp">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="online_shoping.jsp">Our Products</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="about.jsp">About Us</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="history.jsp">Our History</a>
                </li>

               
                <li class="nav-item">
                    <a class="nav-link" href="blog.jsp">Blogs</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="wedding.jsp">Wedding Cakes</a>
                </li>
                
                 <li class="nav-item">
                    <a class="nav-link" href="contact.jsp">Contact</a>
                </li>
                

            </ul>
        </div>

    </div>
</nav>
