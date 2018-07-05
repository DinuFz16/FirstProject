<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body>

<h2 align="center"> Checkout Form</h2>

 <div class="top">
  <div class="col-75">
    <div class="container">
      <table align="center" width="100%" class="table" >
      <br>
	<tr bgcolor='white'><td colspan='5' > <center class="panel-heading"><h3>Your Order</h3></center></td></tr>
	<!-- <tr bgcolor='white'>
		<td>Product Name</td>
		<td>Price</td>
		<td>Quantity</td>
		<td>SubTotal</td>
		<td></td>
	</tr> -->
	<br>
		
		<%-- <c:if test="${not empty listCartItems}">
		<c:forEach items="${listCartItems}" var="cartItem">
		<tr bgcolor='red'>
			<td>${cartItem.productName}</td>
			<td>${cartItem.price}</td>
			<td>${cartItem.quantity}</td>
			<td>${cartItem.price * cartItem.quantity}</td>
			
		</tr>
		</c:forEach>
		</c:if>
		<tr bgcolor="white">
			<td colspan="3">Total Cost</td>
			<td>${totalCost}</td>
			<td colspan="2"></td>
		</tr> --%>
</table>
<form action="paymentConfirmation" method="post">
<table align="center" width="100%">
	<tr bgcolor="white"><td colspan="2"><center><h4>Payment Details</h4></center></td></tr>
	
	
	<tr bgcolor="white"><td colspan="2"><center><input type="radio" name="mode" value="CS">Cash
	<input type="radio" name="mode" value="CC">Credit Card</center></td></tr> 
	 
	  
	
	
</table>
    </div>
  </div>
</div> 
</div>
<br>

<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="/action_page.php">
      
        <div class="row">
         <!--  <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="username" >
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="emailId" placeholder="@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="">
             <label for="adr"><i class="fa fa-address-card-o"></i> MobileNo</label>
            <input type="text" id="adr" name="mobileNo" placeholder="+91">
            

            
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip" placeholder="10001">
              </div>
            </div>
          </div>
          </form>
           </div> -->
           </div>
           
          
           
           <div class="col-75">
           <br>
    <div class="container">
      <form action="/action_page.php">
        <div class="col-50">
         
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            
            
            
           <!--  <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder=""> -->
                
                  
                </div>
                </div>
                
                
              </div>
            </div>
          </div>
      
   
  </div>
  <br>

       
          
        
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
        
        <input type="submit" value="Continue to checkout" class="btn"/>
     </form>
      
        
        
  
 

</body>
</html>
