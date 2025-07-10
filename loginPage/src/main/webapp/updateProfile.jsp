<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="userBean.userBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e9ecef;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .update-card {
            background: #fff;
            padding: 30px 50px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.15);
            text-align: center;
        }
        h2 {
            color: #333;
        }
        .message {
            font-size: 18px;
            color: #28a745;
            margin: 20px 0;
        }
        a {
            display: inline-block;
            margin: 10px;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }
        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
	 <div class="update-card">
        <%
            String fName = (String)request.getAttribute("fname");
            String msg = (String)request.getAttribute("msg");
        %>
        <h2>Hello, <%= fName %>!</h2>
        <div class="message"><%= msg %></div>
        <a href="view">View Profile</a>
        <a href="logout">Logout</a>
    </div>

</body>
</html>