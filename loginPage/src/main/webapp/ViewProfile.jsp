<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="userBean.userBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .profile-card {
            background: #fff;
            padding: 30px 50px;
            border-radius: 10px;
            box-shadow: 0 0 12px rgba(0,0,0,0.2);
            text-align: center;
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
        }
        p {
            font-size: 18px;
            color: #555;
            margin: 10px 0;
        }
        a {
            display: inline-block;
            text-decoration: none;
            color: #fff;
            background: #007bff;
            padding: 10px 20px;
            margin: 10px 5px;
            border-radius: 5px;
            transition: background 0.3s ease;
        }
        a:hover {
            background: #0056b3;
        }
    </style>
<body>
	<div class="profile-card">
        <%
            String fName = (String)request.getAttribute("fname");
            userBean ub = (userBean)application.getAttribute("ubean");
        %>
        <h2>Welcome, <%= fName %>!</h2>
        <p><strong>First Name:</strong> <%= ub.getfName() %></p>
        <p><strong>Last Name:</strong> <%= ub.getlName() %></p>
        <p><strong>City:</strong> <%= ub.getCity() %></p>
        <p><strong>Email:</strong> <%= ub.getmId() %></p>
        <p><strong>Phone:</strong> <%= ub.getPhNo() %></p>

        <a href="edit">Edit Profile</a>
        <a href="logout">Logout</a>
    </div>

</body>
</html>