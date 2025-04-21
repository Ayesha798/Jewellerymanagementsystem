<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jewellery Management System</title>
<style>
body{
    background-image: url("https://static.vecteezy.com/system/resources/thumbnails/039/848/607/small_2x/ai-generated-diamond-white-blue-red-green-yellow-diamonds-jewellery-design-luxury-diamonds-background-sapphire-gemstone-macro-diamonds-photo.jpg"); 
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
margin-right:55%;
margin-left:65%;
margin-top:8%;
 box-shadow: 0 0 10px rgba(0,0,0,0.3);
    background-color:#042042;
    border-radius:5px;
    border:none;
    padding:1%;
    position:fixed;
    width:400px;
}
label{
color:white;
font-weight:bold;
 font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
margin-left:40%;

}
input{
border-radius:5px;
border:none;
padding:2%;
width:50%;
margin-left:20%;

}
textarea{
border-radius:5px;
border:none;
padding:2%;
width:50%;
margin-left:20%;
}
button{
border-radius:5px;
margin-left:40%;
padding:2%;
border:none;
margin-top:1%;
margin-bottom:1%;
cursor:pointer;
}
.register{
color:white;
font-weight:bold;
margin-left:25%;
font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
</style>
</head>
<body>
<!-- navbar  -->
<div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="#">Registration</a>
        <a href="login.jsp">Login</a>
        <a href="about.jsp">About Us</a>
        <a href="contact.jsp">Contact Us</a>
    </div> 
	<div>
	<form action="saveuser">
	<div class="register">
				<%if(request.getAttribute("status") !=null){ %>
				<%=request.getAttribute("status") %>
					<%} %>
				</div>
  <label for="name">Name:</label><br>
  <input type="text" id="name" name="name" required><br><br>
  
  <label for="email">Email:</label><br>
  <input type="email" id="email" name="email" required><br><br>
  
  <label for="password">Password:</label><br>
  <input type="password" id="password" name="password" required><br><br>
  
  <label for="mobile">Mobile:</label><br>
  <input type="tel" id="mobile" name="mobile" pattern="[0-9]{10}" required><br><br>
  
  <label for="address">Address:</label><br>
  <textarea id="address" name="address" rows="3" cols="30" required></textarea><br><br>
  
  <button type="submit">Register</button>
</form>
	</div>
</body>
</html>