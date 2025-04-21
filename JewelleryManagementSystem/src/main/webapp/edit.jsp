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
.update{
color:white;
font-weight:bold;
font-size:30px;
margin-top:4%;
margin-left:70%;
font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
position:fixed;
}
</style>
</head>
<body>
<!-- navbar --> 
<div class="navbar">
        <a href="manager.jsp">Home</a>
        <a href="findAll">View Items</a>
        <a href="search">Search Items</a>
        <a href="logout">Logout</a>
    </div> 
	<div>
	<div class="update">
	<%if(request.getAttribute("status") !=null){ %>
	<%=request.getAttribute("status") %>
	<%} %>
	</div>
	<form action='edit'>
	
  <label for="id">Id</label><br>
  <input type="text" id="id" name="id" value = '<%=request.getParameter("id")%>'required><br><br>
  
  <label for="name">Name</label><br>
  <input type="name" id="name" name="name" value = '<%=request.getParameter("name")%>' required><br><br>
  
  <label for="Type">Type</label><br>
  <input type="type" id="type" name="type"  value = '<%=request.getParameter("type")%>'required><br><br>
  
  <label for="price">Price</label><br>
  <input type="price" id="price" name="price" value = '<%=request.getParameter("price")%>' required><br><br>
  
  <label for="description">Description</label><br>
  <textarea id="description" name="description" rows="3" cols="30"><%=request.getParameter("description")%> </textarea><br><br>
  
  <button type="submit">Update</button>
</form>
	</div>
</body>
</html>