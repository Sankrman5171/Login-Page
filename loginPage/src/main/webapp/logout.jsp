<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .logout-card {
            background: #ffffff;
            padding: 30px 50px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            text-align: center;
        }
        h2 {
            color: #343a40;
        }
        .msg {
            font-size: 18px;
            margin: 20px 0;
            color: #6c757d;
        }
        a {
            display: inline-block;
            text-decoration: none;
            background-color: #007bff;
            color: white;
            padding: 10px 25px;
            border-radius: 5px;
            font-weight: bold;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
	<div class="logout-card">
        <h2>You have been logged out successfully!</h2>
        <div class="msg">Thank you for using our service.</div>
        <a href="login.html">Back to Login</a>
    </div>

</body>
</html>