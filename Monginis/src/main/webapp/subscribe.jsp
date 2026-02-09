<!DOCTYPE html>
<html>
<head>
<title>Newsletter</title>
<style>
body{
    margin:0;
    font-family:'Segoe UI',sans-serif;
}

.subscribe-section{
    background:#ece9f8;
    padding:70px 40px;
    display:flex;
    align-items:center;
    justify-content:center;
}

.subscribe-box{
    max-width:600px;
    text-align:left;
}

.subscribe-box h2{
    font-size:30px;
    margin-bottom:10px;
}

.subscribe-box h2 span{
    color:#ff2f92;
}

.subscribe-box p{
    font-size:14px;
    margin-bottom:20px;
}

.subscribe-form{
    display:flex;
    gap:10px;
}

.subscribe-form input{
    flex:1;
    padding:12px;
    border:1px solid #ccc;
    font-size:14px;
}

.subscribe-form button{
    padding:12px 25px;
    background:#2b145d;
    color:#fff;
    border:none;
    cursor:pointer;
}

.subscribe-form button:hover{
    background:#ff2f92;
}
</style>
</head>

<body>

<section class="subscribe-section">
    <div class="subscribe-box">
        <h2>Know The Sweet <span>Deal First !</span></h2>
        <p>Sign Up to our newsletter and get to know the sweets first!</p>

        <form class="subscribe-form" action="subscribe" method="post">
    <input type="email" name="email" placeholder="Enter your email address" required>
    <button type="submit">Subscribe</button>
</form>
<%
String msg = (String) request.getAttribute("msg");
if (msg != null) {
%>
    <p style="color:green; font-weight:bold; margin-top:10px;">
        <%= msg %>
    </p>
<%
}
%>

    </div>
</section>

</body>
</html>
