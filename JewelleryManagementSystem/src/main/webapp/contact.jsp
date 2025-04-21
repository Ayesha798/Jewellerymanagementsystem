<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jewellery Management System</title>
<style>
body{
    background-image: url("https://res.cloudinary.com/dhirfaczi/image/upload/v1743606429/y91zgx5agueqprwy5fmn.png"); 
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
form {
            width: 350px;
            margin: 0 auto;
            background: #042042;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-top:5%;
            margin-left:35%;
           position:fixed;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color:white;
             font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        input, textarea, select, button {
            width: 90%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: #007BFF;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #916b00;
}
.submit{
color:white;
font-weight:bold;
 font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
 text-align:center;
}
</style>
</head>
<body>
<!-- navbar --> 

<div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="register.jsp">Registration</a>
        <a href="login.jsp">Login</a>
        <a href="about.jsp">About Us</a>
        <a href="#">Contact Us</a>

    </div> 
 
    <div>
    <form action='contact'>
    <div class="submit">
    <%if(request.getAttribute("status") !=null){ %>
				<%=request.getAttribute("status") %>
					<%} %>
					</div>
        <label for="fullName">Name</label>
        <input type="text" id="name" name="name" placeholder="Enter your name" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>

        <label for="phone">Mobile</label>
        <input type="tel" id="phone" name="mobile" placeholder="Enter your phone number" required/>
        <label for="subject">Subject/Inquiry Type</label>
        <select id="subject" name="subject">
            <option value="order" name="subject">Order Inquiry</option>
            <option value="product" name="subject">Product Information</option>
            <option value="repair" name="subject">Repair/Service</option>
            <option value="feedback" name="subject">Feedback/Complaint</option>
            <option value="other" name="subject">Other</option>
        </select>
        <label for="message">Message</label>
        <textarea id="message" name="message" rows="3" placeholder="Type your message here..." required></textarea>
        <button type="submit">Submit</button>
    </form>
    </div>
</body>
</html>