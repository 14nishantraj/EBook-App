<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2;">
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row p-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h3 class = 'text-center'>Add Books</h3>
					<c:if test="${not empty sucMsg }">
					<p class="text-center text-success">${sucMsg}</p>
					<c:remove var="sucMsg" scope="session"/>
					</c:if>
					
					<c:if test="${not empty sucMsg }">
					<p class="text-center text-danger">${failedMsg}</p>
					<c:remove var="failedMsg" scope="session"/>
					</c:if>
					<form action="../add_books" method="post">
						
						   <div class="form-group">
								<label for="exampleInputEmail1">Book Name*</label> <input  
								name="bname" type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" >								
							</div>
							
					 	<div class="form-group">
								<label for="exampleInputEmail1">Author Name*</label> <input  
								name="author" type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" >								
							</div>
						
							<div class="form-group">
								<label for="exampleInputEmail1">price*</label> <input  
								name="price" type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" >								
							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1">Book Categories</label> 
								<select id = "inputState" name="btype" class="form-control">
								<option selected="selected">--select--</option>
								<option value="New">New Book</option>
								</select>	
							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1">Book Status</label> 
								<select id = "inputState" name="bstatus" class="form-control">
								<option selected="selected">--select--</option>
								<option value="Active">Active</option>
								<option value="inactive">Inactive</option>
								</select>	
							</div>
							
							<button type="submit" class="btn btn-primary">Add</button>
						</form>
					
					
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>