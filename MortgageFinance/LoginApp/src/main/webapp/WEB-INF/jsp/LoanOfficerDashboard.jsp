<!Doctype HTML>
<html>
    <head>
        <title>LoginSuccess</title>
        <style>
            
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
        width: 100px;
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
    align-content: center;
    padding: 80px;
    display: grid;
    grid-template-columns: 1fr 1fr 1fr 1fr;
    grid-gap: 10px;
    height: 500px;
}
            body{
                align-content: center;
                background-color: lavender;
                font-family: sans-serif
            }
            a{
                text-decoration: none;
                color: blueviolet
            
            }
            form{
                text-align: center;
                border: none;
            }

        </style>
    </head>
    <body>
        <br><br>
        <form action="logout" onsubmit="return conformLogout()" >
        <button type="submit" class="logOutButton">Log out</button>
        <h2><b>Welcome Back ${userId} ...</b></h2>
        </form>
        ${message}
        <div class="grid-container">
            <div class="container">
            <a href="viewLoanforCustomers"><img src="/Files/viewLoanStatus.png" alt="view loan status"><br>
                <h2><b>View Loans</b></h2></a>
            </div>
            
            <div class="container">
            <a href="showMortgage"><img src="/Files/viewLoanStatus.png" alt="view loan status"><br>
                <h2><b>Show Mortgage</b></h2></a>
            </div>
            
            <div class="container">
            <a href="ApplyForLoan"><img src="/Files/ApplyForLoan.png" alt="Apply for Loan"><br>
                <h2><b>Apply for Loan</b></h2></a>
            </div>
            
            <div class="container">
            <a href="#"><img src="/Files/payment.png" alt="view loan status"><br>
                <h2><b>Make Payment</b></h2></a>
            </div>
            
            <div class="container">
            <a href="getFeedback"><img src="/Files/feedback.png.png" alt="view loan status"><br><br>
                <h2><b>Give Feedback</b></h2></a>
            </div>
            
        </div>
        <script>
        function conformLogout(){
            var answer = window.confirm("Are You sure to Logout?");
            if (answer) {
                return true;
            }
            else {
                return false;
            }
        }
        </script>
    </body>
</html>