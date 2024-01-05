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
				
				<h1 class="text-center mb-3">Product details</h1>
			
				
				
					<div class="form-group">
						<label for="name">Product name</label> 
						<p>${product.name }</p>	
					</div>
					
					
					<div class="form-group">
						<label for="description">Product Description</label>
						<p>${product.description }</p>	
					</div>
					
					<div class="form-group">
						<label for="price">Product price</label>
						<p>${product.price } </p>		
					</div>
				
					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
					</div>
				
				</form>			
			</div>
		
		</div>
	
	</div>
</body>
</html>