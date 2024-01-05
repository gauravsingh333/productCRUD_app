<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<%@include file="./base.jsp" %>
<title>Insert title here</title>
</head>
<body>
	<div clas="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				
				<h1 class="text-center mb-3">Fill the Product details</h1>
				<form action="handle-product" method="post">
					<div class="form-group">
						<label for="name">Product name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="name" placeholder="Enter the product name here">		
					</div>
					
					
					<div class="form-group">
						<label for="description">Product Description</label> <textarea 
							class="form-control" id="description" rows="5"
							name="description" placeholder="Enter the product name here"></textarea>		
					</div>
					
					<div class="form-group">
						<label for="price">Product price</label> <input type="text"
							 id="price" aria-describedby="emailHelp"
							name="price" placeholder="Enter Product Price">		
					</div>
				
					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
							<button type="submit" class="btn btn-primary">Add</button>
					</div>
				
				</form>			
			</div>
		
		</div>
	
	</div>
</body>
</html>