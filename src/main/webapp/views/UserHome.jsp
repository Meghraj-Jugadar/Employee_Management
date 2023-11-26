<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>User Home</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/script.js"></script>
<style type="text/css">
body {
	background-image: url("img/img1.png");
	background-size: cover; 
}
</style>
</head>
<body>

	<header>
		<!-- Your header content -->
		<div class="navbar">
			<a href="/userHome">Home</a> <a href="/register">Register</a>
			<a href="/emplist">Details</a>
			<a href="/about">About</a><a href="/logout">Logout</a>
		</div>
	</header>
	<center>
		<h1>${user.emp_name}<br>Welcome!!!</h1>
		<h3>This is an Employee Management Project.
		<br>Performed CRUD operations...</h3>
	</center>

</body>
</html>