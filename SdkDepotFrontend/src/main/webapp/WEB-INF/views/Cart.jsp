<%@include file="header.jsp" %>


<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<!-- adding style -->

 <!-- adding style -->

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<style>
html, body { 
height: 100%; 
padding: 1em; 
margin: 05; 
box-sizing:border-box;
  -moz-box-sizing:border-box;
  -webkit-box-sizing:border-box;
  color:red;
}

.check
{
   color:black;
}
</style>

<!-- end of style  -->


<br>
<br>

<br>
<div class="container">

<table align="center" class="table" >
	<tr bgcolor='white'><td colspan='6'> <center> <h2>Your Cart</h2> </center></td></tr>
	<tr bgcolor='white'>
		<td>Product Name</td>
		<td>Price</td>
		<td>Quantity</td>
		<td>SubTotal</td>
		<td></td>
		<td>Operation</td>
	</tr>
		
		<c:if test="${not empty listCartItems}">
		<c:forEach items="${listCartItems}" var="cartdetails">
		<form action="<c:url value="/updateCartItem/${cartdetails.cartItemId}"/>" method="get">
		<tr bgcolor='cyan'>
			<td>${cartdetails.productName}</td>
			<td>${cartdetails.price}</td>
			<td><input type="text" name="qty" value="${cartdetails.quantity}"/></td>
			<td>${cartdetails.price * cartdetails.quantity}</td>
			<td><img src="<c:url value="/resources/images/${cartdetails.productId}.jpg"/>" width="50" height="50"/></td> 
			<td>
			<a href="<c:url value="/deleteCartItem/${cartdetails.cartItemId}"/>">Delete</a>
			<!-- <input type="submit" value="Update"/> -->
			</td>
		</tr>
		</form>
		</c:forEach>
		</c:if>
		<c:if test="${empty listCartItems}">
			<tr bgcolor='white'><td colspan="6"><center>You Have No Items in Cart</center></td></tr>
		</c:if>
		<tr bgcolor="white">
			<td colspan="3">Total Cost</td>
			<td>${totalCost}</td>
			<td colspan="2"></td>
		</tr>
		<tr bgcolor="white">
			<td colspan="3"><a href="<c:url value='/ProductPage'/>"><b><button type="button" class="btn btn-danger"> <span class="glyphicon">&#xe116;</span> SHOPPING</button></b></a></td>
			<td colspan="3"><a href="<c:url value='/OrderConfirm'/>"><b><button type="button" class="btn btn-danger"> <span class="glyphicon">&#xe125;</span> CHECKOUT</button></b></a></td>
		</tr>
		
	
</table>

</div>

<br>
<br>

<br>

<%@include file="footer.jsp"%>