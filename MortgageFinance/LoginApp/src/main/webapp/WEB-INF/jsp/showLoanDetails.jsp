<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<head>
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "mortgage";
String userId = "root";
String password = "root";

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
/*    height: 1000px;*/
}
    
</style>    
    </head>
<body>
   <div class="topnav">
  <a href="Home">Home</a>
  <a href="invalid">Contact</a>
  <a class="active" href="login">Sign in</a>
  
</div>
<form action="searchLoanforCustomers" method="post">
    <div class="grid-container">

  <div class="container">
    <label for="email"><b>Enter Loan Application Number</b></label>
    <input type="text" placeholder="Enter Loan Application Number" name="loanApplicantNumber" required>

  
    <button type="submit" >Search</button><br>
    <h2>${errorMsg}</h2>

        </div>
        <div></div>
    </div>
</form> 
<table align="center" class="table table-striped">
<tr>

</tr>
<tr bgcolor="yellow">
<td><b>loan_applicant_number</b></td>
<td><b>Name</b></td>
<td><b>Address</b></td>
<td><b>phone_number</b></td>
<td><b>email</b></td>
<td><b>other_contact</b></td>
<td><b>day_of_payment</b></td>
<td><b>emi_options</b></td>
<td><b>interest_rate</b></td>
<td><b>loan_amount</b></td>
<td><b>loan_request_date</b></td>
<td><b>loan_tenure</b></td>
<td><b>mortgage_item</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql = "SELECT * FROM loan_details order by loan_request_date;";
if(session.getAttribute("loanApplicantNumber")!=null){
	int loanApplicantNumber = (int)session.getAttribute("loanApplicantNumber");
	session.invalidate();
	sql ="SELECT * FROM loan_details where loan_applicant_number = "+ loanApplicantNumber +";";
}
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="lavender">

<td><%=resultSet.getString("loan_applicant_number") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getLong("phone_number") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("other_contact") %></td>
<td><%=resultSet.getString("day_of_payment") %></td>
<td><%=resultSet.getString("emi_options") %></td>
<td><%=resultSet.getString("interest_rate") %></td>
<td><%=resultSet.getString("loan_amount") %></td>
<td><%=resultSet.getString("loan_request_date") %></td>
<td><%=resultSet.getString("loan_tenure") %></td>
<td><%=resultSet.getString("mortgage_item") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
    </body>
</html>