<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="userBean.userBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .edit-card {
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
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        input[type="text"], input[type="submit"] {
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            background: #28a745;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background: #218838;
        }
        .msg {
            font-size: 18px;
            color: #333;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
	 <div class="edit-card">
        <%
            String fName = (String)request.getAttribute("fname");
            userBean ub = (userBean)application.getAttribute("ubean");
        %>
        <h2>Welcome, <%= fName %>!</h2>
        <div class="msg">Edit Your Profile Below</div>
        <form action="update" method="post">
            City:
            <input type="text" name="city" value="<%= ub.getCity() %>">
            Mail ID:
            <input type="text" name="mid" value="<%= ub.getmId() %>">
            Phone No:
            <input type="text" name="phno" value="<%= ub.getPhNo() %>">
            <input type="submit" value="Update Profile">
        </form>
    </div>

</body>
</html>