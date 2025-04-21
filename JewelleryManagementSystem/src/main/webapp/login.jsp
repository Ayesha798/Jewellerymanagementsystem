<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jewellery Management System</title>
<style>
body{
    background-image: url("https://laxmipearls.com/wp-content/uploads/2024/04/MG_0235.jpg"); 
    background-size: cover; 
    background-repeat: no-repeat; 
    background-position: center; 
    background-attachment: fixed;
    height:100vh;
    width:100vw;
    margin:0;
    padding:0;
}
.navbar{
    margin-right:70%;
    box-shadow: 0 0 10px rgba(0,0,0,0.3);
    background-color:#042042;
    padding:1%;
    width:100%;
    position:fixed;
}
.navbar a{
    text-decoration: none;
    color:white;
    font-weight: bold;
    margin-left:12%;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
.label{
color:white;
font-weight:bold;
font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
.login-container {
            padding: 40px;
            border-radius: 10px;
            background-color:#042042 ;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2);
            width: 400px;
            margin-top:15%;
            margin-left:38%;
            position:fixed;
           
        }
        .login-container h2 {
            margin-bottom: 20px;
            text-align: center;
        }
        .password {
            width: 70%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-left:5%;
        }
        .login-container button {
            width: 70%;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-left:15%;
            margin-top:3%;
        }
        .login-container button:hover {
            background-color: #0056b3;
        }
        .login-container label{
        font-weight:bold;
        color:white;
        text-align:center;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .email1{
        margin-left:12% !important;
        width: 70%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
       }
       .login{
       color:white;
       font-weight:bold;
       font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
       margin-left:20%;
       }
</style>
</head>
<body>
<!-- navbar  -->

<div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="register.jsp">Registration</a>
        <a href="#">Login</a>
        <a href="about.jsp">About Us</a>
        <a href="contact.jsp">Contact Us</a>

    </div>
   
    <div class="login-container">
        <form action='login'>
        <div class="login">
       <%if(request.getAttribute("status") !=null){ %>
       <%=request.getAttribute("status") %>
       <%} %>
       </div>
        <label>Email</label>
            <input type="email" name="email" placeholder="Email" required class="email1">
             <label>Password</label>
            <input type="password" name="password" placeholder="Password" required class="password">
            <button type="submit">Login</button>
        </form>
    </div>
    

</body>
</html>