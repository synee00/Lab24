<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Homepage</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="/coffeeShopStyle.css">
</head>
<body>
	<h1>Welcome to GC Coffee!</h1>
		<p id="reg"><a href="/"><button type="button" class="btn btn-secondary">Home</button></a></p>
	
	<div class="contentBlockAdmin">
	
		<table>
				<thead>
					<tr>
			          <th>Item</th><th>Price</th>
			        </tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${items}">
					<tr>
						<td> • ${item.name}</td> <td id="alignRight">${item.price}</td>
	
						<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Modal${item.id}">
			  				Edit
							</button></td>
						<td><a href="/delete?id=${item.id}" onclick="return confirm('ARE YOU SURE?!')">
							<button type="button" class="btn btn-danger"> Delete </button></a></td>
					</tr>
					<tr>
						<td id="noBorder" colspan="2">${item.description}</td>
					</tr>
					
					<!-- Edit Modal -->
						<div class="modal fade" id="Modal${item.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
						  <div class="modal-dialog modal-dialog-centered" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 style="color: black" class="modal-title" id="editModalLongTitle">Edit Item</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div style="color: black" class="modal-body">
									<form action="/edit-submit" method="post" autocomplete=off >
										
										<div class="input-group mb-3">
							  				<div class="input-group-prepend">
							   				 <span class="input-group-text" id="inputGroup-sizing-default">Item Name</span>
							  				</div>
							  				<input type="text" value="${item.name}" class="form-control" aria-label="Sizing example input" 
							  				aria-describedby="inputGroup-sizing-default" name="name" required>
										</div>
										<div class="input-group mb-3">
							  				<div class="input-group-prepend">
							   				 <span class="input-group-text" id="inputGroup-sizing-default">Description</span>
							  				</div>
							  				<input type="text" value="${item.description}" class="form-control" aria-label="Sizing example input" 
							  				aria-describedby="inputGroup-sizing-default" name="description" required>
										</div>
										<div class="input-group mb-3">
							  				<div class="input-group-prepend">
							   				 <span class="input-group-text" id="inputGroup-sizing-default">Quantity</span>
							  				</div>
							  				<input type="number" value="${item.quantity}" class="form-control" aria-label="Sizing example input" 
							  				aria-describedby="inputGroup-sizing-default" name="quantity" min="0" required>
										</div>
										<div class="input-group mb-3">
							  				<div class="input-group-prepend">
							   				 <span class="input-group-text" id="inputGroup-sizing-default">Price</span>
							  				</div>
							  				<input type="text" value="${item.price}" class="form-control" aria-label="Sizing example input" 
							  				aria-describedby="inputGroup-sizing-default" pattern='[\d]*\.\d{2}' name="price" required>
										</div>
										<div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
									        <button type="submit" class="btn btn-primary">Save changes</button>
								     	</div>
									</form>
								</div>
						      
						    </div>
						  </div>
						</div>
					</c:forEach>
					<tr>
						<td><button type="button" class="btn btn-primary center" data-toggle="modal" data-target="#addModal">
			  				Add Item
						</button></td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- Add Item Modal -->
					<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLongTitle" style="color: #686a69">Add Item</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div style="color: black" class="modal-body">
					        <form action="/add-submit" method="post" autocomplete=off >
								<div class="input-group mb-3">
					  				<div class="input-group-prepend">
					   				 <span class="input-group-text" id="inputGroup-sizing-default">Item Name</span>
					  				</div>
					  				<input type="text" class="form-control" aria-label="Sizing example input" 
					  				aria-describedby="inputGroup-sizing-default" name="name" autofocus required>
								</div>
								<div class="input-group mb-3">
					  				<div class="input-group-prepend">
					   				 <span class="input-group-text" id="inputGroup-sizing-default">Description</span>
					  				</div>
					  				<input type="text" class="form-control" aria-label="Sizing example input" 
					  				aria-describedby="inputGroup-sizing-default" name="description" required>
								</div>
								<div class="input-group mb-3">
					  				<div class="input-group-prepend">
					   				 <span class="input-group-text" id="inputGroup-sizing-default">Quantity</span>
					  				</div>
					  				<input class="form-control" aria-label="Sizing example input" 
					  				aria-describedby="inputGroup-sizing-default" type="number" name="quantity" required min="0">
								</div>
								<div class="input-group mb-3">
					  				<div class="input-group-prepend">
					   				 <span class="input-group-text" id="inputGroup-sizing-default">Price</span>
					  				</div>
					  				<input class="form-control" aria-label="Sizing example input" 
					  				aria-describedby="inputGroup-sizing-default" type="text" pattern='[\d]*\.\d{2}' name="price" required>
								</div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						        <button type="submit" class="btn btn-primary">Save item</button>
						      </div>
					      </form>
					      </div>
					    </div>
					  </div>
					</div>
		
	
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>