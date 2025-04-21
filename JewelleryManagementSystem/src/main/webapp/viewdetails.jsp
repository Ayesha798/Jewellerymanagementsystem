<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jewellery Management System</title>
<style>
body{
    background-image: url("https://res.cloudinary.com/dhirfaczi/image/upload/v1743606824/ChatGPT_Image_Apr_2_2025_08_42_37_PM_wjfjhl.png"); 
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
.table{
border-color:white;
color:white;
margin-top:12%;
margin-left:2%;
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
margin-top:8%;
margin-left:15%;
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
        <a href="manager.jsp">Home</a>
        <a href="findAll">View Items</a>
        <a href="search.jsp">Search Items</a>
        <a href="additems.jsp">Add Items</a>
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
                    <th>Edit</th>
                    <th>Delete</th>
                    </tr>
                    <c:forEach var="jms" items="${jewelleryList}">
                    <tr>
                    <td><c:out value="${jms.id}"></c:out></td>
                    <td><c:out value="${jms.name}"></c:out></td>
                    <td><c:out value="${jms.type}"></c:out></td>
                    <td><c:out value="${jms.price}"></c:out></td>
                    <td><c:out value="${jms.description}"></c:out></td>
                    <td><a href='edit.jsp?id=${jms.id}&name=${jms.name}&type=${jms.type}&price=${jms.price}&description=${jms.description}'>Edit</a></td>                   
                    <td><a href='delete?id=${jms.id}'>Delete</a></td>
                    </tr>
                    </c:forEach>
                    </table>
    </div>
    </div>
</body>
</html>