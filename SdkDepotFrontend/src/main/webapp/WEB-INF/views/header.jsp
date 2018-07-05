<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SDK_DEPOT</title>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
</head>

<body>
<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-red w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="home" ><img src="resources/images/sdk.jpg" id="icon" class="w3-bar-item w3-button w3-padding-large" alt="logo" width="80px" height="70px" /> </a>
    <a href="Login" class="w3-bar-item w3-button w3-padding-large w3-hide-small"><span class="glyphicon glyphicon-log-in"></span> SIGN_IN</a>
    <a href="Register" class="w3-bar-item w3-button w3-padding-large w3-hide-small"><span class="glyphicon glyphicon-user"></span> SIGN-UP</a>
    <a href="ProductPage" class="w3-bar-item w3-button w3-padding-large w3-hide-small"><span class="glyphicon glyphicon-ok"></span> IN-STOCK</a>
    
     <a href="Login" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><span class="glyphicon glyphicon-envelope"></span> CONTACT-US</a>
    <a href="Login" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><span class="glyphicon glyphicon-log-out"></span>  LOGOUT</a>
    <a href="Cart" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a>
    
  </div>
</div>

<!-- Navbar on small screens (remove the onclick attribute if you want the navbar to always show on top of the content when clicking on the links) -->
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="Login" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">LOGIN</a>
  <a href="Register" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">SIGN-UP</a>
  <a href="ProductPage" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">IN-STOCK</a>
  
</div>
<br><br><br><br>
</body>
</html>