<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Sign Up | By Code Info</title>
    <link rel="stylesheet" href="../CSS/styles.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="signuppage">
      <div class="right">
        <div class="signup-box">
          <h1>Sign Up</h1>
          <h4>It's free and only takes a minute</h4>
          <form action = "validate.jsp" method = "get">
            <input type="text" placeholder="First Name" name = "firstName" id = "firstName"/>
            <input type="text" placeholder="Last Name" name = "lastName" id = "lastName"/>
            <input type="email" placeholder="Email" name = "emailID" id = "emailID"/>
            <input type="password" placeholder="Password" name = "password" id = "password" />
            <input type="password" placeholder="Confirm Password" name = "c_password" id = "c_password" />
            <button type = "submit" class = "btnSub">Submit</button>
          <closeform></closeform></form>
          <p class="para-2">
            Already have an account? <a href="login.jsp">Login here</a>
          </p>
        </div>

      </div>
      <div class="left">
        <h1>Hello There.</h1>
        <h1>Welcome To</h1>
        <h1>ChatWorld</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
          Curabitur et est sed felis aliquet sollicitudin</p>
      </div>
    </div>


  </body>
  
</html>
