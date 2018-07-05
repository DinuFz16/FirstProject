<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<jsp:include page="header.jsp"></jsp:include>
<br>

<!-- adding css -->
<style type="text/css">

/* -- import Bootstrap v3 ----------------------------- */
@import "//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css";

/* -- import Roboto Font ------------------------------ */
@import "//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic&subset=latin,cyrillic";

/* -- body styles ------------------------------------- */

body {
    font-family: "Roboto", 'Helvetica Neue, Helvetica, Arial', sans-serif; 
    background: black; // Light Blue 800
}

/* -- button styles ------------------------------------- */
// imported from https://codepen.io/zavoloklom/pen/Gubja

/*-- signin-card animation ---------------------------------------- */
.signin-card {
  -webkit-animation: cardEnter 0.75s ease-in-out 0.5s;
  animation: cardEnter 0.75s ease-in-out 0.5s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
  opacity: 0;
}

/* -- login paper styles ------------------------------ */
.signin-card {
  max-width: 350px;
  border-radius: 2px;
  margin: 20px auto;
  padding: 20px;   
  background-color: #eceff1; // Blue Grey 50
  box-shadow: 0 10px 20px rgba(0, 0, 0, .19),
  0 6px 6px rgba(0, 0, 0, .23); // shadow depth 3
}

.signin-card { 
  .logo-image, h1, p {
    text-align: center;
  }    
}

/* -- font styles ------------------------------------- */
.display1 {
  font-size: 28px;
  font-weight: 100;
  line-height: 1.2;
  color: #757575;
  text-transform: inherit;
  letter-spacing: inherit;
}

.subhead {
  font-size: 16px;
  font-weight: 300;
  line-height: 1.1;
  color: #212121;
  text-transform: inherit;
  letter-spacing: inherit;
}

