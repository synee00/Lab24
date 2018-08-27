<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register!</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="/coffeeShopStyle.css">
</head>
<body>
	<h1>GC Coffee Registration</h1>
	
		<div class="contentBlock input-group">
			
			<form action="/summary" method="post" autocomplete=off  class="centerThis">
				<div class="input-group mb-3 ">
	  				<div class="input-group-prepend">
	   				 <span class="input-group-text" id="inputGroup-sizing-default">First Name</span>
	  				</div>
	  				<input type="text" class="form-control" aria-label="Sizing example input" 
	  				aria-describedby="inputGroup-sizing-default" name="fname" autofocus required>
				</div>
				<div class="input-group mb-3">
	  				<div class="input-group-prepend">
	   				 <span class="input-group-text" id="inputGroup-sizing-default">Last Name</span>
	  				</div>
	  				<input type="text" class="form-control" aria-label="Sizing example input" 
	  				aria-describedby="inputGroup-sizing-default" name="lname" required>
				</div>
				<div class="input-group mb-3">
	  				<div class="input-group-prepend">
	   				 <span class="input-group-text" id="inputGroup-sizing-default">Email</span>
	  				</div>
	  				<input type="email" class="form-control" aria-label="Sizing example input" 
	  				aria-describedby="inputGroup-sizing-default" name="email" required>
				</div>
				<div class="input-group mb-3">
	  				<div class="input-group-prepend">
	   				 <span class="input-group-text" id="inputGroup-sizing-default">Phone Number (###-###-####)</span>
	  				</div>
	  				<input class="form-control" aria-label="Sizing example input" 
	  				aria-describedby="inputGroup-sizing-default" pattern='([\d]{4}\-[\d]{3}\-[\d]{4})' name="number" required>
				</div>
				<div class="input-group mb-3">
	  				<div class="input-group-prepend">
	   				 <span class="input-group-text" id="inputGroup-sizing-default">Password</span>
	  				</div>
	  				<input class="form-control" aria-label="Sizing example input" 
	  				aria-describedby="inputGroup-sizing-default" pattern='([\d]{4}\-[\d]{3}\-[\d]{4})' type="password" name="password" min="6" required>
				</div>
				
				<button type="submit" class="btn btn-secondary">Submit</button>
			</form>
			
		</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>

