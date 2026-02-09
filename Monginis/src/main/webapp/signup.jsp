<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>CakeShop | Sign Up</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #ff9a9e, #fad0c4);
            height: 100vh;
        }
        .auth-box {
            width: 380px;
            background: #fff;
            padding: 30px 35px;
            margin: 80px auto;
            border-radius: 12px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.2);
            animation: fadeIn 0.8s ease-in-out;
        }
        .auth-box h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #d63384;
            font-weight: 600;
        }
        .auth-box input[type="text"],
        .auth-box input[type="password"] {
            width: 100%;
            padding: 12px 14px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 14px;
            transition: 0.3s;
        }
        .auth-box input:focus {
            border-color: #d63384;
            outline: none;
            box-shadow: 0 0 6px rgba(214,51,132,0.3);
        }
        .auth-box button {
            width: 100%;
            padding: 12px;
            margin-top: 15px;
            border: none;
            border-radius: 8px;
            background: #d63384;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }
        .auth-box button:hover {
            background: #b82b6f;
            transform: translateY(-1px);
        }
        .error {
            color: #dc3545;
            text-align: center;
            font-size: 14px;
            margin-bottom: 10px;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(15px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>

    <jsp:include page="navbar.jsp" />

    <div class="auth-box">
        <h2>Create Account</h2>

        <p class="error">
            <%
                String msg = (String) request.getAttribute("msg");
                if (msg != null) {
                    out.print(msg);
                }
            %>
        </p>

        <form action="SignupServlet" method="post">
            <input type="text" name="uname" placeholder="Username" required />
            <input type="password" name="password" placeholder="Password" required />
            <button type="submit">Sign Up</button>
        </form>

        <p>Already have an account? <a href="Login.jsp">Login here</a></p>
    </div>

</body>
</html>
