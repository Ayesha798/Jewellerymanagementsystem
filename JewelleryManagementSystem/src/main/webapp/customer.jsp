<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jewellery Management System</title>
<style>
body{
    background-image: url("https://res.cloudinary.com/dhirfaczi/image/upload/v1743609161/ChatGPT_Image_Apr_2_2025_09_21_25_PM_a7n8f2.png"); 
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
    margin-left:14%;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
.welcome{
	color:white;
	font-weight:bold;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin-top:6%;
	margin-left:35%;
	position:fixed;
}
</style>
</head>
<body>
<!-- navbar -->

<div class="navbar">
        <a href="customer.jsp">Home</a>
        <a href="find">View Items</a>
        <a href="customersearch.jsp">Search Items</a>
        <a href="logout">Logout</a>
    </div> 
     <div>
    <h1 class="welcome">Welcome to <%=session.getAttribute("email") %></h1>
    </div>
</body>
</html>