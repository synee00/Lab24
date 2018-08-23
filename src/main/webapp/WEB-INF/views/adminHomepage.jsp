<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css">
</head>
<body>
	<h1>Welcome to GC Coffee!</h1>
	<p id="reg"><a href="/register">Register With Us!</a></p>
	
	<table>
			<thead>
				<tr>
		          <th>Item</th><th>Price</th>
		        </tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${items}">
				<tr>
					<td>${item.name}</td> <td id="alignRight">${item.price}</td>
					 <td><a href="">Edit</a></td><td><a href=""></a>Delete</td> 
				</tr>
				<tr>
					<td id="noBorder" colspan="2">${item.description}</td>
				</tr>
				</c:forEach>
				<tr>
					<td><a href="">Edit</a></td><td><a href=""></a>Delete</td>
				</tr>
			</tbody>
		</table>
		<!-- Button trigger modal
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
		  Launch demo modal
		</button> 
		
		<!-- Button trigger modal -->
					<!-- <td><a href="">Edit</a></td><td><a href=""></a>Delete</td> 
					<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
		  				Edit
						</button></td>
					<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
	  				Delete
					</button></td>
		
		
		
		<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        ...
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Save changes</button>
		      </div>
		    </div>
		  </div>
		</div> -->
			
	
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>