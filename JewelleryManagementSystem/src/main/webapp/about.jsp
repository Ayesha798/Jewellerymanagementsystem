<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jewellery Management System</title>
<style>
body { 
    background-color: #042042;
    background-size: cover; 
    background-repeat: no-repeat; 
    background-position: center; 
    background-attachment: fixed;
    height: 100vh;
    width: 100vw;
    margin: 0;
    padding: 0;
}
.h1{
color:white;
font-weight:bold;
margin-left:2%;
margin-top:15%;
 font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
 font-size:30px;
 position:fixed;
}
.system{
color:white;
font-weight:bold;
font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
 font-size:60px;
 margin-left:30%;
 margin-top:0.5%;
}
.navbar{
     margin-right:70%;
    box-shadow: 0 0 10px rgba(0,0,0,0.3);
    background-color:#042042;
    padding:1%;
    width:100%;
    position:fixed;}
.navbar a{
    text-decoration: none;
    color:white;
    font-weight: bold;
    margin-left:8%;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
.carousel-inner img {
  width: 100%; 
  height: 400px;
  object-fit: cover; 
}
.carousel-container {
  display: flex;
  margin-left:48%;
  width:50%; 
  margin-top:8%;
  position:fixed;
}

.paragraph{
color:white;
font-weight:bold;
font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
margin-right:55%;
margin-left:5%;
margin-top:10%;
position:fixed;
background-color:#042042;
border-radius:5px;
padding:2%;
box-shadow: 0 0 10px rgba(0,0,0,0.3);
}
</style>
 <!--bootstrap bundle-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://kit.fontawesome.com/9e2cf3625a.js" crossorigin="anonymous"></script>
</head>
<body>
<!-- navbar-->

<div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="register.jsp">Registration</a>
        <a href="login.jsp">Login</a>
        <a href="#">About Us</a>
        <a href="contact.jsp">Contact Us</a>
      

    </div>
    <div class="paragraph">
    <p>A jewellery management system is a comprehensive solution designed to streamline the operations and inventory processes of jewellery businesses. It enables efficient tracking of stock, managing customer data, processing sales and purchases, and even handling repair orders or custom designs. With features such as barcode integration, automated billing, and inventory forecasting, the system helps businesses save time and reduce errors. Additionally, it can provide detailed analytics and reporting, assisting owners in making informed decisions to optimize profitability and growth. By integrating modern technology, a jewellery management system enhances operational efficiency and elevates customer experience in the highly competitive jewellery market.</p>
   
    </div>
   <div class="carousel-container">
  <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="https://i.pinimg.com/736x/ff/9c/20/ff9c204f62b65141a988cde3c7b1484f.jpg" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="https://media.istockphoto.com/id/1277517088/photo/fancy-designer-antique-golden-bracelets-for-woman-fashion.jpg?s=612x612&w=0&k=20&c=n49O0S5rIgzxJX5bU1YjwRHfou0DYPcmsv-N5JAAM14=" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="https://janakigoldanddiamonds.com/assets/images/home-4/banner-2.png" class="d-block w-100" alt="...">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</div>
	 <!--bootstrap bundle-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>	
</body>
</html>