<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Apply for Loan</title>
<style type="text/css">
/* Style the links inside the navigation bar */
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
.body{
    background-color: blue;
}
.heading{
    align-content: center;
    width: 100%;
    margin-top: 20px;
}
form {
  border: 3px solid #f1f1f1;
}

/* Full-width inputs */
    input[type=text], input[type=password], input[type=number], input[type=email] {
  width: 100%;
  height: 50px;
  padding: 20px 20px;
  margin: 20px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
    input[type=file]{
        width: 100%;
  height: 50px;
  padding: 20px 20px;
  margin: 20px 0;
  display: inline-block;

  box-sizing: border-box;
    }
    input[type=date]{
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
  margin: 8px 8px;
  border: none;
  cursor: pointer;
  width: 20%;
}

/* Add a hover effect for buttons */
button:hover {
  opacity: 0.8;
}

.logOutButton{
    background-color: blueviolet;
    float: right;
    align-content: center;
    width: 150px;
    height: 50px;
    font-size: 20px;
    margin-right: 10px;
    border-radius: 50px;
    justify-content: center;
    padding: 9px;
}


/* Extra style for the cancel button (red) */
.cancelbtn {
  width: 20%;
/*  padding: 10px 18px;*/
  background-color: #f44336;
}
.registerButton{
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
  border-radius: 50%;
}
    img{
        width: 400px;
    }

/* Add padding to containers */
.container {
  padding: 16px;
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
</style>
</head>
<body>
	<div><br><br>
	<h2>Please Fill the Loan Details</h2>
	<button onclick="document.location='Home'" class="logOutButton">Log out</button><br>
  
</div>
	<div class="heading">
		<h2>Get your Loan in easy steps</h2>
	</div>
	<form action="Apply" method="post" name="applyLoan"
		onsubmit="return validateRequired()">
		<fieldset>
			<div class="grid-container">
				<div class="container">
					<!--    <img src="MyLogo.png" alt="Avatar" class="avatar" >-->
					<label for="name"><b>Name</b></label> <input type="text"
						placeholder="Enter Your Name" name="name" > <label
						for="address"><b>Address</b></label> <input type="text"
						placeholder="Enter Your Address" name="address" > <label
						for="phoneNumber"><b>Phone Number</b></label> <input type="number"
						placeholder="Enter Phone Number" name="phoneNumber" >

					<label for="email"><b>Email Address</b></label> <input type="email"
						placeholder="Enter Email Adress" name="email" > <label
						for="otherContact"><b>Other Contacts</b></label> <input
						type="text" placeholder="You can Enter other Contacts"
						name="otherContact"> <label for="resume"><b>Upload
							Resume</b></label> <input type="file" id="resume" name="resume"> <label
						for="projectPlan"><b>Upload Project Plan</b></label> <input
						type="file" id="projectPlan" name="projectPlan">

				</div>

				<div class="container">

					<label for="personalCreditReport"><b>Upload Personal
							Credit Report</b></label> <input type="file" id="personalCreditReport"
						name="personalCreditReport"> <label
						for="businessCreditReport"><b>Upload Business Credit
							Report</b></label> <input type="file" id="businessCreditReport"
						name="businessCreditReport"> <label
						for="financialStatements"><b>Upload Financial
							Statements</b></label> <input type="file" id="financialStatements"
						name="financialStatements">


				</div>
			</div>
		</fieldset>
		<fieldset>
			<h2>
				<b>Enter Loan Details</b>
			</h2>
			<div class="container">
				<label for="mortgageItem"><b>Mortgage Item</b></label> <input
					type="text" placeholder="Enter the Mortgage Item Name"
					name="mortgageItem" > <label
					for="valueOfMortgageItem"><b>Mortgage Item Value</b></label> <input
					type="text" placeholder="Enter the Value of Mortgage Item "
					name="valueOfMortgageItem" > <label
					for="loanAmount"><b>Loan Amount</b></label> <input type="text"
					placeholder="Enter the Loan Amount" name="loanAmount" >

				<label for="loanTenure"><b>Loan Tenure</b></label> <input
					type="text" placeholder="Enter the Loan Tenure" name="loanTenure"
					> <label for="interestRate"><b>Interest
						Rate</b></label> <input type="text" placeholder="Enter the Interest Rate"
					name="interestRate" > <label for="emiOptions"><b>Emi
						Options</b></label> <input type="text" placeholder="Enter the EMI options"
					name="emiOptions" > <label for="dayOfPayment"><b>Day
						Of Payment</b></label> <input type="text"
					placeholder="Enter the day of Payment" name="dayOfPayment" >

				<label for="loanRequestDate"><b>Loan Request Date</b></label>
                <input
					type="text" id="date" onfocus="getDate()" name="loanRequestDate">


			</div>
		</fieldset>
		<button type="submit">Submit</button>

		<button type="button" class="cancelbtn">Cancel</button>
		<span class="psw">Forgot <a href="#">password?</a></span>
	</form>




	<script>
	   function validateForm(property) {
		   var x = document.forms["applyLoan"][property].value;
		   if (x == "") {
//		     alert(property+" must be filled out");
		     return false;
		   }
		 }

		     function validateRequired(){
//		         validateForm("name")
//		         validateForm("dayOfPayment")
		         const properties = ["name" ,"address","phoneNumber","email","dayOfPayment"];
		         for(i in properties){
		         if(validateForm(properties[i])==false){
		             alert(properties[i]+" must be filled out");
		             return false;
		             }
		         }
		     }
         function getDate(){
    var today = new Date();

document.getElementById("date").value = today.getFullYear() + '-' + ('0' + (today.getMonth() + 1)).slice(-2) + '-' + ('0' + today.getDate()).slice(-2);


}
		     
	</script>
</body>
</html>