<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>CakeShop | Login</title>
<style>
body{
    margin:0;
    font-family:Segoe UI;
    background:linear-gradient(135deg,#fbc2eb,#a6c1ee);
}
.login-box{
    width:360px;
    margin:90px auto;
    background:#fff;
    padding:30px;
    border-radius:12px;
    box-shadow:0 12px 25px rgba(0,0,0,0.2);
}
.login-box h2{
    text-align:center;
    color:#d63384;
}
.login-box input{
    width:100%;
    padding:12px;
    margin:10px 0;
    border-radius:8px;
    border:1px solid #ccc;
}
.login-box button{
    width:100%;
    padding:12px;
    background:#d63384;
    border:none;
    color:#fff;
    font-size:16px;
    border-radius:8px;
    cursor:pointer;
}
.error{
    color:red;
    text-align:center;
}
</style>
</head>

<body>

<jsp:include page="navbar.jsp"/>

<div class="login-box">
<h2>Login</h2>

<p class="error">
<%
    String err = (String)request.getAttribute("error");
    if(err != null){
        out.print(err);
    }
%>
</p>

<form action="LoginServlet" method="post">
    <input type="text" name="uname" placeholder="Username" required>
    <input type="password" name="password" placeholder="Password" required>
    <button type="submit">Login</button>
</form>

</div>
</body>
</html>
