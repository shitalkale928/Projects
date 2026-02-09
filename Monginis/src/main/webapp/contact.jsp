<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Monginis | Contact</title>
   <style>
     /* Page title */
.center-title {
    text-align: center;
    margin: 40px 0;
    font-family: 'Arial', sans-serif;
    color: #d2691e;
    text-shadow: 1px 1px 2px #f4a460;
}

/* Flex row for cards */
.contact-row {
    display: flex;
    justify-content: center;
    gap: 30px;
    flex-wrap: wrap;
    padding: 20px;
}

/* Individual card styling */
.contact-box {
    background: linear-gradient(135deg, #fff3e0, #ffe0b2);
    border-radius: 20px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.2);
    padding: 25px;
    width: 320px;
    text-align: center;
    transition: transform 0.4s, box-shadow 0.4s;
    font-family: 'Verdana', sans-serif;
    border: 1px solid #f4a460;
}

.contact-box:hover {
    transform: scale(1.05);
    box-shadow: 0 15px 25px rgba(255, 165, 0, 0.4);
}

.contact-box h2 {
    color: #d2691e;
    margin-bottom: 20px;
    font-size: 22px;
}

.contact-box p {
    font-size: 16px;
    color: #333;
    line-height: 1.8;
}

.contact-box i {
    color: #d2691e;
    margin-right: 10px;
}

/* Social media links */
.social-links {
    margin-top: 15px;
}

.social-links a {
    text-decoration: none;
    color: #d2691e;
    margin: 0 8px;
    font-size: 18px;
    transition: color 0.3s;
}

.social-links a:hover {
    color: #ff8c00;
}

/* Contact form */
.form-container {
    background: #fff8f0;
    width: 60%;
    max-width: 700px;
    margin: 50px auto;
    padding: 30px;
    border-radius: 20px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.2);
    text-align: center;
}

.form-container h2 {
    color: #d2691e;
    margin-bottom: 25px;
}

.form-container input, 
.form-container textarea {
    width: 90%;
    padding: 12px 15px;
    margin: 10px 0;
    border-radius: 10px;
    border: 1px solid #f4a460;
    font-size: 16px;
    resize: none;
}

.form-container button {
    padding: 12px 25px;
    background: #d2691e;
    color: white;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    font-size: 16px;
    transition: background 0.3s;
}

.form-container button:hover {
    background: #ff8c00;
}
     
   </style>
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>

<%@ include file="navbar.jsp" %>

<h1 class="center-title">Contact Us</h1>

<div class="contact-row">
    <!-- Branch 1 -->
    <div class="contact-box">
        <h2>Monginis Chinchwad</h2>
        <p><i class="fas fa-map-marker-alt"></i> Chinchwad, Pune</p>
        <p><i class="fas fa-phone"></i> +91 9020730049</p>
        <p><i class="fas fa-envelope"></i> monginis@gmail.com</p>
        <div class="social-links">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-linkedin-in"></i></a>
        </div>
    </div>

    <!-- Branch 2 -->
    <div class="contact-box">
        <h2>Monginis Pune</h2>
        <p><i class="fas fa-map-marker-alt"></i> Koregaon Park, Pune</p>
        <p><i class="fas fa-phone"></i> +91 9012345678</p>
        <p><i class="fas fa-envelope"></i> pune@monginis.com</p>
        <div class="social-links">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-linkedin-in"></i></a>
        </div>
    </div>

    <!-- Branch 3 -->
    <div class="contact-box">
        <h2>Monginis Mumbai</h2>
        <p><i class="fas fa-map-marker-alt"></i> Andheri, Mumbai</p>
        <p><i class="fas fa-phone"></i> +91 9876543210</p>
        <p><i class="fas fa-envelope"></i> mumbai@monginis.com</p>
        <div class="social-links">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-linkedin-in"></i></a>
        </div>
    </div>
</div>

<!-- Contact Form -->
<div class="form-container">
    <h2>Send Us a Message</h2>
    <form action="SendMessageServlet" method="post">
        <input type="text" name="name" placeholder="Your Name" required>
        <input type="email" name="email" placeholder="Your Email" required>
        <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
        <button type="submit">Send Message</button>
    </form>
</div>


</body>
</html>
