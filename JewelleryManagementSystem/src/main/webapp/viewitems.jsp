<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jewellery Management System</title>
<style>
body{
    background-image: url("https://res.cloudinary.com/dhirfaczi/image/upload/v1743686606/ChatGPT_Image_Apr_2_2025_09_28_42_PM_nb7xes.png"); 
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
    margin-left:15%;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
.table{
border-color:white;
color:white;
margin-top:16%;
margin-left:5%;
font-weight:bold;
font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
position:fixed;
background-color:#042042;
}
td, th{
color:white;
padding:10px;
}
.items{
color:white;
font-weight:bold;
font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
margin-top:12%;
margin-left:13%;
position:fixed;
}
table a{
color:white;
text-decoration:none;}
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
    <h1 class="items">Jewellery Items</h1>
    <div class="table">
    <table border='1' cellspacing='0'>
                    <tr>
                    <th>Id</th>
                    <th>Name</th>
                     <th>Type</th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Buy</th>
                    </tr>
                    <c:forEach var="jms" items="${jewelleryList}">
                    <tr>
                    <td><c:out value="${jms.id}"></c:out></td>
                    <td><c:out value="${jms.name}"></c:out></td>
                    <td><c:out value="${jms.type}"></c:out></td>
                    <td><c:out value="${jms.price}"></c:out></td>
                    <td><c:out value="${jms.description}"></c:out></td>
                    <td><a href='buy.jsp?id=${jms.id}&name=${jms.name}&type=${jms.type}&price=${jms.price}&description=${jms.description}'>Buy</a></td>
                    </tr>
                    </c:forEach>
                    </table>
    </div>
    </div>
</body>
</html>