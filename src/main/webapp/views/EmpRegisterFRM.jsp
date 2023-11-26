<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/script.js"></script>
</head>
<body>
	<header>
		<!-- Your header content -->
		<div class="navbar">
			<a href="/">Home</a> <a href="/about">About</a> 
			<!-- Add more links as needed -->
		</div>
	</header>
	<div class="container">
		<div class="left-side">
			<h2 style="color: red">Rules...</h2>
			<p style="color: black">Any additional content or details can go here.</p>
		</div>

		<div class="right-side">
			<h2>Fill Details And Submit</h2>
			<form action="saveData" method="post">
				<div class="form-group">
				<label for="name">Full Name:</label> <input type="text" id="name"
					name="emp_name" placeholder="Enter Full Name" required>
			</div>
			<div class="form-group">
				<label for="phone">Phone:</label> <input type="text" id="phone"
					name="emp_phone" placeholder="Enter Phone Number" required>
			</div>
			<div class="form-group">
				<label for="email">City:</label> <input type="text" id="city"
					name="emp_city" placeholder="Enter City" required>
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email" id="email"
					name="emp_email" placeholder="Enter Email" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					id="password" name="emp_password" placeholder="8 Characters only"
					required>
			</div>
			<div class="form-group">
				<input type="submit" value="Submit">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				<a href="/login" class="button">Log In</a>
			</div>
			</form>
		</div>
	</div>
</body>
</html>
