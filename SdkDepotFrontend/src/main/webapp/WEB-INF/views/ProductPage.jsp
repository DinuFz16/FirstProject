<jsp:include page="header1.jsp"></jsp:include>
<br>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<br>

<div align="center">

<div class="container">
<div class = "row">

<c:forEach items="${listProducts}" var="product">
		<div class = "col-sm-4 col-md-4">
			<a href="<c:url value="ProductDesc/${product.productId}"/>">
			<img src = "<c:url value='/resources/images/${product.productId}.jpg'/>" width="100" height="150" alt = "Generic thumbnail"/>
			</a>
 			<p>
      	 		<h3> Name:</h3> ${product.productName}
      	 		<h3> Price:</h3> ${product.price}
   
      		</p>
		</div>
</c:forEach>

</div>
</div>

</div>
<br>
<jsp:include page="footer.jsp"></jsp:include>
