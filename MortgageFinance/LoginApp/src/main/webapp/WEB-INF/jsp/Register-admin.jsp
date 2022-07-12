<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-us">
    <head>
        <meta charset="UTF-8">
        <title>Registaration Form</title>
        <style>
            * {
  margin: 0
}

.container {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  height: 100vh;
  background-color:skyblue;
}

.container h1 {
  color: black;
  background-color: aqua;    
  font-family: sans-serif;
  margin: 20px;
}

.registartion-admin {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 600px;
  color: rgb(255, 255, 255);
  font-size: 18px;
  font-family: sans-serif;
  background-color: #154a68;
  padding: 20px;
}

.registartion-admin input,
.registartion-admin select,
.registartion-admin textarea {
  border: none;
  padding: 5px;
  margin-top: 10px;
  font-family: sans-serif;
}

.registartion-admin input:focus,
.registartion-admin textarea:focus {
  box-shadow: 3px 3px 10px rgb(228, 228, 228), -3px -3px 10px rgb(224, 224, 224);
}

.registartion-admin.submit {
  width: 100%;
  padding: 8px 0;
  font-size: 20px;
  color: rgb(44, 44, 44);
  background-color: peachpuff;
  border-radius: 5px;
}

.registartion-admin.submit:hover {
  box-shadow: 3px 3px 6px rgb(255, 214, 176);
}
        </style>
    </head>
<body>
        <div class="container">
  <h1>Please Register Here:</h1>
  <form action="registerAdminSave" name="registration" class="registartion-admin" onsubmit="return formValidation()" method="post">
    <table>
      <tr>
        <td><label for=" first name"> First Name:</label></td>
        <td><input type="text" name="firstname" id="name" placeholder="your firstname"></td>
      </tr>
      <tr>
        <td><label for=" Last name">Last Name:</label></td>
        <td><input type="text" name="lastname" id="name" placeholder="your Lastname"></td>
      </tr>
      <tr>
        <td><label for="email">Email:</label></td>
        <td><input type="text" name="email" id="email" placeholder="your email"></td>
      </tr>
      <tr>
        <td><label for="ContactNumber">Contact Number:</label></td>
        <td><input type="number" name="number" id="ContactNumber"></td>
      </tr>
      <tr>
        <td><label for="gender">Gender:</label></td>
        <td>Male: <input type="radio" name="gender" value="male">
          Female: <input type="radio" name="gender" value="female">
          Other: <input type="radio" name="gender" value="other"></td>
      </tr>
      <tr>
        <td>
            <label for="dob">Date Of Birth:</label></td>
            <td><input type="Date" id="dob" name="dob"></td>
      </tr> 
      <tr>
        <td><label for="pan">PAN:</label></td>
        <td><input type="text" name="pan" id="pan" placeholder="your PAN number"></td>
      </tr>    
      <tr>
        <td><label for="designation">Designation</label></td>
        <td>
          <select name="designation" id="designation">
            <option value="">Select category</option>
            <option value="Junior Officer">JUNIOR OFFICER</option>
            <option value="Officer">OFFICER</option>
            <option value="Senior Officer">SENIOR OFFICER</option>
            <option value="Manager">MANAGER</option>
            <option value=" Senior Manager">SENIOR MANAGER</option>  
          </select>
        </td>
      </tr>
       <tr>
        <td><label for="role">Role</label></td>
        <td>
          <select name="role" id="role">
            <option value="">Select category</option>
            <option value="Processing Officer">PROCESSING OFFICER</option>
            <option value="Internal Auditor">INTERNAL AUDITOR</option>
            <option value="Marketing Representative">MARKETING REPRESENTATIVE</option>
            <option value="Verification Officer">VERIFICATION OFFICER</option>
            <option value=" Senior Manager">SENIOR MANAGER</option>  
          </select>
        </td>
      </tr>       
      <tr>
        <td><label for="userid">UserId:</label></td>
        <td><input type="text" name="userId" id="userid"></td>
      </tr>
      <tr>    
        
      <tr>
        <td><label for="password">Password:</label></td>
        <td><input type="password" name="password" id="password"></td>
      </tr>      
       <tr>    
       <td><label for="Recovery">Choose a Sequrity Question</label></td>
        <td><select name="securityQuestion" id="Recovery">
            <option value="">Select the following</option>
            <option value="what is your favourite colour">what is your favourite colour</option>
            <option value="what is your school name">what is your school name</option>
            <option value="what is your Father's name">what is your Fathers name</option> 
          </select>
          </td>
       <tr>
       <td>
           <label for="Answer1"> Your Answer:</label></td>
           <td>
        <input type="text" name="answer" id="ans1" placeholder="your answer">
        </td>
        </tr>
      <tr>
          <td colspan="2"><input type="submit" class="submit" value="SUBMIT" /></td>
        <td colspan="2"> 
         </td>
          
      </tr>    
    </table>
    ${message}
  </form><br><br>
  <a href="Home"><button> Back to Home</button></a>
</div>

</body>
</html>