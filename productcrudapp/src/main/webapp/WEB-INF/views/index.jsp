<html>

<head>

	<%@include file="./base.jsp" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>


	<div class="container mt-3">
		
		<div class="row">
			<div class="col-md-12">
			
				<h1 class="text-center mb-3">Welcome to Product App</h1>
				
				
				<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Product Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach items="${products }" var="p">
  
    <tr>
      <th scope="row">${p.id }</th>
      <%-- <td>${p.name }</td> --%>
      <td><a href="product/${p.id }">${p.name }</a></td>
      <td>${p.description }</td>
      <td class="font-weight-bold">&#x20B9;${p.price }</td>
      <td>
      	<a href="delete/${p.id }"><i class="fas fa-trash text-danger"></i></a>
      	<a href="update/${p.id }"><i class="fas fa-pen-nib text-primary"></i></a>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
				
				
				<div class="container text-center">
					<button type="button" class="btn btn-success" href="add-product" onclick="window.location.href='add-product'">Add Product</button>
				</div>
			</div>
			
			
		</div>
	</div>


</body>
</html>
