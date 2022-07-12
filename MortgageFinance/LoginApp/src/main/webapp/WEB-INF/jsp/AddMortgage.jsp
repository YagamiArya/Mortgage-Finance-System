<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
    margin: 5%;
    background-color: white
}

/* Full-width inputs */
input[type=text], input[type=number] {
	width: 100%;
	height: 50px;
	padding: 20px 20px;
	margin: 20px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}
    select{
        width: 100%;
	height: 50px;
	padding-left: 20px;
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

.registerButton {
	background-color: cadetblue;
	float: right;
	align-content: center;
	width: auto;
	margin-right: 10px;
	border-radius: 50px;
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
    .heading{
        text-align: center;
        color: blue;
        font-family: serif;
        font-size: 40px;
        padding: 20px;
    }
    body{
        background-color: lavender;
    }
</style>
</head>

<body>
  <div class="heading">
<label for="Admin" ><b>Add Mortgage</b></label>
    </div>
<form action="addMortgageEntries" method="post">
    <div class="grid-container">
  <div class="imgcontainer" >
    <img src="/Files/MyLogo.png" alt="Avatar" class="avatar" width="8000" height="400">
  </div>	

  <div class="container"> 

      <label for="mortgageItemType"><b>Mortgage Item Type: </b></label>

<select name="mortgageItemType" id="mortgageItemType">
  <option value="goldOrnaments">Gold Ornaments</option>
  <option value="ornamentsWithPreciousStone">Ornaments with precious stone</option>
  <option value="silverArticles">Silver Articles</option>
  <option value="Home">Home</option>
  <option value="Land">Land</option>
  <option value="Shop">Shop</option>
</select><br><br>
    <label for="Value"><b>Enter the Value of the Mortgage Item</b></label>
    <input type="number" placeholder="Enter value" name="value" required>
      <label for="rateOfInterest"><b>Enter the Rate of Interest</b></label>
    <input type="number" placeholder="Enter rate of Interest" name="rateOfInterest" required>
<br><br>
    <label for="psw"><b>Last Update date: </b></label>
    <input type="text" onfocus="getDate()" id="date" name="lastUpdatedDate">
      <br><br>


  <div class="grid-container" style="background-color:#f1f1f1; padding: 20px;">
    <button type="submit">Add Mortgage</button>
    <button type="button" class="cancelbtn">Cancel</button>
  </div>
  <h2>${message}</h2>
        </div>
    </div>
</form>

    <script>
        function getDate(){
    var today = new Date();

document.getElementById("date").value = today.getFullYear() + '-' + ('0' + (today.getMonth() + 1)).slice(-2) + '-' + ('0' + today.getDate()).slice(-2);


}
    </script>
</body>

</html>