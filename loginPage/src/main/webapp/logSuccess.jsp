<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="userBean.userBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: #ffffff;
            padding: 40px 50px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
        }
        h2 {
            color: #28a745;
            margin-bottom: 30px;
        }
        a {
            display: inline-block;
            text-decoration: none;
            color: #ffffff;
            background-color: #007bff;
            padding: 12px 24px;
            border-radius: 8px;
            margin: 10px;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
        window.onload = function() {
            alert("Login Successful!");
        }
    </script>
</head>
<body>
	<div class="container">
        <%
            userBean ub = (userBean) application.getAttribute("ubean");
        %>
        <h2>Welcome, <%= ub.getuName() %>!</h2>

        <a href="view">View Profile</a>
        <a href="logout">Logout</a>
    </div>

</body>
</html>