<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
    /* Add a black background color to the top navigation */
.topnav {
  background-color: #333;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
/* Bordered form */
form {
  border: 3px solid #f1f1f1;
}

/* Full-width inputs */
input[type=email], input[type=password] {
  width: 100%;
  height: 50px;
  padding: 20px 20px;
  margin: 20px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: royalblue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

/* Add a hover effect for buttons */
button:hover {
  opacity: 0.8;
}

/* Extra style for the cancel button (red) */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the avatar image inside this container */
.imgcontainer {
  text-align: center;
/*  margin: 24px 0 12px 0;*/ 
}

/* Avatar image */
img.avatar {
  width: 100%;
  border-radius: 50%;
}
    img{
        width: 400px;
    }

/* Add padding to containers */
.container {
  padding: 50px;
    font-size: 20px;
    align-content: center;
}
.container2 {
  padding: 16px;
    font-size: 20px;
    align-content: center;
    padding: 20px;
    margin-top: 20px;
}

/* The "Forgot password" text */
span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */   
.grid-container {
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-gap: 10px;
    height: 1000px;
}
</style>    
</head>
<body>
   <div class="topnav">
  <a href="Home">Home</a>
  <a href="invalid">Contact</a>
  <a class="active" href="login">Sign in</a>
  
</div>
<form action="securityQuestionUserId" method="post">
    <div class="grid-container">
  <div class="imgcontainer" >
    <img src="/Files/MyLogo.png" alt="Avatar" class="avatar" width="8000" height="400">
  </div>

  <div class="container">
    <label for="email"><b>Enter Your Email</b></label>
    <input type="email" placeholder="Enter Email Address" name="email" required>

    <button type="submit" >Search</button><br>
    <h2>${errorMsg}</h2>

        </div>
    </div>
</form>    
    </body>
</html>