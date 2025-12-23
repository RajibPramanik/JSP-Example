<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
    body { font-family: Arial, sans-serif; background-color: #f4f4f4; text-align: center; }
    .login-container { background-color: #fff; padding: 20px; margin: 100px auto; width: 300px; 
                       border-radius: 8px; box-shadow: 0px 0px 10px #aaa; }
    table { margin: 0 auto; }
    input[type=text], input[type=password] { width: 100%; padding: 8px; margin: 5px 0; }
    input[type=submit] { padding: 8px 16px; background-color: #4CAF50; color: white; border: none; cursor: pointer; }
    input[type=submit]:hover { background-color: #45a049; }
    .error { color: red; font-size: 14px; margin-bottom: 10px; }
</style>
</head>
<body>
<div class="login-container">
    <h3>Enter Login Details</h3>
    
    <!-- Error Message -->
    <div class="error">
        <%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %>
    </div>

    <form action="login" method="post">
        <table>
            <tr>
                <td>User Name:</td>
                <td><input type="text" name="usName" required /></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="usPass" required /></td>
            </tr>
        </table>
        <br>
        <input type="submit" value="Login" />
    </form>
</div>
</body>
</html>
