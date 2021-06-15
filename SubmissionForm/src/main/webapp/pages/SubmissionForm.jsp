<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Customer Home Page</title>
		<!-- Stylesheets Start -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
		<!-- Stylesheets End -->
	</head>
	<body>
		<h4 class="mt-5 text-center h4 text-danger">Customer CRUD Application</h4>
		<section class="container border border-dark mx-auto mt-2 w-50">
			<!-- <form action="/get-customer" method="get" class="mt-3">
				<div class="container-fluid">
					<div class="row mx-auto">
						<div class="col-6 h6">
							Enter Customer ID: 
						</div>
						<div class="col-6 h6">
							<input type="number" name="cid" placeholder="Customer ID" required/>
						</div>
					</div>
					
					<div class="row mx-auto">
						<div class="col-4 h6 mx-auto">
							<input type="submit" value="Read" />
						</div>
					</div>
				</div>
			</form> -->
			
			<form method="post" class="mt-3 mx-auto">
				<div class="container-fluid">
					<div class="row mx-auto">
						<div class="col-6 h6">
							Customer ID: 
						</div>
						<div class="col-6 h6">
							<input type="number" name="cid" placeholder="Customer ID" required/>
						</div>
					</div>
					
					<div class="row mx-auto">
						<div class="col-6 h6">
							Customer Name: 
						</div>
						<div class="col-6 h6">
							<input type="text" name="cname" placeholder="Customer Name" required/>
						</div>
					</div>
					
					<div class="row mx-auto">
						<div class="col-6 h6">
							Customer Email: 
						</div>
						<div class="col-6 h6">
							<input type="email" name="cemail" placeholder="Customer Email" required/>
						</div>
					</div>
					
					<div class="row mx-auto">
						<div class="col-4 h6">
							<input type="submit" value="Insert" formaction="/submit-data" />
						</div>
						
						<div class="col-4 h6">
							<input type="submit" value="Update" formaction="/update-customer" />
						</div>
						
						<div class="col-4 h6">
							<input type="submit" value="Delete" formaction="/delete-customer" />
						</div>
					</div>
				</div>
			</form>
		</section>
		
		<!-- <form action="/submit-data" method="post">
			Enter Customer ID: <input type="text" name="cid" /> <br />
			Enter Customer Name: <input type="text" name="cname" /> <br />
			Enter Customer Email: <input type="email" name="cemail" /> <br />
			<input type="submit" value="submit" /> <br />
		</form> -->
		
		<!-- Javascripts Start -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
		<!-- Javascripts End -->
	</body>
</html>