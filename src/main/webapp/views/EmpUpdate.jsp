<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Update</title>
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
			<h2 style="color: red">Attention...</h2>
			<p style="color: black">Any additional content or details can go
				here.</p>
		</div>

		<div class="right-side">
			<h2>Update Details And Submit</h2>
			<form action="empUpdate" method="post">
				<div class="form-group">
					<input type="hidden" id="name"
						name="emp_id" value="${employee.emp_id}" required>
				</div>
				<div class="form-group">
					<label for="name">Full Name:</label> <input type="text" id="name"
						name="emp_name" value="${employee.emp_name}" required>
				</div>
				<div class="form-group">
					<label for="phone">Phone:</label> <input type="text" id="phone"
						name="emp_phone" value="${employee.emp_phone}" required>
				</div>
				<div class="form-group">
					<label for="email">City:</label> <input type="text" id="city"
						name="emp_city" value="${employee.emp_city}" required>
				</div>
				<div class="form-group">
					<label for="email">Email:</label> <input type="email" id="email"
						name="emp_email" value="${employee.emp_email}" required>
				</div>
				<div class="form-group">
					<label for="password">Password:</label> <input type="password"
						id="password" name="emp_password" value="${employee.emp_password}"
						required>
				</div>
				<div class="form-group">
					<input type="submit" value="Submit">
				</div>
			</form>
		</div>
	</div>
</body>
</html>
