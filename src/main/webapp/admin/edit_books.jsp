<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit-Books</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2;">
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row p-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h3 class = 'text-center'>Edit Books</h3>
					
					
					<% 
					      int id = Integer.parseInt(request.getParameter("id"));
					      BookDAOImpl dao  = new BookDAOImpl(DBConnect.getConn());
					      BookDtls b = dao.getBookById(id);
					%>
					
					<form action="../editbooks" method="post">
						<input type="hidden" name="id" value="<%=b.getBookId()%>">
						   <div class="form-group">
								<label for="exampleInputEmail1">Book Name*</label> <input  
								name="bname" type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" value="<%= b.getBookname() %>">								
							</div>
							
					 	<div class="form-group">
								<label for="exampleInputEmail1">Author Name*</label> <input  
								name="author" type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" value="<%= b.getAuthor()%>" >								
							</div>
						
							<div class="form-group">
								<label for="exampleInputEmail1">price*</label> <input  
								name="price" type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" value="<%= b.getPrice()%>">								
							</div>
							
							
							
							<div class="form-group">
								<label for="exampleInputEmail1">Book Status</label> 
								<select id = "inputState" name="bstatus" class="form-control">
								<%if("Active".equals(b.getStatus())){%>
									<option value="Active">Active</option>
									<option value="inactive">Inactive</option>
									
									
								<% }else{%>
								
								<option value="Active">Active</option>
								<option value="inactive">Inactive</option>
								
								<%
								    }
								%>
								
								</select>	
							</div>
							
							<button type="submit" class="btn btn-primary">Update</button>
							
						</form>					
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>