/* card animation from Animate.css -------------------- */
@-webkit-keyframes cardEnter {
  0%, 20%, 40%, 60%, 80%, 100% {
    -webkit-transition-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
    transition-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
  }
  0% {
    opacity: 0;
    -webkit-transform: scale3d(0.3, 0.3, 0.3);
    -ms-transform: scale3d(0.3, 0.3, 0.3);
    transform: scale3d(0.3, 0.3, 0.3);
  }
  20% {
    -webkit-transform: scale3d(1.1, 1.1, 1.1);
    -ms-transform: scale3d(1.1, 1.1, 1.1);
    transform: scale3d(1.1, 1.1, 1.1);
  }
  40% {
    -webkit-transform: scale3d(0.9, 0.9, 0.9);
    -ms-transform: scale3d(0.9, 0.9, 0.9);
    transform: scale3d(0.9, 0.9, 0.9);
  }
  60% {
    opacity: 1;
    -webkit-transform: scale3d(1.03, 1.03, 1.03);
    -ms-transform: scale3d(1.03, 1.03, 1.03);
    transform: scale3d(1.03, 1.03, 1.03);
  }
  80% {
    -webkit-transform: scale3d(0.97, 0.97, 0.97);
    -ms-transform: scale3d(0.97, 0.97, 0.97);
    transform: scale3d(0.97, 0.97, 0.97);
  }
  100% {
    opacity: 1;
    -webkit-transform: scale3d(1, 1, 1);
    -ms-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
}
@keyframes cardEnter {
  0%, 20%, 40%, 60%, 80%, 100% {
    -webkit-transition-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
    transition-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
  }
  0% {
    opacity: 0;
    -webkit-transform: scale3d(0.3, 0.3, 0.3);
    -ms-transform: scale3d(0.3, 0.3, 0.3);
    transform: scale3d(0.3, 0.3, 0.3);
  }
  20% {
    -webkit-transform: scale3d(1.1, 1.1, 1.1);
    -ms-transform: scale3d(1.1, 1.1, 1.1);
    transform: scale3d(1.1, 1.1, 1.1);
  }
  40% {
    -webkit-transform: scale3d(0.9, 0.9, 0.9);
    -ms-transform: scale3d(0.9, 0.9, 0.9);
    transform: scale3d(0.9, 0.9, 0.9);
  }
  60% {
    opacity: 1;
    -webkit-transform: scale3d(1.03, 1.03, 1.03);
    -ms-transform: scale3d(1.03, 1.03, 1.03);
    transform: scale3d(1.03, 1.03, 1.03);
  }
  80% {
    -webkit-transform: scale3d(0.97, 0.97, 0.97);
    -ms-transform: scale3d(0.97, 0.97, 0.97);
    transform: scale3d(0.97, 0.97, 0.97);
  }
  100% {
    opacity: 1;
    -webkit-transform: scale3d(1, 1, 1);
    -ms-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }

</style>
<!-- end -->

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic&subset=latin,cyrillic">

<title>Register_page</title>

<link href="<c:url value=' /src/main/webapp/resources/CSS/Style1.css' />" rel="stylesheet">

</head>
<body bgcolor="#585858">

<div class="container">
<div id="login" class="signin-card">
  <div class="logo-image" align="center">
   <img src="resources/images/sdk.jpg" alt="Logo" title="Logo" width="138">
  
  </div>
  <br>
  <h1 class="display1" align="center">SDK-DEPOT</h1>
  <br>
  
  
  <c:if test="${!flag}">
<form action="InsertUserDetail" name = "Register" method="post"></form>
</c:if>
  
  <form action="InsertUserDetail" method="post"  name = "Register" role="form">
  
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" class="form-control input-lg" />
  
  
    <div id="form-login-username" class="form-group">
    <label for="username" class="float-label">UserName</label>
    <c:if test="${!flag}">
      <input id="username" class="form-control" name="username" type="text" size="18" alt="login" required />
      </c:if>
      
      <span class="form-highlight"></span>
      <span class="form-bar"></span>
      
    </div>
    
    <div id="form-login-password" class="form-group">
       <label for="password" class="float-label">Password</label>
    
    <c:if test="${!flag}">
      <input id="passwd" class="form-control" name="password" type="password" size="18" alt="password" required>
      </c:if>
      
      <span class="form-highlight"></span>
      <span class="form-bar"></span>
       </div>
    
  
    <div id="form-login-username" class="form-group">
    <label for="username" class="float-label">CustomerName</label>
    <c:if test="${!flag}">
      <input id="username" class="form-control" name="customerName" type="text" size="18" alt="login" required />
      </c:if>
      <span class="form-highlight"></span>
      <span class="form-bar"></span>
      
    </div>
    
    <div id="form-login-username" class="form-group">
    <label for="username" class="float-label">E-mail ID</label>
    <c:if test="${!flag}">
      <input id="username" class="form-control" name="emailId" type="text" size="18" alt="login" required />
      </c:if>
      <span class="form-highlight"></span>
      <span class="form-bar"></span>
      
    </div>
    
    <div id="form-login-username" class="form-group">
    
    <c:if test="${!flag}">
     <label for="username" class="float-label">MobileNo</label>
      <input id="username" class="form-control" name="mobileNo" type="text" size="18" alt="login" required />
      </c:if>
      
      <span class="form-highlight"></span>
      <span class="form-bar"></span>
     
    </div>
    
    <div id="form-login-username" class="form-group">
    <label for="username" class="float-label">Address</label>
    <c:if test="${!flag}">
      <input id="username" class="form-control" name="address" type="text" size="18" alt="login" required />
      </c:if>
      
      <span class="form-highlight"></span>
      <span class="form-bar"></span>
      
    </div>
    
    
    
      
     
     
    <!-- <div id="form-login-remember" class="form-group">
      <div class="checkbox checkbox-default">       
          <input id="remember" type="checkbox" value="yes" alt="Remember me" class="">
          <label for="remember">Remember me</label>      
      </div>
    </div> -->
    <div>
      <button class="btn btn-block btn-info ripple-effect" type="submit" name="Submit" alt="sign in">Sign in</button>  
      
    </form>  
	  </div>

    </div>
  
</div>

 
  
  
</div>
            
            
            

</body>
<br>
<jsp:include page="footer.jsp"></jsp:include>
</html>