<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jewellery Management System</title>
<style>
body{
    background-image: url("https://res.cloudinary.com/dhirfaczi/image/upload/v1743607899/ChatGPT_Image_Apr_2_2025_09_01_22_PM_zjq53j.png"); 
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
form{
border:1px solid white;
margin-top:18%;
margin-left:35%;
margin-right:70%;
color:white;
font-weight:bold;
font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
position:fixed;
width:30%;
}
.h2{

color:white;
font-weight:bold;
font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
margin-left:43%;
margin-top:15%;
position:fixed;
}
.search{
border-radius:5px;
border:none;
margin-left:40%;
margin-top:4%;
margin-bottom:3%;
padding:2%;
cursor:pointer;
}
input{
border-radius:5px;
border:none;
padding:2%;
margin-top:4%;
margin-left:3%;
}
.item{
margin-top:3%;
margin-left:35%;
}
label{
margin-left:2%;}
</style>
</head>
<body>
<!-- navbar-->

<div class="navbar">
        <a href="customer.jsp">Home</a>
        <a href="find">View Items</a>
        <a href="customersearch">Search Items</a>
        <a href="logout">Logout</a>
    </div>  
    <div>
   <h2 class="h2">Search Item Here</h2>
    <form action='customersearch' >
    <div class="item">
    <%if(request.getAttribute("status") !=null){ %>
    <%=request.getAttribute("status") %>
    <%} %>
    </div>
        <label for="id">Enter ID Here</label>
        <input type="text" id="id" name="id" placeholder="Enter ID"><br>
        <button type="submit" class="search">Search</button>
    </form>
   
    </div>
</body>
</html>