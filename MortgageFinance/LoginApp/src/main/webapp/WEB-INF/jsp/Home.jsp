<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<style type="text/css">

/* Add a black background color to the top navigation */
.topnav {
	background-color: black;
	overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 15px 16px;
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
/*	border: 3px solid #f1f1f1;*/
    padding: 0;
}

/* Full-width inputs */
input[type=text], input[type=password] {
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

.registerButton1 {
	background-color: cadetblue;
	float: right;
    margin-left: 246px;
	align-content: center;
	width: auto;
	margin-right: 10px;
	border-radius: 0px;
	justify-content: center;
	padding: 9px;
}
    .registerButton {
	background-color: cadetblue;
	float: right;
/*    margin-left: 270px;*/
	align-content: center;
	width: auto;
	margin-right: 10px;
	justify-content: center;
	padding: 9px;
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

img {
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
	/*    height: 1000px;*/
}
.alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
  opacity: 1;
  transition: opacity 0.6s;
  margin-bottom: 15px;
  width:80%;
}

.alert.success {background-color: #04AA6D;}
.alert.info {background-color: #2196F3;}
.alert.warning {background-color: #ff9800;}

.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}
</style>
</head>
<body>
    <div class="topnav">
  <a class="active" href="Home">Home</a>
  <a href="invalid">Contact</a>
  <a href="selectProfile">Sign in</a>
        <a class="registerButton" href="registerAdmin">
           Register Admin
            </a>
        
       
       <a href="registerUser" class="registerButton">Register</a>
        
  
</div><br><br>
	${logoutMsg}
    <div class="grid-container">
            <div class="header-text">
                <h1>Mortgage Finance System</h1>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text</p>
                <a class="btn btn-light header-btn">Read More <img src="/Files/MyLogo.png" alt="" style="width:50px"></a>
            </div>
            <div class="header-img">
                <img src="/Files/MyLogo.png" alt="">
        </div>
    </div>
<main>
                <h2>Our Software is a Quick spending Solution for Generic</h2>
                <p class="sub-header">Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae minima totam voluptas.</p>
    <div class="grid-container2">
                <div class="row light-section-items">
                    <div class="light-section-item col-sm-6 col-md-3">
                        <img src="/Files/MyLogo.png" alt="">
                        <p class="title">Expand Your Reach</p>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora adipisci qui ad soluta aperiam ullam?</p>
                        <a>More <img src="img/arrow-right.svg" alt="" style="width:20px"></a>
                    </div>
                    <div class="light-section-item col-sm-6 col-md-3">
                        <img src="/Files/MyLogo.png" alt="">
                        <p class="title">Higher Annulized Growth</p>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora adipisci qui ad soluta aperiam ullam?</p>
                        <a>More <img src="img/arrow-right.svg" alt="" style="width:20px"></a>
                    </div>
                    <div class="light-section-item col-sm-6 col-md-3">
                        <img src="/Files/MyLogo.png" alt="">
                        <p class="title">Book Your Provider</p>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora adipisci qui ad soluta aperiam ullam?</p>
                        <a>More <img src="img/arrow-right.svg" alt="" style="width:20px"></a>
                    </div>
                    <div class="light-section-item col-sm-6 col-md-3">
                        <img src="img/icon/Group 1955.svg" alt="">
                        <p class="title">Secure multi-ysable</p>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora adipisci qui ad soluta aperiam ullam?</p>
                        <a>More <img src="img/arrow-right.svg" alt="" style="width:20px"></a>
                    </div>
                 </div>
            </div>
          <div class="container">
            <div class="row">

              <div class="col-lg-6 text">
              <h2>Why Choose Us</h2>
              <p class="sub-header"> Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
            
                Lorem Ipsum has been the industry's standard dummy.</p>
            <ol class="ps-0 col-lg-9">
              <li>
                Best Performance
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
              </li>
              <li>
                Easy Settings
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
              </li>
              <li>
                Secure Multi Usable
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
              </li>
            </ol>
            </div>
          </div>
        </div>
          <div class="bg-img">
          <img src="img/why-choose.png" alt="">
          </div>
            <div class="container text-center">
                <h2>How it Works</h2>
                <p class="sub-header">Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae minima totam voluptas.</p>
                <div class="row light-section-items">
                    <div class="light-section-item col-md-4">
                        <img src="img/features_1.svg" alt="">
                        <p class="title">Visual Site Builder</p>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora adipisci qui ad soluta aperiam ullam?</p>
                        <a>More <img src="img/arrow-right.svg" alt="" style="width:20px"></a>
                    </div>
                    <div class="light-section-item col-md-4">
                        <img src="img/features_2.svg" alt="">
                        <p class="title">Visual Site Builder</p>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora adipisci qui ad soluta aperiam ullam?</p>
                        <a>More <img src="img/arrow-right.svg" alt="" style="width:20px"></a>
                    </div>
                    <div class="light-section-item col-md-4">
                        <img src="img/features_3.svg" alt="">
                        <p class="title">250 + Element Blocks</p>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora adipisci qui ad soluta aperiam ullam?</p>
                        <a>More <img src="img/arrow-right.svg" alt="" style="width:20px"></a>
                    </div>
                 </div>
            </div>
            <script>
var close = document.getElementsByClassName("closebtn");
var i;

for (i = 0; i < close.length; i++) {
  close[i].onclick = function(){
    var div = this.parentElement;
    div.style.opacity = "0";
    setTimeout(function(){ div.style.display = "none"; }, 600);
  }
}
</script>
</body>
</html>