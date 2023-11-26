<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
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

	<div class="container2">
		<h2>Login</h2>
		<form action="/loguser" method="post">
			<div class="form-group">
				<label for="email">Email:</label> <input type="email" id="email"
					name="emp_email" placeholder="Registered Email" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					id="password" name="emp_password" placeholder="Registered Password" required>
			</div>
			<div class="form-group">
				<input type="submit" value="Login">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
					href="/register" class="button">Sign up</a>
			</div>
		</form>
	</div>

</body>
</html>
