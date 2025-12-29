<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    if (session == null || session.getAttribute("user") == null) {
        response.sendRedirect("index.jsp");
        return;
    }
    String user = (String) session.getAttribute("user");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<style>
    body { font-family: Arial, sans-serif; background-color: #f0f8ff; text-align: center; }
    .welcome-container { margin-top: 100px; }
    h2 { color: #333; }
    h3 { color: #555; }
    input[type=submit] { padding: 8px 16px; background-color: #f44336; color: white; border: none; cursor: pointer; }
    input[type=submit]:hover { background-color: #d32f2f; }
</style>
</head>
<body>
<div class="welcome-container">
    <h2>Hello <%= user %>!</h2>
    <h3>Welcome to my website..</h3>

    <form action="logout" method="post">
        <input type="submit" value="Logout" />
    </form>
</div>
</body>
</html>
