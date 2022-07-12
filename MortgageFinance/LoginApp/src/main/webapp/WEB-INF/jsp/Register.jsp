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
  background-color: aliceblue;
}

.container h1 {
  color: black;
  background-color:cornsilk;    
  font-family: sans-serif;
  margin: 20px;
}

.registartion-form {
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

.registartion-form input,
.registartion-form select,
.registartion-form textarea {
  border: none;
  padding: 5px;
  margin-top: 10px;
  font-family: sans-serif;
}

.registartion-form input:focus,
.registartion-form textarea:focus {
  box-shadow: 3px 3px 10px rgb(228, 228, 228), -3px -3px 10px rgb(224, 224, 224);
}

.registartion-form.submit {
  width: 100%;
  padding: 8px 0;
  font-size: 20px;
  color: rgb(44, 44, 44);
  background-color: peachpuff;
  border-radius: 5px;
}

.registartion-form.submit:hover {
  box-shadow: 3px 3px 6px rgb(255, 214, 176);
}
        </style>
    </head>
<body>
        <div class="container">
  <h1>Please Fill This Form :</h1>
  <form name="registration" class="registartion-form" onsubmit="return formValidation()">
    <table>
      <tr>
        <td><label for=" first name"> First Name:</label></td>
        <td><input type="text" name="name" id="name" placeholder="your firstname"></td>
      </tr>
      <tr>
        <td><label for=" Last name">Last Name:</label></td>
        <td><input type="text" name="name" id="name" placeholder="your Lastname"></td>
      </tr>
      <tr>
        <td><label for="email">Email:</label></td>
        <td><input type="text" name="email" id="email" placeholder="your email"></td>
      </tr>
      <tr>
        <td><label for="ContactNumber">Contact Number:</label></td>
        <td><input type="number" name="ContactNumber" id="ContactNumber"></td>
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
        <td><label for="User Category">USER CATEGORY</label></td>
        <td>
          <select name="User Category" id="USER CATEGORY">
            <option value="">Select category</option>
            <option value="User">USER</option>
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
          <td colspan="2"><input type="submit" class="submit" value="Register" /></td>
          <td colspan="2">
          </td>
      </tr>    
    </table>
    ${message}
  </form>
  <br><br>
  <a href="Home" ><button>Home</button></a>
</div>

</body>
</html>